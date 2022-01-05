<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="bookid" scope="request" type="java.lang.String"/>

<t:admin>
    <jsp:attribute name="js">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.2.5/js/locales/vi.min.js"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="profile ">

            <div class="top_header d-flex justify-content-between">
                <h1 style="font-weight: bold;font-size: 36px">
                    Cập nhật sách
                </h1>
            </div>

            <div class="boxProfile ">
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="title">Tựa Sách</label>
                            <input type="text" class="form-control background" name="title" id="title" required>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="book_author">Tác Giả</label>
                            <input type="text" class="form-control background" name="book_author" id="book_author" required>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="publisher">Nhà Xuất Bản</label>
                            <select class="custom-select" name="publisher" id="publisher" required>
                                <option value="1">NXB Trẻ</option>
                                <option value="2">Nhã Nam</option>
                                <option value="3">Nxb Công Thương</option>
                                <option value="4">NXB Dân Trí</option>
                                <option value="5">Nxb Lao động</option>
                                <option value="6">NXB Thanh Niên</option>
                                <option value="7">Nxb Hà Nội</option>
                                <option value="8">NXB Phụ Nữ</option>
                                <option value="9">NXB Hồng Đức</option>
                                <option value="10">Nxb Thế giới</option>
                            </select>
                        </div>

                        <div class="form-group col-md-1">
                            <label for="pages">Số Trang</label>
                            <input type="text" class="form-control background" name="pages" id="pages" required>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="book_language">Ngôn Ngữ</label>
                            <select class="custom-select" name="book_language" id="book_language" required>
                                <option value="1">Tiếng Việt</option>
                                <option value="2">Tiếng Anh</option>
                            </select>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="catid">Thể Loại</label>
                            <select class="custom-select" name="Cat_ID" id="catid" required>
                                <option value="1">Kinh Tế</option>
                                <option value="2">Văn Học Nước Ngoài</option>
                                <option value="3">Văn Học Trong Nước</option>
                                <option value="4">Thường Thức - Đời Sống</option>
                                <option value="5">Thiếu Nhi</option>
                                <option value="6">Phát Triển Bản Thân</option>
                                <option value="7">Tin Học Ngoại Ngữ</option>
                                <option value="8">Chuyên Ngành</option>
                                <option value="9">Giáo Khoa - Giáo Trình</option>
                                <option value="10">Tạp Chí</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="price">Giá Bán</label>
                            <input type="text" class="form-control background" name="price" id="price"
                                   placeholder="16.000" required>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="discount">Giảm Giá</label>
                            <input type="text" class="form-control background" name="discount" id="discount"
                                   placeholder="%" required>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="publication_date">
                                Ngày Xuất Bản </label> <br/>
                            <input id="publication_date" name="publication_date" type="date" required
                                   class="w-full px-2 py-1 outline-none block border-2 rounded-md  border-gray-300 text-gray-700">
                        </div>
                        <div class="form-group col-md-5">
                            <label for="img_main">Hình ảnh</label>
                            <input type="file" class="form-control background" name="img_main" id="img_main" required>
                        </div>
                    </div>

                    <div class="form-row">
                        <label for="Description">Mô tả</label>
                    </div>

                    <div class="form-row">
                        <textarea id="Description" name="description" class="form-control background"
                                  style="resize:none;width: 85vw;height: 400px" required></textarea>
                    </div>

                    <input type="hidden" name="book_id" value="${bookid}">
                    <button type="submit" class="btn btn-outline-success mt-3">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Lưu
                    </button>
                    <a role="button" href="${pageContext.request.contextPath}/Admin/DeleteBook?id=${bookid}" class="btn btn-outline-danger mt-3" id="delete_book">
                        <i class="fa fa-times" aria-hidden="true"></i>
                        Xóa
                    </a>
                    <a role="button" href="${pageContext.request.contextPath}/Admin/Repositories" class="btn btn-outline-primary mt-3" id="close_edit">
                        <i class="fa fa-times" aria-hidden="true"></i>
                        Huỷ
                    </a>
                </form>
            </div>
        </div>
    </jsp:body>
</t:admin>
