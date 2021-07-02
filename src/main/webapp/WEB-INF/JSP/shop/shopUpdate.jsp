<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("data"); // 주소창의? data를 String으로 변환
%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>상품수정</title>
    <link rel="shortcut icon" href="assets/images/feature/11.jpg">

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <!-- icon font - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    <!-- popup - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

    <!-- jquery-ui - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <style>
        .header_section {
            background-color: white;
        }
        
        .tagCheckBox ul li {
        	display:inline-block;
        }
    </style>
    
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
    <!-- contact_section - start
        ================================================== -->
            <section class="contact_section sec_ptb_120 bg_default_gray">
                <div class="container">
                    <div class="contact_form bg_white wow fadeInUp" style="margin-top: 100px;" data-wow-delay=".1s">

                        <form id="shopAdmin" action="updateShop.do?teaId=${tea.teaId }" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="form_item" id="insertTxt">
                                        <h1>추가할 상품의 정보를 적어주세요.</h1>
                                    </div>
                                    <div class="form_item" id="updateTxt">
                                        <h1>수정할 상품의 정보를 적어주세요.</h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form_item">

                                    </div>
                                </div>
                            </div>
                            <div>
                            	<h6>상품 카테고리</h6>
                                <input type="radio" id="TO" name="orderCate" value="TO" checked>
                                <label for="TO">오리지널티</label>
                            </div>
                            <div>             
                                <input type="radio" id="TB" name="orderCate" value="TB">
                                 <label for="TB">블렌딩티</label>
                            </div>
                            <div class="form_item">
                            	<h6>상품 이름</h6>
                                <input type="text" id="teaName" name="teaName" value="${tea.teaName }" placeholder="차 이름을 적어주세요" required>
                            </div>
                            <div class="form_item">
                            	<h6>상품 소개글</h6>
                                <textarea id="teaInfo" name="teaInfo" placeholder="상품 소개글을 적어주세요 :" required> ${tea.teaInfo }</textarea>
                            </div>
                            <div class="form_item">
                            	<h6>상품 가격</h6>
                                <input type="text" value="${tea.teaPrice }" name="teaPrice" id="teaPrice" placeholder="차 가격을 적어주세요" required style="width:50%;">
                            </div>
                            
                            <ul class="tagCheckBox">
                            	<li class="tagTO" id="tagCaff" >
                            <h6> 카페인 선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagCaff" value="카페인" > 카페인</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagCaff" value="디카페인" > 디카페인</label>
                            </div>
                            <br>
                            	</li>
                            	 	<li class="tagTO" id="tagTaste" >
                             <h6> 맛  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="시원한맛" > 시원한맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="떫은맛" > 떫은맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="구수한맛" > 구수한맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="단맛" > 단맛</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagTaste" value="신맛" > 신맛</label>
                            </div>
                            <br>
                            	</li>
                            	<li class="tagTO" id="tagUser" >
                            <h6> 사용자별  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="학생" > 학생</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="직장인" > 직장인</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="임산부" > 임산부</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagUser" value="어르신" > 어르신</label>
                            </div>
                            <br>                            
                            	</li>
                            	
                           		<li class="tagTB" id="tagBase">
		                            <h6> 베이스 선택 </h6>
		                            <div>
		                                <label><input type="checkbox" name="tagBase" value="GREEN" > GREEN</label>
		                            </div>
		                            <div>
		                                <label><input type="checkbox" name="tagBase" value="HERB" > HERB</label>
		                            </div>
		                            <div>
		                                <label><input type="checkbox" name="tagBase" value="BLACK" > BLACK</label>
		                            </div>
		                            <br>
                           		</li>
                            	<li class="tagTB" id="tagSeason">
                            <h6> 계절별 선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="봄" > 봄</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="여름" > 여름</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="가을" > 가을</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagSeason" value="겨울" > 겨울</label>
                            </div>
                            <br>
                            	</li>
                            	

                           
                            	<li class="tagTB" id="tagEff" >
                            <h6> 효능  선택 </h6>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="심신안정" > 심신안정</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="활력" > 활력</label>
                            </div>
                            <div>
                                <label><input type="checkbox" name="tagEff" value="건강" > 건강</label>
                            </div>
                            <br>
                            	</li>
                            	
                            	
                            <li class="tagTB" id="tagBlend">
                            <h6> 블렌드  선택 </h6>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="꽃" > 꽃</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="과일" > 과일</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="시나몬" > 시나몬</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="초콜렛&과자" > 초콜렛&과자</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagBlend" value="믹스" > 믹스</label>
                            </div>
                            <br>
                            	</li>
                            	<li class="tagTB" id="tagDrink">
                             <h6> 마시는 방법  선택 </h6>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="아이스티" > 아이스티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="밀크티" > 밀크티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="핫티" > 핫티</label>
                            </div>
                            <div>
                            <label><input type="checkbox" name="tagDrink" value="식수대용" > 식수대용</label>
                            </div>
                            	</li>
                             </ul>
                            <br>
                            	
                           <!--  
                            <div class="form_item">
                                <input type="text" name="DB 보고 결정2" placeholder="DB 보고 결정2">
                            </div>
                            <div class="form_item">
                                <input type="text" name="DB 보고 결정3" placeholder="DB 보고 결정3">
                            </div> -->


                                <div class="file1">
                                    Image 1 : <input type="file" id="uploadFile" name="uploadFile">
                                    <!-- <div class="select_img"><img src="" /></div> -->
                                </div>
                                <br />
<!--                                 <div class="file2">
                                    Image 2 : <input
                                    type="file" name="file" accept="image/*">
                                </div>
                                <br />
                                <div class="file3">
                                    Image 2 : <input
                                        type="file" name="file" accept="image/*">
                                </div> -->
                                
                            <div class="text-center">
                                <button type="submit" class="btn btn_primary text-uppercase" onclick="submit()">등록</button>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </section>
            <!-- contact_section - end
        ================================================== -->



        </main>
        <!-- main body - end
      ================================================== -->

<jsp:include page="../footer.jsp"></jsp:include>

<script type="text/javascript">
    
    	$(document).ready(function () {
    		
    		// URI로 넘어온 DATA
    		let data = <%=data%>;
    		console.log(data);
    		

    		// 업데이트일 때
    		if(data != null) {
    			//String을 다시 JSON 객체로 변환
    			let obj = JSON.parse(data);
    			console.log("obj 값===== ");
    			console.log(obj);
    			
    			//상품 카테고리(라디오 박스)
    			if(($('input[name="orderCate"]').val()) == "TO"){
    				this.checked = true;
    			} else if (($('input[name="orderCate"]').val()) == "TB") {
    				this.checked = true;
    			}
    			
    			
    			//상품 이름
    			$('#teaName').val(obj['teaInDB'].teaName);
    			//상품 가격
    			$('#teaPrice').val(obj['teaInDB'].teaPrice);
    			
    			//상품 이미지
    			$('')
    			
    			// 체크박스
    			let tagBase = obj['teaInDB'].tagBase;
        		let tagCaff = obj['teaInDB'].tagCaff;
        		let tagSeason = obj['teaInDB'].tagSeason;
        		let tagUser = obj['teaInDB'].tagUser;
        		let tagTaste = obj['teaInDB'].tagTaste;
        		let tagEff = obj['teaInDB'].tagEff;
        		let tagBlend = obj['teaInDB'].tagBlend;
        		let tagDrink = obj['teaInDB'].tagDrink;
    			
        		//베이스
        		if(tagBase != null) {
        			tagBase = tagBase.split(',');
        			$('input[name="tagBase"]').each(function(){
        				for(let i = 0 ; i < tagBase.length ; i++) {
        					if(this.value == tagBase[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		
        		//카페인
        		if(tagCaff != null) {
        			tagCaff = tagCaff.split(',');
        			$('input[name="tagCaff"]').each(function(){
        				for(let i = 0 ; i < tagCaff.length ; i++) {
        					if(this.value == tagCaff[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		// 계절
        		if(tagSeason != null) {
        			tagSeason = tagSeason.split(',');
        			$('input[name="tagSeason"]').each(function(){
        				for(let i = 0 ; i < tagSeason.length ; i++) {
        					if(this.value == tagSeason[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		//사용자
        		if(tagUser != null) {
        			tagUser = tagUser.split(',');
        			$('input[name="tagUser"]').each(function(){
        				for(let i = 0 ; i < tagUser.length ; i++) {
        					if(this.value == tagUser[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		//맛
        		if(tagTaste != null) {
        			tagTaste = tagTaste.split(',');
        			$('input[name="tagTaste"]').each(function(){
        				for(let i = 0 ; i < tagTaste.length ; i++) {
        					if(this.value == tagTaste[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		//효과
        		if(tagEff != null) {
        			tagEff = tagEff.split(',');
        			$('input[name="tagEff"]').each(function(){
        				for(let i = 0 ; i < tagEff.length ; i++) {
        					if(this.value == tagEff[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		//블랜드
        		if(tagBlend != null) {
        			tagBlend = tagBlend.split(',');
        			$('input[name="tagBlend"]').each(function(){
        				for(let i = 0 ; i < tagBlend.length ; i++) {
        					if(this.value == tagBlend[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		
        		//마시는 법
        		if(tagDrink != null) {
        			tagDrink = tagDrink.split(',');
        			$('input[name="tagDrink"]').each(function(){
        				for(let i = 0 ; i < tagDrink.length ; i++) {
        					if(this.value == tagDrink[i]) {
        						this.checked = true;
        					}
        				}
        			});	
        		} 
        		
        		
        		
    			
    		}
    		
    		$(".tagTO").show();
			$(".tagTB").hide();
			
			
    	});
    
    	$("input[name='orderCate']").change(function(){
    		if($(this).val() == "TO"){
    			$(".tagTO").show();
    			$(".tagTB").hide();
    			
    		} else if($(this).val() == "TB"){
    			$(".tagTB").show();
    			$(".tagTO").hide();
    			
    		}
    	});
    	
    	// 나중에 리팩토링해보기
/*     	function Checkbox_Check(param){
    		if(param != null) {
    			param = param.split(',');
    			$('input[name="' + param + '"]').each(function(){
    				for(let i = 0 ; i < param.length ; i++) {
    					if(this.value == param[i]) {
    						this.checked = true;
    					}
    				}
    			});
    			
    		}
    		
    	} */
    	
    	//
    	function submit(){
    		
    	$.ajax({
    		type: 'POST',
    		url: 'updateShop.do',
    		dataType: 'text',
    		data: $('#shopAdmin').serialize(),
    		
    		success: function(data){
    			alert(data);
    			window.location.href = "shopDetails.do";
    		},
    		error: function(e){
    			console.log(e);
    		}
    	});
    	}
    	

    
    </script>

</body>
</html>