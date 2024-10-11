<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Liên hệ</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1AnmW1Q9gz3JoKf70AaKpGoVjkB8fNhHPEdQpBBHrxP0iM1pMYP" crossorigin="anonymous">
    </head>
    <body>
        <div class="main-page d-flex flex-column align-items-center mt-3" style="width: 70%; margin: 0 auto;">
            <div class="building-info w-100">
                <div class="d-flex" style="justify-content: center">
                    <div class="info position-relative text-center">
                        <img class="building-image img-fluid rounded shadow" src="https://file4.batdongsan.com.vn/resize/1275x717/2024/06/17/20240617233034-96f3_wm.jpg" alt="" style="max-height: 400px; object-fit: cover;">
                        <h1 class="title mt-3 display-6 fw-bold">${building.name}</h1>
                        <p class="address text-muted">${building.street}, ${building.ward}</p>
                    </div>

                    <div class="contact ms-5 p-4 rounded shadow-sm border text-center mt-4" style="height: fit-content ;border-color: #ccc; width: 300px; margin-left: 60px">
                        <p class="contact-name fs-4 fw-bold text-dark">${building.managerName}</p>
                        <div class="contact-phone bg-success text-white px-3 py-2 rounded mt-3 shadow">${building.managerPhone}</div>
                    </div>
                </div>
                <div class="divider my-3" style="height: 2px; width: 100%; background-color: #e4dbdb;"></div>


                <div class="price-area d-flex justify-content-around mt-4">
                    <div class="price">
                        <h3 class="price-title text-uppercase text-secondary" style="font-size: 16px;">Price</h3>
                        <p class="price-value fs-5 fw-bold text-danger">${building.rentPrice} VND</p>
                    </div>

                    <div class="area">
                        <h3 class="area-title text-uppercase text-secondary" style="font-size: 16px;">Area</h3>
                        <p class="area-value fs-5 fw-bold text-primary">${building.rentArea} m²</p>
                    </div>
                </div>

                <div class="description mt-4 p-4 border rounded shadow-sm">
                    <h3 class="description-title fw-bold mb-3">Description</h3>
                    <p class="description-content">${building.note}</p>

                    <ul class="list-unstyled mt-4">
                        <li class="d-flex align-items-center mb-3">
                            <i class="fas fa-ruler-combined text-primary me-3"></i>
                            <span class="fw-bold text-muted">Rent area: </span>
                            <span class="ms-2 text-dark"> ${building.rentArea} m²</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                            <i class="fas fa-building text-success me-3"></i>
                            <span class="fw-bold text-muted">Number of basements: </span>
                            <span class="ms-2 text-dark"> ${building.numberOfBasement}</span>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <a href="./ViewHome.html"><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo_footer.png?1676257083798" alt="logo-footer"></a>
                        <p class="desc-logo-footer mt-3">Với hơn 10 năm kinh nghiệm, SkyLand tự hào là sàn
                            mua
                            bán, giao dịch và quảng cáo
                            bất động sản hàng đầu tại Việt Nam</p>
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Trụ sở chính</p>
                                        <p class="desc-footer">Số 46 Man Thiện, TP Thủ Đức, TP HCM</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798 alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">098828</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798g" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Email</p>
                                        <p class="desc-footer"><a class="a-text" href="#">vsh@gmail.com</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Thông tin công ty</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Chính sách hoạt động</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Hỗ trợ khách hàng</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Kết nối với chúng tôi</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer-2">
                <div class="text-center desc-bottom-footer-2">@ Bản quyền thuộc về Happy Team |
                    Cung cấp bởi <a class="a-text group-name" href="#">HappyTeam</a></div>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
