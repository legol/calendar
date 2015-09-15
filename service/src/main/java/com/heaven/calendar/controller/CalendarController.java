package com.heaven.calendar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ChenJie3 on 2015/9/15.
 */
@Controller
public class CalendarController {
    @RequestMapping("/test")
    @ResponseBody
    public Object test(HttpServletRequest request, HttpServletResponse response) {
        return "hello calendar & spring mvc!";
    }
}