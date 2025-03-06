package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.QuantriDAO;
import com.lvhspringmvc.model.QuanTri;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/quantri")
public class QuantriController {

    private final QuantriDAO quantriDAO;

    @Autowired
    public QuantriController(QuantriDAO quantriDAO) {
        this.quantriDAO = quantriDAO;
    }

    // Hiển thị danh sách quản trị viên
    @GetMapping("/list")
    public String showQuanTriList(Model model) {
        List<QuanTri> list = quantriDAO.getAllQuanTri();
        model.addAttribute("list", list);
        return "quantri_list"; // Trả về quantri_list.jsp
    }

    // Hiển thị form thêm quản trị viên
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("quanTri", new QuanTri());
        return "quantri_form"; // Trả về quantri_form.jsp
    }

    // Lưu thông tin quản trị viên mới
    @PostMapping("/save")
    public String saveQuanTri(@ModelAttribute("quanTri") QuanTri quanTri) {
        quantriDAO.insertQuanTri(quanTri);
        return "redirect:/quantri/list";
    }

    // Hiển thị form chỉnh sửa quản trị viên
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        QuanTri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri == null) {
            return "redirect:/quantri/list"; // Nếu không tìm thấy, quay lại danh sách
        }
        model.addAttribute("quanTri", quanTri);
        return "quantri_form"; // Sử dụng lại cùng 1 form để tránh trùng lặp
    }

    // Cập nhật thông tin quản trị viên
    @PostMapping("/update")
    public String updateQuanTri(@ModelAttribute("quanTri") QuanTri quanTri) {
        if (quantriDAO.getQuanTriById(quanTri.getLvhMaQuanTri()) != null) {
            quantriDAO.updateQuanTri(quanTri);
        }
        return "redirect:/quantri/list";
    }

    // Xóa quản trị viên
    @GetMapping("/delete/{id}")
    public String deleteQuanTri(@PathVariable("id") int id) {
        quantriDAO.deleteQuanTri(id);
        return "redirect:/quantri/list";
    }
}
