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
	width: 30%;
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
	width: 30%;
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
<div class="page-head">
	<div class="container">
		<div class="row">
			<div class="page-head-content">
				<h1 class="page-title">인테리어 간편 견적신청</h1>
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
		<section class="content">

			<!-- Default box -->
			<div class="box">
<div class="panel panel-default sidebar-menu wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
						<div class="panel-heading">
							<h3 class>종합 인테리어 견적 신청서</h3>	
						</div>
						</div>
						
	
<div class="form-inline">

<form class="row g-3">

  <div class="col-md-12"> 
 
  <form action="write.do" method="post">	 
    <label for="title" class="form-label">시공내용을 간략히 적어주세요.</label>
    <input type="text" class="form-control" name="title" id="title" placeholder="시공내용을 간략하게 적어주세요">
  </div>
  

  
  
     <div class="row mb-5">
    <label for="address" class="col-sm-2 col-form-label">주소</label>
    <div class="col-sm-8 offset-3">
     <select class="form-control" name="sido1"></select>
	<select class="form-control" name="gugun1" id="gugun1"></select>
								</div>
							</div>
  <div class="col-md-6">
    <label for=""category">주거유형</label>
 <select class="form-control" name="category"  id="category">
									  <option>아파트</option>
									  <option>빌라</option>
									  <option>단독주택</option>
								  
									</select>
								  </div>
								 

	<div class="col-md-6">
   <label for="part">인테리어 분야</label> <select
						class="form-control" name="part" id="part">
						<option value="" disabled selected>인테리어 분야</option>
						<option value="종합">종합</option>
						<option value="도배">도배</option>
						<option value="마루">마루</option>
						<option value="주방">주방</option>
						<option value="기타">기타</option>
					</select>
				</div>
					
	  <div class="col-md-6">
    <label for="area" class="form-label">면적</label>
    <div class="input-group"
    style="width: 400px; margin-top: 2px; margin-bottom: 10px;">
    <div class="input-group-addon">평수</div>
    <input type="number" class="form-control" name="area">
    <div class="input-group-addon">평</div>

  </div>
  </div>
	
  
      <div class="col-md-6">
    <label for="budget" class="form-label">희망금액</label>
   <div class="input-group"
	style="width: 420px; margin-top: 2px; margin-bottom: 10px;">
							<input type="number" class="form-control" name="budget"/>
							<div class="input-group-addon">만원</div>
						</div>
						</div>
						   <div class="col-md-6">
    <label for="start">희망 종료일</label> <input type="date"
  
							class="form-control" name="startDate" id="startDate">
					</div>
					   <div class="col-md-6">
    <label for="end">희망 종료일</label> <input type="date"
  
							class="form-control" name="endDate" id="endDate">
					</div>
					
					<div class="col-md-6">
  <label for="require">상세 요청사항</label>
					<textarea class="form-control" name="require"
						id="exampleFormControlTextarea1" rows="7"></textarea>
				</div>
				
				<div class="col-md-6">
  <label for="image">첨부파일</label>
					<input class="form-control" type="file"  name="image">
				</div>
						
    
  </div>

</div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
 
</form>


						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
<!-- 				<div class="box-body">

					<!-- 				<form action="write.do" method="post" enctype="Multipart/form-data"> -->
					<!-- <form action="write.do" method="post">

						<div class="form-row">

							<!-- 							Title 작성 -->
						<!-- <div class="form-inline">
													
														
														<div class="form-row">
															<div class="form-group">
																<label for="title">시공내용을 간략히 적어주세요.</label>
													
																<input type="text" class="form-control" name="title" id="title" placeholder="시공내용을 간략하게 적어주세요">
																
															</div>


							<!-- 							주거 타입 작성 -->
							<!-- <div class="form-row">
								<div class="form-group">
									<label for="category">주거유형</label>
									<select class="form-control" name="category"  id="category">
									  <option>아파트</option>
									  <option>빌라</option>
									  <option>단독주택</option>
								  
									</select>
								  </div>


							<div class="form-row">
								<div class="form-group" style="width: 400px;">
									<label for="address">주소</label> <br> <select
										class="form-control" name="sido1"
										style="width: 130px; display: inline-block; margin-left: 30px;"></select>
									<select class="form-control" name="gugun1" id="gugun1"
										style="width: 130px; display: inline-block;"></select>
								</div>
							</div>

							<!-- 							평수 입력 -->
							<!-- <div class="form-row">
								<label>면적</label>
								<div class="input-group"
									style="width: 200px; margin-top: 0px; margin-bottom: 0px;">
									<div class="input-group-addon">평수</div>
									<input type="number" class="form-control" name="area"/>
									<div class="input-group-addon">평</div>
								</div>
				</div>




				<!-- <div class="form-row">
					<div class="form-group">
						<label for="start">희망 시작일</label> <input type="date"
							class="form-control" name="startDate" id="startDate">
					</div>
					<div class="form-group">
						<label for="end">희망 종료일</label> <input type="date"
							class="form-control" name="endDate" id="endDate">
					</div>
				</div>



					<div class="form-row">
				<div class="form-group">
						<div>
							<label for="start">희망 금액</label>
						</div>
						<div class="input-group"
							style="width: 200px; margin-top: 0px; margin-bottom: 0px;">
							<input type="number" class="form-control" name="budget"/>
							<div class="input-group-addon">만원</div>
						</div>
					</div>
				</div>





				<div class="form-group">
					<label for="part">인테리어 분야</label> <select
						class="form-control" name="part" id="part">
						<option value="" disabled selected>인테리어 분야</option>
						<option value="종합">종합</option>
						<option value="도배">도배</option>
						<option value="마루">마루</option>
						<option value="주방">주방</option>
						<option value="기타">기타</option>
					</select>
				</div>



				<div class="form-group">
					<label for="require">상세 요청사항</label>
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
					<input type="button" class="cancel_btn" name="cancel"
						value="cancel" onClick="location.href='/oracle/'"
						style="display: inline-block;"> <input type="submit"
						class="submit_btn" name="submit" value="submit"
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
