package com.Docker.springbootdocker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.Docker.springbootdocker.dao.StudentRepo;
import com.Docker.springbootdocker.model.StudentModel;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@RestController
public class StudentController {

    @Autowired
    StudentRepo studentRepo;

    @GetMapping("/home")
    public ModelAndView gethome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @PostMapping("/addstudentdata")
    public ModelAndView addstudentData(StudentModel studentMod) {
        studentRepo.save(studentMod);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }


    @GetMapping("/getstudentdata")
    public ModelAndView getstudentData(@RequestParam int studentId) {
        Optional<StudentModel> sm = studentRepo.findById(studentId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("sdata", sm.get());
        mv.setViewName("showData");
        return mv;
    }

}
