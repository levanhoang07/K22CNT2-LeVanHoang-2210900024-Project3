package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_LophocDAO;
import com.lvhspringmvc.model.LVH_Lophoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/lophoc")
public class LVH_LophocController {

    private final LVH_LophocDAO lopHocDAO;

    @Autowired
    public LVH_LophocController(LVH_LophocDAO lopHocDAO) {
        this.lopHocDAO = lopHocDAO;
    }

    // Hiển thị danh sách lớp học
    @GetMapping("/list")
    public String showLopHocList(Model model) {
        List<LVH_Lophoc> list = lopHocDAO.getAllLopHoc();
        model.addAttribute("list", list);
        return "lvh_lophoc_list"; // Trả về trang danh sách lớp học
    }

    // Hiển thị form thêm mới lớp học
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("lopHoc", new LVH_Lophoc());
        return "lvh_lophoc_form"; // Trả về form thêm/sửa lớp học
    }

    // Lưu thông tin lớp học mới
    @PostMapping("/save")
    public String saveLopHoc(@ModelAttribute("lopHoc") LVH_Lophoc lopHoc) {
        lopHocDAO.insertLopHoc(lopHoc);
        return "redirect:/lophoc/list";
    }

    // Hiển thị form chỉnh sửa lớp học
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
    	LVH_Lophoc lopHoc = lopHocDAO.getLopHocById(id);
        if (lopHoc == null) {
            return "redirect:/lophoc/list"; // Nếu không tìm thấy lớp học, quay lại danh sách
        }
        model.addAttribute("lopHoc", lopHoc);
        return "lvh_lophoc_form"; // Sử dụng lại cùng 1 form để sửa
    }

    // Cập nhật thông tin lớp học
    @PostMapping("/update")
    public String updateLopHoc(@ModelAttribute("lopHoc") LVH_Lophoc lopHoc) {
        if (lopHoc.getLvhMaLop() != null) {
            lopHocDAO.updateLopHoc(lopHoc);
        }
        return "redirect:/lophoc/list";
    }

    // Xóa lớp học
    @GetMapping("/delete/{id}")
    public String deleteLopHoc(@PathVariable("id") int id) {
        lopHocDAO.deleteLopHoc(id);
        return "redirect:/lophoc/list";
    }
}
