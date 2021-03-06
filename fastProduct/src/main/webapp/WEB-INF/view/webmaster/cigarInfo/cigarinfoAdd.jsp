<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>潮州烟草案件卷宗自动化系统-卷烟信息编辑</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/components.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/layout/layout.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/layout/themes/light2.min.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="${pageContext.request.contextPath}/statics/style/layout/custom.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/statics/style/plugins/time/daterangepicker.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/time/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/time/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/time/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/select/select2.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/statics/style/plugins/select/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.form_datetime {
	font-size: 12px
}

.table-condensed {
	font-size: 12px
}


</style>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-sidebar-fixed">
	<!-- BEGIN HEADER & CONTENT DIVIDER -->
	<div class="clearfix"></div>
	<!-- END HEADER & CONTENT DIVIDER -->
	<!-- BEGIN CONTAINER -->
	<form onsubmit="return false;" id="myForm">
		<input type="hidden" name="id" id="id" value="${obj.id }">
		<div class="page-container">
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="row">
						<div class="col-md-12">
							<div class="tabbable-line boxless tabbable-reversed">
								<div class="form-body">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4">卷烟名称</label>
												<div class="col-md-8">
													<input type="text" name="name" id="name"
														value="${obj.name }" maxlength="100" class="form-control">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4">卷烟零售价</label>
												<div class="col-md-8">
													<input type="text" name="retailPrice" id="retailPrice"
														value="${obj.retailPrice }" maxlength="6"
														class="form-control doub">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4">条形码</label>
												<div class="col-md-8">
													<input type="text" name="barCode" id="barCode"
														value="${obj.barCode }" maxlength="32"
														class="form-control">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div style="text-align: center;">
									<button type="submit" class="btn green-turquoise" id="saveBtn">
										<i class="fa fa-check"></i> 保存
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</form>
	<!-- END CONTAINER -->

	<!--[if lt IE 9]>
            <script src="../statics/script/respond.min.js"></script>
            <script src="../statics/script/excanvas.min.js"></script> 
		<![endif]-->

	<script src="${pageContext.request.contextPath}/statics/script/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/js.cookie.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/bootstrap-hover-dropdown.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/bootstrap-fileinput.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/app.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/forbitBackSpace.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/moment.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/daterangepicker.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/bootstrap-datepicker.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/bootstrap-timepicker.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/time/components-date-time-pickers.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/statics/script/plugins/select/select2.full.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/plugins/select/components-select2.min.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/statics/script/table-datatables-managed.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/layout.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/statics/script/layer/layer.js" type="text/javascript"></script>

	<script> App.setAssetsPath(""); App.setGlobalImgPath("${pageContext.request.contextPath}/statics/images/"); </script>
	
	<script type="text/javascript">

	function submitClickOut(){
		if($("#name").val() == ""){
			layer.tips('[卷烟名称]不能为空', '#name', {
			  tips: [1, '#3595CC'],
			  time: 4000
			});
			return false;
		}
		if($("#retailPrice").val() == ""){
			layer.tips('[卷烟零售价]不能为空', '#retailPrice', {
			  tips: [1, '#3595CC'],
			  time: 4000
			});
			return false;
		}
		if($("#barCode").val() == ""){
			layer.tips('[条形码]不能为空', '#barCode', {
			  tips: [1, '#3595CC'],
			  time: 4000
			});
			return false;
		}
		return true;
	}
		$("#saveBtn").click(function() {
			var submitClick = submitClickOut();
			var name=$("#name").val();
			if(submitClick){
				$.ajax({
					cache : true,
					type : "POST",
					url : "${pageContext.request.contextPath}/webmaster/cigarInfo/doSave",
					data : $('#myForm').serialize(),// 你的formid
					async : false,
					dataType : "JSON",
					error : function(request) {
						alert("Connection error");
					},
					success : function(data) {
						if ($("#id").val()=="") {
							top.layer.msg("保存成功");
							var index = parent.layer.getFrameIndex(window.name);
							 parent.layer.close(index); //执行关闭
							 $(window.parent.document).contents().find("iframe")[1].contentWindow.$("#name").val(name);//上一layer的input设值
							 $(window.parent.document).contents().find("iframe")[1].contentWindow.$("#name_hide").val(name);//上一layer的input设值
							 $(window.parent.document).contents().find("iframe")[1].contentWindow.search();//调用上一layer的方法
							 
						}
					}
				});
			}
		});
		$(".doub").keyup(function(){
			   this.v=function(){
				   this.value=this.value.replace(/[^0-9.]+/,'');
		   		}.call(this)
		   })
		$(".doub").blur(function(){
			   this.v=function(){
				   this.value=this.value.replace(/[^0-9.]+/,'');
				}.call(this)
		})
	</script>
</body>
</html>