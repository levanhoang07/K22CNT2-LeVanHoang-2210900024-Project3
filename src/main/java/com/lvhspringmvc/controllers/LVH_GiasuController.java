package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_GiasuDAO;
import com.lvhspringmvc.model.LVH_Giasu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/giasu")
public class LVH_GiasuController {

    private final LVH_GiasuDAO giasuDAO;

    @Autowired
    public LVH_GiasuController(LVH_GiasuDAO giasuDAO) {
        this.giasuDAO = giasuDAO;
    }

    // Hiển thị danh sách gia sư
    @GetMapping("/list")
    public String showGiasuList(Model model) {
        List<LVH_Giasu> list = giasuDAO.getAllGiasu();
        model.addAttribute("list", list);
        return "giasu_list"; // Trả về trang danh sách gia sư
    }

    // Hiển thị form thêm mới gia sư
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("giasu", new LVH_Giasu());
        return "giasu_form"; // Trả về form thêm/sửa gia sư
    }

    // Lưu thông tin gia sư mới
    @PostMapping("/save")
    public String saveGiasu(@ModelAttribute("giasu") LVH_Giasu giasu) {
        giasuDAO.insertGiasu(giasu);
        return "redirect:/giasu/list";
    }

    // Hiển thị form chỉnh sửa gia sư
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Giasu giasu = giasuDAO.getGiasuById(id);
        if (giasu == null) {
            return "redirect:/giasu/list"; // Nếu không tìm thấy, quay lại danh sách
        }
        model.addAttribute("giasu", giasu);
        return "giasu_form"; // Sử dụng lại cùng 1 form để sửa
    }

    // Cập nhật thông tin gia sư
    @PostMapping("/update")
    public String updateGiasu(@ModelAttribute("giasu") LVH_Giasu giasu) {
        if (giasu.getLvhMaGiaSu() != null) {
            giasuDAO.updateGiasu(giasu);
        }
        return "redirect:/giasu/list";
    }

    // Xóa gia sư
    @GetMapping("/delete/{id}")
    public String deleteGiasu(@PathVariable("id") int id) {
        giasuDAO.deleteGiasu(id);
        return "redirect:/giasu/list";
    }
}
