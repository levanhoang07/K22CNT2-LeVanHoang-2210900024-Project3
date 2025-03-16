package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_DanhgiaDAO;
import com.lvhspringmvc.model.LVH_Danhgia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/danhgia") // Nhóm tất cả các endpoint liên quan đến /danhgia
public class LVH_DanhgiaController {

    @Autowired
    private LVH_DanhgiaDAO danhgiaDAO;

    // Hiển thị danh sách đánh giá
    @GetMapping("/lvh_danhgia_list")
    public String showDanhgiaList(Model model) {
        List<LVH_Danhgia> list = danhgiaDAO.getAllDanhgia();
        model.addAttribute("list", list);
        return "danhgia/lvh_danhgia_list";
    }

    // Hiển thị form thêm mới đánh giá
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("danhgia", new LVH_Danhgia());
        return "danhgia/lvh_danhgia_add";
    }

    // Lưu thông tin đánh giá (thêm mới)
    @PostMapping("/save")
    public String saveDanhgia(@ModelAttribute("danhgia") LVH_Danhgia danhgia, Model model) {
        if (danhgia == null || danhgia.getLvhHoTen().isEmpty()) {
            model.addAttribute("message", "Dữ liệu không hợp lệ!");
            return "danhgia/lvh_danhgia_add";
        }

        int result = danhgiaDAO.insertDanhgia(danhgia);
        if (result > 0) {
            return "redirect:/danhgia/lvh_danhgia_list";
        } else {
            model.addAttribute("message", "Lỗi khi lưu đánh giá!");
            return "danhgia/lvh_danhgia_add";
        }
    }

    // Hiển thị form sửa đánh giá
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Danhgia danhgia = danhgiaDAO.getDanhgiaById(id);
        if (danhgia == null) {
            model.addAttribute("message", "Không tìm thấy đánh giá với ID: " + id);
            return "redirect:/danhgia/lvh_danhgia_list";
        }
        model.addAttribute("danhgia", danhgia);
        return "danhgia/lvh_danhgia_edit";
    }

    // Cập nhật thông tin đánh giá
    @PostMapping("/update")
    public String updateDanhgia(@ModelAttribute("danhgia") LVH_Danhgia danhgia, Model model) {
        if (danhgia == null || danhgia.getLvhMaDanhGia() <= 0) {
            model.addAttribute("message", "Dữ liệu không hợp lệ!");
            return "danhgia/lvh_danhgia_edit";
        }

        int result = danhgiaDAO.updateDanhgia(danhgia);
        if (result > 0) {
            return "redirect:/danhgia/lvh_danhgia_list";
        } else {
            model.addAttribute("message", "Lỗi khi cập nhật đánh giá!");
            return "danhgia/lvh_danhgia_edit";
        }
    }

    // Xóa đánh giá
    @GetMapping("/delete/{id}")
    public String deleteDanhgia(@PathVariable("id") int id, Model model) {
        LVH_Danhgia danhgia = danhgiaDAO.getDanhgiaById(id);
        if (danhgia == null) {
            model.addAttribute("message", "Không tìm thấy đánh giá với ID: " + id);
            return "redirect:/danhgia/lvh_danhgia_list";
        }

        int result = danhgiaDAO.deleteDanhgia(id);
        if (result > 0) {
            return "redirect:/danhgia/lvh_danhgia_list";
        } else {
            model.addAttribute("message", "Lỗi khi xóa đánh giá!");
            return "redirect:/danhgia/lvh_danhgia_list";
        }
    }
}
