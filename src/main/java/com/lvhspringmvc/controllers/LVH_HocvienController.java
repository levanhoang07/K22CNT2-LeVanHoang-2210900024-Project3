package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_HocvienDAO;
import com.lvhspringmvc.model.LVH_Hocvien;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/hocvien")
public class LVH_HocvienController {

    private final LVH_HocvienDAO hocvienDAO;

    @Autowired
    public LVH_HocvienController(LVH_HocvienDAO hocvienDAO) {
        this.hocvienDAO = hocvienDAO;
    }

    // Hiển thị danh sách học viên
    @GetMapping("/list")
    public String showHocvienList(Model model) {
        List<LVH_Hocvien> list = hocvienDAO.getAllHocVien();
        model.addAttribute("list", list);
        return "hocvien_list"; // Trả về trang danh sách học viên
    }

    // Hiển thị form thêm mới học viên
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("hocvien", new LVH_Hocvien());
        return "hocvien_form"; // Trả về form thêm/sửa học viên
    }

    // Lưu thông tin học viên mới
    @PostMapping("/save")
    public String saveHocvien(@ModelAttribute("hocvien") LVH_Hocvien hocvien) {
        hocvienDAO.insertHocVien(hocvien);
        return "redirect:/hocvien/list";
    }

    // Hiển thị form chỉnh sửa học viên
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Hocvien hocvien = hocvienDAO.getHocVienById(id);
        if (hocvien == null) {
            return "redirect:/hocvien/list"; // Nếu không tìm thấy, quay lại danh sách
        }
        model.addAttribute("hocvien", hocvien);
        return "hocvien_form"; // Sử dụng lại cùng 1 form để sửa
    }

    // Cập nhật thông tin học viên
    @PostMapping("/update")
    public String updateHocvien(@ModelAttribute("hocvien") LVH_Hocvien hocvien) {
        if (hocvien.getLvhMaHocVien() != null) {
            hocvienDAO.updateHocVien(hocvien);
        }
        return "redirect:/hocvien/list";
    }

    // Xóa học viên
    @GetMapping("/delete/{id}")
    public String deleteHocvien(@PathVariable("id") int id) {
        hocvienDAO.deleteHocVien(id);
        return "redirect:/hocvien/list";
    }
}
