function searchTutor() {
    let keyword = document.getElementById("search-box").value.trim();
    if (keyword === "") {
        alert("Vui lòng nhập từ khóa!");
    } else {
        alert("🔎 Đang tìm gia sư với từ khóa: " + keyword);
    }
}
