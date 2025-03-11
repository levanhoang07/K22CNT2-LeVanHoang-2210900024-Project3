package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_DanhgiaDAO;
import com.lvhspringmvc.model.LVH_Danhgia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/danhgia")
public class LVH_DanhgiaController {

    private final LVH_DanhgiaDAO danhgiaDAO;

    @Autowired
    public LVH_DanhgiaController(LVH_DanhgiaDAO danhgiaDAO) {
        this.danhgiaDAO = danhgiaDAO;
    }

    @GetMapping("/list")
    public String showDanhgiaList(Model model) {
        List<LVH_Danhgia> list = danhgiaDAO.getAllDanhgia();
        model.addAttribute("list", list);
        return "lvh_danhgia_list";  // Trang danh sách đánh giá
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("danhgia", new LVH_Danhgia());
        return "lvh_danhgia_form";  // Trang thêm mới/sửa đánh giá
    }

    @PostMapping("/save")
    public String saveDanhgia(@ModelAttribute("danhgia") LVH_Danhgia danhgia) {
        danhgiaDAO.insertDanhgia(danhgia);
        return "redirect:/danhgia/list";  // Quay lại trang danh sách
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Danhgia danhgia = danhgiaDAO.getAllDanhgia().stream().filter(d -> d.getLvhMaDanhGia() == id).findFirst().orElse(null);
        if (danhgia != null) {
            model.addAttribute("danhgia", danhgia);
            return "lvh_danhgia_form";  // Sử dụng lại form để sửa
        }
        return "redirect:/danhgia/list";
    }

    @PostMapping("/update")
    public String updateDanhgia(@ModelAttribute("danhgia") LVH_Danhgia danhgia) {
        danhgiaDAO.updateDanhgia(danhgia);
        return "redirect:/danhgia/list";  // Quay lại trang danh sách
    }

    @GetMapping("/delete/{id}")
    public String deleteDanhgia(@PathVariable("id") int id) {
        danhgiaDAO.deleteDanhgia(id);
        return "redirect:/danhgia/list";  // Quay lại trang danh sách
    }
}
