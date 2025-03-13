package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_QuantriDAO;
import com.lvhspringmvc.model.LVH_Quantri;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/quantri")
public class LVH_QuantriController {

    private final LVH_QuantriDAO quantriDAO;

    @Autowired
    public LVH_QuantriController(LVH_QuantriDAO quantriDAO) {
        this.quantriDAO = quantriDAO;
    }

    // Ánh xạ cho trang quản lý
    @RequestMapping("/qladmin")
    public String showAdminPage() {
        return "qladmin"; // Trả về view qladmin.jsp
    }

    @GetMapping("/list")
    public String showQuanTriList(Model model) {
        List<LVH_Quantri> list = quantriDAO.getAllQuanTri();
        model.addAttribute("list", list);
        return "lvh_quantri_list"; // Trả về danh sách
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("quanTri", new LVH_Quantri());
        return "lvh_quantri_form"; // Form để thêm mới
    }

    @PostMapping("/save")
    public String saveQuanTri(@ModelAttribute("quanTri") LVH_Quantri quanTri, Model model) {
        try {
            if (quanTri != null) {
                quantriDAO.insertQuanTri(quanTri);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "lvh_quantri_form";
        }
        return "redirect:/quantri/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Quantri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri == null) {
            model.addAttribute("message", "Không tìm thấy quản trị viên với ID: " + id);
            return "redirect:/quantri/list";
        }
        model.addAttribute("quanTri", quanTri);
        return "lvh_quantri_form"; // Sử dụng lại form để chỉnh sửa
    }

    @PostMapping("/update")
    public String updateQuanTri(@ModelAttribute("quanTri") LVH_Quantri quanTri, Model model) {
        try {
            if (quanTri != null && quanTri.getLvhMaQuanTri() > 0) {
                quantriDAO.updateQuanTri(quanTri);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "lvh_quantri_form";
        }
        return "redirect:/quantri/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteQuanTri(@PathVariable("id") int id) {
        LVH_Quantri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri != null) {
            quantriDAO.deleteQuanTri(id);
        }
        return "redirect:/quantri/list";
    }
}
