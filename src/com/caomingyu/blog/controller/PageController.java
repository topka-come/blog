package com.caomingyu.blog.controller;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("")
public class PageController {
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(HttpSession session, Model model) {
        if (null != session.getAttribute("subject")) {
            model.addAttribute("subject", session.getAttribute("subject"));
            return "hasLogin";
        }
        return "login";
    }

    @RequestMapping("index")
    public String index() {
        return "index";
    }
    @RequestMapping("unauthorized")
    public String unauthorized(){
        return "unauthorized";
    }
}
