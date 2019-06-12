package Controller;


import java.io.IOException;
import java.io.InputStream;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {

   @RequestMapping("/")
   public String showEmailForm() {
      return "emailForm";     
   }
   @Autowired
   JavaMailSender mailer;
   @RequestMapping("send")
   public String send(ModelMap model,@RequestParam("mailfrom")String from,@RequestParam("mailto")String to,
		   @RequestParam("subject")String subject,@RequestParam("comments")String comments ) {
	   
	   
	   try {
		   MimeMessage mail =mailer.createMimeMessage();
		   MimeMessageHelper helper = new MimeMessageHelper(mail);
		   helper.setFrom(from, from);
		   helper.setTo(to);
		   helper.setReplyTo(from,from);
		   helper.setSubject(subject);
		   helper.setText(comments);
		   
		   mailer.send(mail);
		   model.addAttribute("mess", "Gửi Mail Thành Công");
	   }catch(Exception e) {
		   model.addAttribute("mess", "Gửi Mail Thất Bại");
		   e.printStackTrace();
	   }
	   System.out.println(from);
	   System.out.println(to);
	   System.out.println(subject);
	   System.out.println(comments);
	   return "success";    
   }
}
