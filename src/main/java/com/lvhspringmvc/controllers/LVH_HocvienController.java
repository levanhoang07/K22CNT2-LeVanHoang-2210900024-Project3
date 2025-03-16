package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_HocvienDAO;
import com.lvhspringmvc.model.LVH_Hocvien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller

public class LVH_HocvienController {

    @Autowired
    private LVH_HocvienDAO hocvienDAO;

    // Hiển thị danh sách học viên
    @RequestMapping("/hocvien/lvh_hocvien_list")
    public String showHocvienList(Model model) {
        List<LVH_Hocvien> list = hocvienDAO.getAllHocVien();
        model.addAttribute("list", list);
        return "hocvien/lvh_hocvien_list"; // Trả về trang danh sách học viên
    }

    // Hiển thị form thêm mới học viên
    @GetMapping("/hocvien/add")
    public String showAddForm(Model model) {
        model.addAttribute("hocvien", new LVH_Hocvien());
        return "hocvien/lvh_hocvien_add"; // Trả về form thêm mới học viên
    }

    // Xử lý lưu thông tin học viên (thêm mới)
    @PostMapping("/hocvien/save")
    public String saveHocvien(@ModelAttribute("hocvien") LVH_Hocvien hocvien, Model model) {
        try {
            if (hocvien != null) {
                hocvienDAO.insertHocVien(hocvien);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "hocvien/lvh_hocvien_add"; // Quay lại form nếu có lỗi
        }
        return "redirect:/hocvien/lvh_hocvien_list";
    }

    // Hiển thị form để sửa thông tin học viên
    @GetMapping("/hocvien/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Hocvien hocvien = hocvienDAO.getHocVienById(id);
        if (hocvien == null) {
            model.addAttribute("message", "Không tìm thấy học viên với ID: " + id);
            return "redirect:/hocvien/lvh_hocvien_list";
        }
        model.addAttribute("hocvien", hocvien);
        return "hocvien/lvh_hocvien_edit";
    }

    // Xử lý cập nhật thông tin học viên
    @PostMapping("/hocvien/update")
    public String updateHocvien(@ModelAttribute("hocvien") LVH_Hocvien hocvien, Model model) {
        try {
            if (hocvien != null && hocvien.getLvhMaHocVien() != null) {
                hocvienDAO.updateHocVien(hocvien);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "hocvien/lvh_hocvien_edit";
        }
        return "redirect:/hocvien/lvh_hocvien_list";
    }

    // Xử lý xóa học viên
    @GetMapping("/hocvien/delete/{id}")
    public String deleteHocvien(@PathVariable("id") int id) {
        LVH_Hocvien hocvien = hocvienDAO.getHocVienById(id);
        if (hocvien != null) {
            hocvienDAO.deleteHocVien(id);
        }
        return "redirect:/hocvien/lvh_hocvien_list";
    }
}
