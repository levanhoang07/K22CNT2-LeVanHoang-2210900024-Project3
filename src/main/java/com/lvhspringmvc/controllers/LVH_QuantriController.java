package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_QuantriDAO;
import com.lvhspringmvc.model.LVH_QuanTri;
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

    // Hiển thị danh sách quản trị viên
    @GetMapping("/list")
    public String showQuanTriList(Model model) {
        List<LVH_QuanTri> list = quantriDAO.getAllQuanTri();
        model.addAttribute("list", list);
        return "lvh_quantri_list"; // Trả về trang danh sách quản trị viên
    }

    // Hiển thị form thêm mới quản trị viên
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("quanTri", new LVH_QuanTri());
        return "lvh_quantri_form"; // Trả về form thêm/sửa quản trị viên
    }

    // Lưu thông tin quản trị viên mới
    @PostMapping("/save")
    public String saveQuanTri(@ModelAttribute("quanTri") LVH_QuanTri quanTri) {
        if (quanTri != null) {
            quantriDAO.insertQuanTri(quanTri);
        }
        return "redirect:/quantri/list";
    }

    // Hiển thị form chỉnh sửa quản trị viên
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_QuanTri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri == null) {
            model.addAttribute("message", "Không tìm thấy quản trị viên với ID: " + id);
            return "lvh_quantri_list"; // Quay lại danh sách và hiển thị thông báo
        }
        model.addAttribute("quanTri", quanTri);
        return "lvh_quantri_form"; // Sử dụng lại cùng 1 form để sửa
    }

    // Cập nhật thông tin quản trị viên
    @PostMapping("/update")
    public String updateQuanTri(@ModelAttribute("quanTri") LVH_QuanTri quanTri) {
        if (quanTri != null && quanTri.getLvhMaQuanTri() != null) {
            quantriDAO.updateQuanTri(quanTri);
        }
        return "redirect:/quantri/list";
    }

    // Xóa quản trị viên
    @GetMapping("/delete/{id}")
    public String deleteQuanTri(@PathVariable("id") int id) {
        // Kiểm tra nếu quản trị viên tồn tại trước khi xóa
        LVH_QuanTri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri != null) {
            quantriDAO.deleteQuanTri(id);
        }
        return "redirect:/quantri/list";
    }
}
