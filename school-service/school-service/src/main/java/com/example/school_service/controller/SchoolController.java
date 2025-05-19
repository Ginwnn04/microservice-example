package com.example.school_service.controller;

import com.example.school_service.entity.School;
import com.example.school_service.service.SchoolService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/school")
@RequiredArgsConstructor
public class SchoolController {
    private final SchoolService schoolService;

    @PostMapping
    public School addSchool(@RequestBody School school){
        return schoolService.addSchool(school);
    }
    @GetMapping
    public List<School> fetchSchools(){
        return  schoolService.fetchSchools();
    }
    @GetMapping("/{id}")
    public School fetchSchoolById(@PathVariable int id){
        return schoolService.fetchSchoolById(id);
    }
}
