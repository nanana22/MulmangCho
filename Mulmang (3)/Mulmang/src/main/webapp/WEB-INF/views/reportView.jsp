<%@page import="com.smhrd.domain.User"%>
<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    xmlns:th="http://www.thymeleaf.org"
    xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset="UTF-8">
<title>제보 상세페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="./resources/css/report.css">

<style>
.b {
	display: block;
	position: relative;
	left: 550px;
}
</style>
<script type="text/javascript">
	function goList(){
		location.href = '/web/reportList.do'
	}
</script>

</head>
<body>
<% User user = (User)session.getAttribute("user"); %>
	<div class="container">
		<div class="row">
			<h4 class="mb-3">제보 상세페이지</h4>
			<div class="row">
				<div class="col-sm-2">${rptView.upload_date}</div>
				<div class="col-sm-1">${rptView.user_id}</div>
				<div class="colsm-6"></div>
			</div>


			<hr class="my-4">
		</div>
		<div class="row">
			<div class="col-md-"></div>
			<div class="col-md-6">
				<img src="${rptView.report_photo}" class="img-thumbnail" alt="...">
			</div>
			<div class="col-md-6"></div>
			<br>
			<br>
			<br>
			<br>

		</div>


		<div class="row table_text">
			<table class="table table-borderless">
				<tbody>
					<tr>
						<td scope="row">이름
						</th>
						<td colspan="2">${rptView.person_name}</td>
					</tr>
					<tr>
						<td scope="row">발견날짜
						</th>
						<td>${rptView.report_date}</td>
					</tr>
					<tr>
						<td scope="row">발견지역
						</th>
						<td>${rptView.report_region}</td>
					</tr>

					<tr>
						<td scope="row">인상착의
						</th>
						<td>${rptView.report_look}</td>
					</tr>

					<tr>
						<td scope="row">특징
						</th>
						<td>${rptView.report_feature}</td>
					</tr>

					<tr>
						<td scope="row">설명
						</th>
						<td>${rptView.report_desc}</td>

					</tr>
					<tr>

					</tr>


					</tr>
				</tbody>
			</table>

			<div class="mt-6 mlb">

				<a class="btn btn-secondary" data-bs-toggle="offcanvas"
					href="#offcanvasExample" role="button"
					aria-controls="offcanvasExample" style="width: 120px;"> 메세지 </a>
				<button onClick="goList()"class="btn btn-secondary" type="submit"
					 style="width: 120px;">
					목록으로</button>

			</div>

			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasExample" aria-labelledby="offcanvasExampleLabel"
				style="width: 800px;">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasExampleLabel">메세지 작성</h5>
					<br>
					<br>
					<button type="button" class="btn-close text-reset"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
				
				
				
				
				
				
				
				
				<form action="messageSend.do" method="post">
					<div class="mb-3 row-g-3">
						<div class="col-sm-12">
							<h7 for="exampleFormControlTextarea1" class="form-label">받는이
							 ${rptView.user_id}</h7>
						</div>

						<div class=" col-sm-12 input-group has-validation">
							<input type="text" class="form-control" id="look"
								name="msg_title" placeholder="제목을 입력해주세요" required=""> <br>
						</div>
						
						<textarea class="form-control" id="exampleFormControlTextarea1"
							name="msg_content" rows="10"></textarea>
					</div>
					<div class="text-center">
						<!-- Button trigger modal -->
						<button type="submit" id="toastStart" class="btn btn-secondary"
							data-bs-toggle="modal" data-bs-target="#exampleModal">
							메세지전송</button>
					</div>
					</form>
					
					
					
					
					
					
					
					
                  <div class="row">
                    <h4>메세지 리스트</h4>
  
  
                    <table class="table text-center">
                      <thead>
                        <tr>
                          <th scope="col">번호</th>
                          <th scope="col">제목</th>
                          <th scope="col">작성자</th>
                          <th scope="col">날짜</th>
                         
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                         
                          <td> 
                            <p class="accordion-header" id="flush-heading1" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
                             
                                찾았습니다
                        
                            </p>
                            <div id="flush-collapse1" class="accordion-collapse collapse"  aria-labelledby="flush-heading1" data-bs-parent="#accordionFlushExample">
                              <div class="accordion-body">제가 창원사람인데 제 동네에서 본듯해요 xxxx-xxxx로 연락주세요</div>
                            
                          </div></td>
                          <td>이정민</td>
                          <td>2022-12-04</td>
                       
                        </tr>
                       
        
                        <tr>
                          <th scope="row">2</th>
                          <td> 
                            <p class="accordion-header" id="flush-heading2" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse2" aria-expanded="false" aria-controls="flush-collapse2">
                             어 난가?
                        
                            </p>
                            <div id="flush-collapse2" class="accordion-collapse collapse"  aria-labelledby="flush-heading2" data-bs-parent="#accordionFlushExample">
                              <div class="accordion-body">나인듯? 뭐지</div>
                            
                          </div></td>
                          <td>이정민</td>
                          <td>2022-12-04</td>
                        </tr>
  
                     
                       
                      
                        <tr>
                          <th scope="row">3</th>
                          <td> 
                            <p class="accordion-header" id="flush-heading3" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse3" aria-expanded="false" aria-controls="flush-collapse3">                           
                                어라?                        
                            </p>
                            <div id="flush-collapse3" class="accordion-collapse collapse"  aria-labelledby="flush-heading3" data-bs-parent="#accordionFlushExample">
                              <div class="accordion-body">어라라?</div>
                            
                          </div></td>
                          <td>이정민</td>
                          <td>2022-12-04</td>
                        </tr>
                       
                      </tbody>
                    </table>
  
                    
                    <nav aria-label="Page navigation example">
                      <ul class="pagination">
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                          </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                          </a>
                        </li>
                      </ul>
                    </nav>
                    
                  </div>
				</div>
			</div>
		</div>


		<br>
		<br>

		<div class="row gu">

			<div class="col-sm-12 text-center">
				<br>주의
			</div>
			<br>
			<div class="col-sm-12">실종아동 등의 사진등 신상정보사항을 실종아동 등을 찾기 위한 목적 외에
				영리목적등의 정당한 사유없이 무단 복사, 게시, 배포하는 경우에는 '실종아동 등의 보호 및 자원에 관한 법률'제 18조에
				의거하여, 2년 이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.</div>

		</div>
	</div>








</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<!-- 메세지 전송성공 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
     $().ready(function () {
             $("#toastStart").click(function () {
                 Swal.fire({
//    position: 'top-end',
   icon: 'success',
   title: '메세지 전송 성공',
   showConfirmButton: false,
   timer: 1500
 })
             });
         });
</script>
<!-- 메세지 전송성공 끗 -->


</body>
</html>