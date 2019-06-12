package Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import Model.Company;
import Model.Student;

@Controller
@RequestMapping("/")
public class StudentControlle {
	@Autowired
	Company Company;
	
	@RequestMapping()
	public String index(ModelMap model) {
		Student sv = new Student("Nguen Van A",9.5,"W");
		model.addAttribute("student",sv);
		model.addAttribute("company", Company);
		return "student";
		
	}
	@RequestMapping("update")
	public String update(@ModelAttribute("student")Student student) {
		System.out.println(student.getName());
		return "student";
	}
	
	@ModelAttribute("majors")
	public String[] getMajors() {
		String[] majors= {
				"Ứng dụng phần mềm","Thiết kế trang web"
		};
		return majors;
	}
	public ArrayList<Student> initList() {
	    ArrayList<Student> arrayList = new ArrayList<Student>();
	    arrayList.add(new Student("Nguen Van B",9.5,"A"));
	    arrayList.add(new Student("Nguen Van C",9.5,"W"));
	    return arrayList;
	  }
	@RequestMapping("listsv")
	  public String index(Model model) {
	    model.addAttribute("listUser", this.initList());
	    return "listSV";
	  }

}
