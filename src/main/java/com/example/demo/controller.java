package com.example.demo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class controller  extends HttpServlet{
	@Autowired
	vrepo repo;
	
@RequestMapping("selfcare")
public String selfcare()
{
	return "Mainpage.jsp";
}
@RequestMapping("/signup")
public String signup()
{
   return "Signup.jsp";
}
@RequestMapping("/signin")
public String signin()
{
	return "Signin.jsp";
}
@RequestMapping("/firstpage")
public String firstpage(HttpServletRequest req,HttpServletResponse res,victim v) throws IOException, ServletException
{
	
	String  eid=req.getParameter("eid");
	
	String fname=req.getParameter("fname");
	String lname=req.getParameter("lname");
	String pass=req.getParameter("password");
	int age=Integer.parseInt(req.getParameter("age"));
	String cpass=req.getParameter("cpassword");
	if(eid!="" && pass.equals(cpass) &&  pass!="" && pass.length()>=8)
	{     
		repo.save(v);
		HttpSession session=req.getSession();
		session.setAttribute("Eid", eid);
		session.setAttribute("Pass", pass);
		session.setAttribute("Age", age);
		session.setAttribute("Fname",fname);
		session.setAttribute("Lname", lname);
		
		
	} 
	else
	{
		RequestDispatcher rd=req.getRequestDispatcher("Signup.jsp");
		rd.forward(req, res);
		
	}
		
	
	return "Firstpage.jsp";
	
}

@RequestMapping("/aches")
public String ad()
{
	return "tcs.jsp";
}
@RequestMapping("/disease")
public String ds()
{
	return "Diseases.jsp";
}
@RequestMapping("/exercise")
public String exercise() 
{
	return "Exercise.jsp";
}
@RequestMapping("/bmi")
public String bmi()
{
	return "Bmi.jsp";
}
@RequestMapping("/help")
public String help()
{
	return "Help.jsp";
}
@RequestMapping("/backtofp")
public String backtofp()
{
	return "Firstpage.jsp";
}
@RequestMapping("/BacktoAd")
public String backtoad()
{
	return "Aches.jsp";
}
@RequestMapping("/firstpage1")
public  String sigintofirstpage(HttpServletRequest req,HttpServletResponse res)throws Exception
{
	String str=req.getParameter("eid");
	victim v=repo.findById(str).orElse(null);
	String pass=req.getParameter("password");
	PrintWriter out=res.getWriter();
	if(repo.findById(str).orElse(null)==null || v.getPassword()==req.getParameter("password"))
	{
		RequestDispatcher rd=req.getRequestDispatcher("Signin.jsp");
		rd.forward(req, res);
	}
	else
	{
		HttpSession ses=req.getSession();
		ses.setAttribute("Eid", v.getEid());
		ses.setAttribute("Pass",v.getPassword());
		ses.setAttribute("Age", v.getAge());
		ses.setAttribute("Fname",v.getFname());
		ses.setAttribute("Lname", v.getLname());
		
	}
	
	return "Firstpage.jsp";
	
}
@RequestMapping("/profile")
public String profile() 
{
	
	
	return "Profile.jsp";
	
}
@RequestMapping("/backtodiseases")
public String backtodisease()
{
	return "Diseases.jsp";
}
}
