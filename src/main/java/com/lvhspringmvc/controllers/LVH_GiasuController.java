package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_GiasuDAO;
import com.lvhspringmvc.model.LVH_Giasu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LVH_GiasuController {

    @Autowired
    private LVH_GiasuDAO giasuDAO;

    // Hiển thị danh sách gia sư
    @RequestMapping("/giasu/lvh_giasu_list")
    public String showGiasuList(Model model) {
        List<LVH_Giasu> list = giasuDAO.getAllGiasu();
        model.addAttribute("list", list);
        return "giasu/lvh_giasu_list";
    }

    // Hiển thị form thêm mới gia sư
    @GetMapping("/giasu/add")
    public String showAddForm(Model model) {
        model.addAttribute("giasu", new LVH_Giasu());
        return "giasu/lvh_giasu_add";
    }

    // Xử lý lưu thông tin gia sư (thêm mới)
    @PostMapping("/giasu/save")
    public String saveGiasu(@ModelAttribute("giasu") LVH_Giasu giasu, Model model) {
        try {
            if (giasu != null) {
                giasuDAO.insertGiasu(giasu);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "giasu/lvh_giasu_add";
        }
        return "redirect:/giasu/lvh_giasu_list";
    }

    // Hiển thị form để sửa thông tin gia sư
    @GetMapping("/giasu/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Giasu giasu = giasuDAO.getGiasuById(id);
        if (giasu == null) {
            model.addAttribute("message", "Không tìm thấy gia sư với ID: " + id);
            return "redirect:/giasu/lvh_giasu_list";
        }
        model.addAttribute("giasu", giasu);
        return "giasu/lvh_giasu_edit";
    }

    // Xử lý cập nhật thông tin gia sư
    @PostMapping("/giasu/update")
    public String updateGiasu(@ModelAttribute("giasu") LVH_Giasu giasu, Model model) {
        try {
            if (giasu != null && giasu.getLvhMaGiaSu() != null) {
                giasuDAO.updateGiasu(giasu);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "giasu/lvh_giasu_edit";
        }
        return "redirect:/giasu/lvh_giasu_list";
    }

    // Xử lý xóa gia sư
    @GetMapping("/giasu/delete/{id}")
    public String deleteGiasu(@PathVariable("id") int id) {
        LVH_Giasu giasu = giasuDAO.getGiasuById(id);
        if (giasu != null) {
            giasuDAO.deleteGiasu(id);
        }
        return "redirect:/giasu/lvh_giasu_list";
    }
}
