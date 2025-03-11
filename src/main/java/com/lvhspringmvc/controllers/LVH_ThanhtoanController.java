package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_ThanhtoanDAO;
import com.lvhspringmvc.model.LVH_Thanhtoan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/thanhtoan")
public class LVH_ThanhtoanController {

    private final LVH_ThanhtoanDAO thanhtoanDAO;

    @Autowired
    public LVH_ThanhtoanController(LVH_ThanhtoanDAO thanhtoanDAO) {
        this.thanhtoanDAO = thanhtoanDAO;
    }

    @GetMapping("/list")
    public String showThanhtoanList(Model model) {
        List<LVH_Thanhtoan> list = thanhtoanDAO.getAllThanhtoan();
        model.addAttribute("list", list);
        return "lvh_thanhtoan_list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("thanhtoan", new LVH_Thanhtoan());
        return "lvh_thanhtoan_form";
    }

    @PostMapping("/save")
    public String saveThanhtoan(@ModelAttribute("thanhtoan") LVH_Thanhtoan thanhtoan) {
        thanhtoanDAO.insertThanhtoan(thanhtoan);
        return "redirect:/thanhtoan/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Thanhtoan thanhtoan = thanhtoanDAO.getAllThanhtoan().stream().filter(t -> t.getLvhMaThanhtoan() == id).findFirst().orElse(null);
        if (thanhtoan != null) {
            model.addAttribute("thanhtoan", thanhtoan);
            return "lvh_thanhtoan_form";
        }
        return "redirect:/thanhtoan/list";
    }

    @PostMapping("/update")
    public String updateThanhtoan(@ModelAttribute("thanhtoan") LVH_Thanhtoan thanhtoan) {
        thanhtoanDAO.updateThanhtoan(thanhtoan);
        return "redirect:/thanhtoan/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteThanhtoan(@PathVariable("id") int id) {
        thanhtoanDAO.deleteThanhtoan(id);
        return "redirect:/thanhtoan/list";
    }
}
