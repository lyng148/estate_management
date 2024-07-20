<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Danh sách tòa nhà</title>
    </head>
    <body>
        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try {
                            ace.settings.check('breadcrumbs', 'fixed')
                        } catch (e) {
                        }
                    </script>

                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="#">Trang chủ</a>
                        </li>
                        <li class="active">Danh sách tòa nhà</li>
                    </ul><!-- /.breadcrumb -->


                </div>

                <div class="page-content" style="font-family: sans-serif;">


                    <div class="page-header">
                        <h1>
                            Danh sách tòa nhà
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                overview &amp; stats
                            </small>
                        </h1>
                    </div><!-- /.page-header -->

                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->
                            <div class="col-xs-12">
                                <div class="widget-box">
                                    <div class="widget-header">
                                        <h4 class="widget-title">Tìm kiếm</h4>

                                        <span class="widget-toolbar">

											<a href="#" data-action="reload">
												<i class="ace-icon fa fa-refresh"></i>
											</a>

											<a href="#" data-action="collapse">
												<i class="ace-icon fa fa-chevron-up"></i>
											</a>

											<a href="#" data-action="close">
												<i class="ace-icon fa fa-times"></i>
											</a>
										</span>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <form:form modelAttribute="modelSearch" action="/admin/building-list"
                                                       id="listForm" method="get">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-6">
                                                                <div>
                                                                    <label for="name">Tên tòa nhà</label>
                                                                    <form:input class="form-control" path="name"
                                                                                placeholder="Tên tòa nhà..."></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-6">
                                                                <div>
                                                                    <label for="floorArea">Diện tích sàn</label>
                                                                    <form:input class="form-control"
                                                                                path="floorArea"></form:input>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-2">
                                                                <div>
                                                                    <label for="district">Quận</label>
                                                                    <form:select path="district" class="form-control">
                                                                        <form:option
                                                                                value="">--Chọn quận--</form:option>
                                                                        <form:options
                                                                                items="${districtCode}"></form:options>
                                                                    </form:select>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-5">
                                                                <div>
                                                                    <label for="ward">Phường</label>
                                                                    <form:input class="form-control"
                                                                                path="ward"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-5">
                                                                <div>
                                                                    <label for="street">Đường</label>
                                                                    <form:input class="form-control"
                                                                                path="street"></form:input>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-4">
                                                                <div>
                                                                    <label for="numberOfBasement">Số tầng hầm</label>
                                                                    <form:input class="form-control"
                                                                                path="numberOfBasement"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-4">
                                                                <div>
                                                                    <label for="direction">Hướng</label>
                                                                    <form:input class="form-control"
                                                                                path="direction"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-4">
                                                                <div>
                                                                    <label for="level">Hạng</label>
                                                                    <form:input class="form-control"
                                                                                path="level"></form:input>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-3">
                                                                <div>
                                                                    <label for="startRentArea">Diện tích từ</label>
                                                                    <form:input class="form-control"
                                                                                path="startRentArea"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-3">
                                                                <div>
                                                                    <label for="end-rent-area">Diện tích đến</label>
                                                                    <form:input class="form-control"
                                                                                path="endRentArea"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-3">
                                                                <div>
                                                                    <label for="start-rent-price">Giá thuê từ</label>
                                                                    <form:input class="form-control"
                                                                                path="startRentPrice"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-3">
                                                                <div>
                                                                    <label for="end-rent-price">Giá thuê đến</label>
                                                                    <form:input class="form-control"
                                                                                path="endRentPrice"></form:input>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">

                                                            <div class="col-xs-5">
                                                                <div>
                                                                    <label for="manager-name">Tên quản lý</label>
                                                                    <form:input class="form-control"
                                                                                path="managerName"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-5">
                                                                <div>
                                                                    <label for="manager-phone-number">SĐT quản
                                                                        lý</label>
                                                                    <form:input class="form-control"
                                                                                path="managerPhone"></form:input>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-2">
                                                                <div>
                                                                    <label for="staffId">Chọn nhân viên</label>
                                                                    <form:select path="staffId" class="form-control">
                                                                        <form:option
                                                                                value="">--Chọn nhân viên--</form:option>
                                                                        <form:options items="${staffs}"></form:options>
                                                                    </form:select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-5">
                                                                <form:checkboxes path="type" items="${rentType}"
                                                                                 cssStyle="margin-left: 10px"></form:checkboxes>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12">
                                                            <div class="col-xs-2">
                                                                <button class="btn btn-sm btn-primary" type="button"
                                                                        id="btn-search">Tìm
                                                                    kiếm &thinsp;<i
                                                                            class="ace-icon glyphicon glyphicon-search"></i>
                                                                </button>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                    <div class="pull-right">
                                        <a href="/admin/building-edit">
                                            <button class="btn btn-app btn-success btn-xs"
                                                    title="Thêm tòa nhà">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                                    <path
                                                            d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                                    <path
                                                            d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                                    <path
                                                            d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                                </svg>
                                            </button>
                                        </a>
                                        <button class="btn btn-app btn-danger btn-xs" title="Xóa tòa nhà"
                                                id="btn-delete-buildings">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                                                <path
                                                        d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"/>
                                                <path
                                                        d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                                <path
                                                        d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div><!-- /.span -->
                            <!-- PAGE CONTENT ENDS -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <div class="hr hr-18 dotted hr-double"></div>

                    <!-- Table -->
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="building-list" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Tên tòa nhà</th>
                                        <th>Địa chỉ</th>
                                        <th>Số tầng hầm</th>
                                        <th>Tên quản lý</th>
                                        <th>Số điện thoại quản lý</th>
                                        <th>D.tích sàn</th>
                                        <th>D.tích trống</th>
                                        <th>Giá thuê</th>
                                        <th>Phí dịch vụ</th>
                                        <th>Phí MG</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${buildingList}" var="building">
                                        <tr>
                                            <td class="center">
                                                <label class="pos-rel">
                                                    <input type="checkbox" class="ace" value="${building.id}">
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>

                                            <td>
                                                    ${building.name}
                                            </td>
                                            <td>${building.address}</td>
                                            <td>${building.numberOfBasement}</td>
                                            <td>${building.managerName}</td>
                                            <td>${building.managerPhone}</td>
                                            <td>${building.floorArea}</td>
                                            <td>${building.rentArea}</td>
                                            <td>${building.rentPrice}</td>
                                            <td>${building.serviceFee}</td>
                                            <td>${building.brokerageFee}</td>
                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <button class="btn btn-xs btn-success" title="Giao tòa nhà"
                                                            onclick="assignBuilding(${building.id})">
                                                        <i class="ace-icon fa fa-check bigger-120"></i>
                                                    </button>
                                                    <a href="/admin/building-edit-${building.id}">
                                                        <button class="btn btn-xs btn-info" title="Sửa thông tin">
                                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                        </button>
                                                    </a>
                                                    <button class="btn btn-xs btn-danger" title="Xóa tòa nhà"
                                                            onclick="deleteOneBuilding(${building.id})">
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </button>

                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- /.span -->
                    </div>
                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->
        <div id="assignBuildingModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Danh sách nhân viên</h4>
                    </div>
                    <div class="modal-body">
                        <table id="staff-list" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="center">
                                    </th>
                                    <th class="center">Tên nhân viên</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" value="1">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        Linh Tower
                                    </td>

                                </tr>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" value="5">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        Linh Anh
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="buildingid" id="buildingid" value="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="btn-assign-building">Giao tòa nhà</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
                    </div>
                </div>

            </div>
        </div>
        <script>
            function assignBuilding(buildingId) {
                $('#assignBuildingModal').modal();
                $("#buildingid").val(buildingId);
            }

            $("#btn-assign-building").click(function (e) {
                e.preventDefault();
                var data = {};
                data['buildingId'] = $('#buildingid').val();
                var staffs = $("#staff-list").find("tbody input[type=checkbox]:checked").map(function () {
                    return $(this).val();
                }).get();
                data['staffId'] = staffs;
                console.log("ok");
                sendAssignBuilding(data);
            })

            function sendAssignBuilding(data) {
                $.ajax({
                    type: "POST",
                    url: "http://localhost:8081/api/buildings/staff",
                    data: JSON.stringify(data),		// Chuyen doi du lieu gui den sang json
                    // dataType:"text",				// Kieu du lieu server tra ve client
                    contentType: "application/json",  // Kieu du lieu gui di
                    success: function () {
                        console.log("success");
                        alert("Giao nhân viên thành công");
                    },
                    error: function () {
                        console.log("fail");
                        alert("Fail to add or update staff assignment");
                    }
                })
            }

            $("#btn-delete-buildings").click(function (e) {
                e.preventDefault();
                var data = {};
                var buildings = $("#building-list").find("tbody input[type=checkbox]:checked").map(function () {
                    return $(this).val();
                }).get();
                data['ids'] = buildings;
                deleteBuilding(data);
            })

            function deleteBuilding(data) {
                $.ajax({
                    type: "DELETE",
                    url: "http://localhost:8081/api/buildings",
                    data: JSON.stringify(data),		// Chuyen doi du lieu gui den sang json
                    // dataType:"text",				// Kieu du lieu server tra ve client
                    contentType: "application/json",  // Kieu du lieu gui di
                    success: function () {
                        console.log("success");
                        alert("Xóa tòa nhà thành công");
                    },
                    error: function () {
                        console.log("fail");
                        alert("Fail to delete building");
                    }
                })
            }

            function deleteOneBuilding(id) {
                var data = {};
                data['ids'] = id;
                deleteBuilding(data);
            }

            $("#btn-search").click(function (e) {
                e.preventDefault();
                $("#listForm").submit();
            })
        </script>
    </body>
</html>
