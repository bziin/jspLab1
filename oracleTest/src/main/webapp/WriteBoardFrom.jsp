<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/header.jspf"%>


<style>
.footer-area {
	width: 100%;
	height: 110px; /* 내용물에 따라 알맞는 값 설정 */
	position: absolute;
}

.expert-calculate__content {
	text-align: center;
}

.text-center padding-b-50 {
	margin-top: 50px;
}

.notice {
	margin: 0 auto;
	width: 60%;
	left: 30%;
	background-color: #f7f8fa;
	padding-left: 1%;
	padding-right: 1%;
	padding-bottom: 1%;
	padding-top: 1%;
	margin-bottom: 50px;
	margin-top: 50px;
}

.form-group {
	margin: 0 auto;
	width: 35%;
	margin-bottom: 50px;
	margin-top: 50px;
}

.area {
	margin: 0 auto;
	width: 30%;
	margin-bottom: 50px;
	margin-top: 50px;
}

.range-slider-input__content {
	position: relative;
	top: 7px;
	left: 12px;
	right: 12px;
	height: 10px;
}

.input-group {
	margin: 0 auto;
	width: 40%;
	margin-bottom: 50px;
	margin-top: 50px;
}

.cancel_btn {
	position: relative;
	width: 150px;
	height: 60px;
	margin-left: 50px;
	margin-right: 50px;
	margin-bottom: 100px;
	margin-left: 50px;
	background-color: #C2C2C2;
}

.submit_btn {
	position: relative;
	width: 150px;
	height: 60px;
	margin-left: 50px;
	margin-right: 50px;
	margin-bottom: 100px;
	background-color: #FDC600;
}

.box-title {
	text-align: center;
}

.box {
	width: 70%;
	margin: auto;
	text-align: center;
}

.form-group {
	text-align-last: center;
	text-align: center;
}

</style>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("form")
						.submit(
								function() {
									if ($("#title").val() == "") {
										alert("시공내용을 간략히 입력해주세요");
										$("#title").focus();

										return false;
									}

									if ($("#category").val() == null) {
										alert("주거유형을 선택해주세요");
										$("#category").focus();
										return false;
									}

									if ($("#sido1").val() == "") {
										alert("주소를 선택해주세요");
										$("#title").focus();
										return false;
									}

									if ($("#gugun1").val() == "") {
										alert("주소를 선택해주세요");
										$("#gugun1").focus();
										return false;
									}

									if (!$.isNumeric($(
											'input[type=number][name=area]')
											.val())) {
										alert("면적을 입력해주세요(면적은 숫자만 입력 가능합니다)");
										$("#area").focus();
										return false;
									}

									if ($("#startDate").val() == ""
											&& $("#undefined_start").is(
													":checked") == false) {
										alert("시공 시작일을 입력해주세요");
										$("#startDate").focus();
										return false;
									}

									if ($("#endDate").val() == ""
											&& $("#undefined_end").is(
													":checked") == false) {
										alert("시공 종료일을 입력해주세요");
										$("#endDate").focus();
										return false;
									}

									if (!$.isNumeric($(
											'input[type=number][name=budget]')
											.val())
											&& $("#undefined_budget").is(
													":checked") == false) {
										alert("예산을 입력해주세요");
										$("#budget").focus();
										return false;
									}
									if ($("#part").val() == null) {
										alert("인테리어 분야를 선택해주세요");
										$("#part").focus();
										return false;
									}

									if ($("#require").val() == "undefined") {
										alert("상세 요청사항을 입력해주세요");
										$("#require").focus();
										return false;
									}
								}); // submit() end
			}); // ready() end
</script>

<div class="page-head">
	<div class="container">
		<div class="row">
			<div class="page-head-content">
				<h1 class="page-title">인테리어 견적 신청</h1>
			</div>
		</div>
	</div>
</div>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<!-- 	<section class="content-header"> -->
	<!-- 		<h2>인테리어 간편 견적신청</h2> -->

	<!-- 	</section> -->
	<!-- Main content -->

	<div class="register-area"
		style="background-color: rgb(249, 249, 249);">
		<!-- <section class="content"> -->

		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">신청서 작성</h3>
			</div>
			<div class="box-body">

				<!-- 				<form action="write.do" method="post" enctype="Multipart/form-data"> -->
				<form action="write.do" method="post">

					<div class="form-row">

					<!-- 							Title 작성 -->
					<div class="form-group">
						<label for="inputAddress">제목</label>
						 
						 <input	type="text" class="form-control" name="title" id="title"
							placeholder="시공내용을 간략하게 적어주세요 (20자이내)">
					</div>


					<!-- 							주거 타입 작성 -->
					<div class="form-group">
						<label for="exampleFormControlSelect1">주거유형</label> <select
							class="form-control" name="category" id="category">
							<option value="" disabled selected>주거유형</option>
							<option value="아파트">아파트</option>
							<option value="빌라">빌라</option>
							<option value="카페/식당">카페/식당</option>
							<option value="사무/오피스">사무/오피스</option>
							<option value="매장/상업">매장/상업</option>
							<option value="병원/의료">병원/의료</option>
							<option value="기타">기타</option>
						</select>
					</div>



					<div class="form-group" style="width: 400px;">
						<label for="exampleFormControlSelect1">주소</label> <br> <select
							class="form-control" name="sido1"
							style="width: 160px; display: inline-block;"></select>
						<select class="form-control" name="gugun1" id="gugun1"
							style="width: 160px; display: inline-block;"></select>
					</div>


					<!-- 							평수 입력 -->

					<div class="form-group">
						<label>면적</label>
						<div class="input-group"
							style="width: 320px; margin-top: 0px; margin-bottom: 0px;">
							<div class="input-group-addon">평수</div>
							<input type="number" class="form-control" name="area" />
							<div class="input-group-addon">평</div>
						</div>
					</div>




					<div class="form-group">
						<label for="start">시공 시작일</label> <input type="date"
							class="form-control" name="startDate" id="startDate">
					</div>
					<div class="form-group">
						<label for="end">시공 종료일</label> <input type="date"
							class="form-control" name="endDate" id="endDate">
					</div>
					
					<label>시공 시작일 미정</label> <input type="checkbox"
						id="undefined_start" name="undefined_start"
						style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
					<label>시공 종료일 미정</label> <input type="checkbox" id="undefined_end"
						name="undefined_end"
						style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
					
					
					

					<div class="form-group">
						<div class="form-row">
							<div>
								<label for="start">희망 예산</label>
							</div>
							<div class="input-group"
								style="width: 320px; margin-top: 0px; margin-bottom: 0px;">
								<input type="number" class="form-control" name="budget"
									value="${modReq.budget}" />
								<div class="input-group-addon">만원</div>
							</div>
						</div>
					</div>


						<label>업체 협의</label> <input type="checkbox"
						id="undefined_budget" name="undefined_budget"
						style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">




					<div class="form-group">
						<label for="exampleFormControlSelect1">인테리어 분야</label> <select
							class="form-control" name="part" id="part">
							<option value="" disabled selected>인테리어 분야</option>
								<option value="종합">종합</option>
								<option value="도배">도배</option>
								<option value="마루">마루</option>
								<option value="욕실">욕실</option>
								<option value="필름">필름</option>
								<option value="타일">타일</option>
								<option value="도어">도어</option>
								<option value="주방">주방</option>
								<option value="기타">기타</option>
						</select>
					</div>



					<div class="form-group">
						<label for="exampleFormControlTextarea1">상세 요청사항</label>
						<textarea class="form-control" name="require"
							id="exampleFormControlTextarea1" rows="7"></textarea>
					</div>



					<p>
						이미지:<br />
						<textarea name="image" rows="5" cols="30" value="1"></textarea>
					</p>
				</form>

				<div class="col-md-offset-2"
					style="margin-left: 0px; margin-top: 50px;">
					<input type="button" class="cancel_btn" name="cancel" value="취소" 
						onClick="location.href='/oracle/board/list.do'"  
						style="display: inline-block;"> <input type="submit"
						class="submit_btn" name="submit" value="등록"
						style="display: inline-block;">
				</div>
			</div>

			<!-- /.box-body -->
	</div>
</div>
</div>
</div>
<!-- /.box -->
</section>
<!-- /.content -->
</div>
</div>



<%@ include file="include/footer.jspf"%>
