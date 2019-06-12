package com.journaldev.spring.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
 
@Controller
public class UploadFileController {
	
	@RequestMapping("/upload")
	public String index(){
		return "upload";
	}
	
	@RequestMapping("/TrangChu")
	public String trangchu(){
		return "SinhVien";
	}
	
	@RequestMapping("uploadfile")
	public String index(ModelMap modelMap,@RequestParam("image") MultipartFile image,HttpServletRequest request){
		if(image.isEmpty()) {
			modelMap.addAttribute("mess", "Vui long chon file");
		}
		else {
			String path= request.getServletContext().getRealPath("/image/"+ image.getOriginalFilename());
			try {
				image.transferTo(new File(path));
				modelMap.addAttribute("name", image.getOriginalFilename());
				modelMap.addAttribute("type", image.getContentType());
				modelMap.addAttribute("size", image.getSize());
				
				return "success";
				
			} catch (IllegalStateException e) {
				modelMap.addAttribute("mess", "loi luu file");
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return "upload";
	}
	@RequestMapping("sinhvien1")
	public String sinhvien(){
		
		return "SinhVien";
	}
}