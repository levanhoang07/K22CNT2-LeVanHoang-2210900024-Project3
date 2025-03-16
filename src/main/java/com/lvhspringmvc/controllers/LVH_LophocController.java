package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_LophocDAO;
import com.lvhspringmvc.model.LVH_Lophoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LVH_LophocController {

    @Autowired
    private LVH_LophocDAO lopHocDAO;

    // Hiển thị danh sách lớp học
    @RequestMapping("/lophoc/lvh_lophoc_list")
    public String showLopHocList(Model model) {
        List<LVH_Lophoc> list = lopHocDAO.getAllLopHoc();
        model.addAttribute("list", list);
        return "lophoc/lvh_lophoc_list"; // Trả về trang danh sách lớp học
    }

    // Hiển thị form thêm mới lớp học
    @GetMapping("/lophoc/add")
    public String showAddForm(Model model) {
        model.addAttribute("lopHoc", new LVH_Lophoc());
        return "lophoc/lvh_lophoc_add"; // Trả về form thêm lớp học
    }

    // Xử lý lưu thông tin lớp học (thêm mới)
    @PostMapping("/lophoc/save")
    public String saveLopHoc(@ModelAttribute("lopHoc") LVH_Lophoc lopHoc, Model model) {
        try {
            if (lopHoc != null) {
                lopHocDAO.insertLopHoc(lopHoc);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "lophoc/lvh_lophoc_add"; // Quay lại form nếu có lỗi
        }
        return "redirect:/lophoc/lvh_lophoc_list"; // Sau khi thêm thành công, chuyển đến danh sách
    }

    // Hiển thị form chỉnh sửa lớp học
    @GetMapping("/lophoc/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Lophoc lopHoc = lopHocDAO.getLopHocById(id);
        if (lopHoc == null) {
            model.addAttribute("message", "Không tìm thấy lớp học với ID: " + id);
            return "redirect:/lophoc/lvh_lophoc_list"; // Nếu không tìm thấy thì quay lại danh sách
        }
        model.addAttribute("lopHoc", lopHoc);
        return "lophoc/lvh_lophoc_edit"; // Trả về form chỉnh sửa lớp học
    }

    // Xử lý cập nhật thông tin lớp học
    @PostMapping("/lophoc/update")
    public String updateLopHoc(@ModelAttribute("lopHoc") LVH_Lophoc lopHoc, Model model) {
        try {
            if (lopHoc != null && lopHoc.getLvhMaLop() != null) {
                lopHocDAO.updateLopHoc(lopHoc);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "lophoc/lvh_lophoc_edit"; // Quay lại form nếu có lỗi
        }
        return "redirect:/lophoc/lvh_lophoc_list"; // Sau khi cập nhật thành công, chuyển đến danh sách
    }

    // Xử lý xóa lớp học
    @GetMapping("/lophoc/delete/{id}")
    public String deleteLopHoc(@PathVariable("id") int id) {
        LVH_Lophoc lopHoc = lopHocDAO.getLopHocById(id);
        if (lopHoc != null) {
            lopHocDAO.deleteLopHoc(id);
        }
        return "redirect:/lophoc/lvh_lophoc_list"; // Sau khi xóa thành công, quay lại danh sách
    }
}
