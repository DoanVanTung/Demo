package com.journaldev.spring.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.journaldev.spring.connectdb.Connect;
import com.journaldev.spring.model.SinhVien;
import com.journaldev.spring.model.User;

@Controller
@RequestMapping("/")
public class HomeController {
	@RequestMapping()
	public String home() {
		return "login";
	}
	@RequestMapping("login")
	public String login(HttpServletRequest request,ModelMap model) {
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		
		Connect con = new Connect();
		ResultSet rs = con.chonDuLieuDTB("select * from login");
		int d=0;
	    try {
			while (rs.next()) {
				if(user.trim().equals(rs.getString(1)) && pass.trim().equals(rs.getString(2))) {
					System.out.println();
					d=1;
					break;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(d==1) {
			return "SinhVien";
		}
		else {
			model.addAttribute("mess","Sai thông Tin Đăng Nhập");
			return "login";
		}
	}

	@RequestMapping(value = "/user1", method = RequestMethod.GET, produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public ArrayList<SinhVien> user() {
		ArrayList<SinhVien> list = new ArrayList<>();
		Connect con = new Connect();
		ResultSet rs = con.chonDuLieuDTB("select * from SINHVIEN");
	    try {
			while (rs.next()) {
				String masv= rs.getString(1);
				String hoten = rs.getString(2);
				int tuoi = rs.getInt(3);
				String ngaysinh =rs.getString(4);
				String gioitinh = rs.getString(5);
				String sdt = rs.getString(6);
				String diachi = rs.getString(7);		
				list.add(new SinhVien(masv,hoten,tuoi,ngaysinh,gioitinh,sdt,diachi));		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return list;	
	}
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public void delete(@PathVariable("id") String id) {
		System.out.println("da vao ham delete");
		Connect con = new Connect();
		try {
			con.thucthicaulenh("delete from SINHVIEN where  MaSV ='"+id+"' ");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	@RequestMapping(value = "/inser/{insert}", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public int insert(@PathVariable("insert") String insert) {
		System.out.println("da vao ham insert");
		System.out.println(insert);
		String[] arr = insert.split("_");
		 for(int i = 0;i< arr.length;i++){
	           System.out.println(arr[i]);
	       }
		 
	    Connect con = new Connect();
	    ResultSet rs = con.chonDuLieuDTB("select * from SINHVIEN");
	    int d=0;
			try {
				while (rs.next()) {
					String masv= rs.getString(1);
					if(arr[0].trim().equals(masv)) {
						d=1;
						break;
					}			
				}
				if(d==0) {
					con.thucthicaulenh("insert into SINHVIEN values('"+arr[0]+"',N'"+arr[1]+"','"+arr[2]+"','"+arr[3]+"','"+arr[4]+"','"+arr[5]+"',N'"+arr[6]+"')");	
				}		
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return d;
		
	}
	@RequestMapping(value = "/edit1/{edit}", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public void edit(@PathVariable("edit") String edit) {
		System.out.println("da vao ham edit");
		System.out.println(edit);
		String[] arr = edit.split("_");
		for(int i=0;i<arr.length;i++) {
			System.out.println(arr[i]);
		}
		
	    Connect con = new Connect();
			try {
				con.thucthicaulenh("update SINHVIEN set TenSV= N'"+arr[1]+"',Tuoi='"+arr[2]+"',NgaySinh='"+arr[3]+"',GioiTinh='"+arr[4]+"',SDT='"+arr[5]+"',DiaChi=N'"+arr[6]+"' where MaSV='"+arr[0]+"' ");	
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		
	}
	
	@RequestMapping(value = "/timkiem/{MaSV1}", method = RequestMethod.POST, produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public SinhVien timiiem(@PathVariable("MaSV1") String MaSV1) throws Exception {
		System.out.println("da vao ham tim kiem");
		System.out.println(MaSV1);

	    SinhVien sv=null;
	    Connect con = new Connect();
		ResultSet rs = con.chonDuLieuDTB("select * from SINHVIEN");
	    try {
			while (rs.next()) {
				String masv= rs.getString(1);
				String hoten = rs.getString(2);
				int tuoi = rs.getInt(3);
				String ngaysinh =rs.getString(4);
				String gioitinh = rs.getString(5);
				String sdt = rs.getString(6);
				String diachi = rs.getString(7);
				if(MaSV1.trim().equals(masv)==true) {
					sv = new SinhVien(masv,hoten,tuoi,ngaysinh,gioitinh,sdt,diachi);
					break;
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return sv;
		
	}
	
	
}