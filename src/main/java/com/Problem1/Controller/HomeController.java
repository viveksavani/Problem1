package com.Problem1.Controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.Dao.TeacherDao;
import com.Entities.Student;
import com.Entities.Teacher;

@Controller
public class HomeController {

	@Autowired
	TeacherDao teacherDao;

	@RequestMapping("/home")
	public String home(Model m) {

		String page = "home";
		m.addAttribute("page", page);

		m.addAttribute("teacher", "Teacher");
		return "home";
	}

	@RequestMapping("/loginteacher")
	public String add(Model m) {
		Teacher t = new Teacher();
		m.addAttribute("page", "loginteacher");
		m.addAttribute("teacher", t);
		return "home";
	}

	@RequestMapping(value = "/loginprocess", method = RequestMethod.POST)
	public ModelAndView login(Model m, HttpServletRequest request) {
		ModelAndView mv = null;

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// List<Student> all = teacherDao.getAll();

		List<Object[]> list = teacherDao.getAll();
		System.out.println(list);

		List<Object[]> list1 = teacherDao.getTeacherName();
		System.out.println(list1.get(0));

		Teacher teacher = teacherDao.getName(2);
		System.out.println(teacher + "Data");

		if (teacher != null && teacher.getUsername().equals(username) && teacher.getPassword().equals(password)) {
			System.out.println("working");
			m.addAttribute("students", list);
			m.addAttribute("teachers", list1.get(0));

			m.addAttribute("pages", "teacher");

			m.addAttribute("msg", "successfully Login");
			mv = new ModelAndView("teachers");
		} else {
			m.addAttribute("msg", "Invalid Details login again");
			mv = new ModelAndView("home");
		}

		return mv;
	}

}
