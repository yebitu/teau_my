<%@ page import="java.util.List" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <!doctype html>
        <html lang="en">

        <head>

          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
          <meta http-equiv="x-ua-compatible" content="ie=edge">

          <title>씨앗 리뷰</title>
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
          <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
          <script type="text/javascript">
            $(document).ready(function () {

              //페이지 번호 이동
              $('#pagingDiv a').click(function (e) {
                e.preventDefault();
                $('#pageNum').val($(this).attr("href"));
                pagingForm.submit();

              });
            });
          </script>
          <style>
            #pagingDiv {
              background-color: #f6f6f6;
              text-align: center;

            }

            #pagingDiv a {
              border: 1px solid #e6e6e6;
              width: 35px !important;
              height: 35px !important;
              display: inline-block;
              font-size: 20px;
              align-items: center;
              justify-content: center;
              color: #999999;
            }
          </style>
        </head>


        <body>
          <%@include file="header.jsp" %>

            <!-- details_section - start
        ================================================== -->
            <form action="toBoard.do" method="post">
              <section class="details_section breadcrumb_section0919 blog_details sec_ptb_120 bg_default_gray"
                style="padding-bottom: 30px;">
                <div class="container">
                  <div class="container" style="padding-bottom: 5%;">
                    <h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s" style="margin-top: 50px;">씨앗
                      리뷰</h1>
                  </div>
                  <div class="row justify-content-md-right justify-content-sm-right">

                    <c:forEach items="${boardListO }" var="board">
                      <div class="col-lg-4 col-md-6" style="padding-bottom: 20px;">
                        <div class="details_content mb-0">
                          <div class="details_image wow fadeInUp" data-wow-delay=".1s">
                            <a href="boardViewer.do?boardId=${board.boardId }&boardImgm=${board.boardImgm}">
                              <img src="resource/imgUpload/${board.boardImgm }" alt="image_not_found"
                                style="height:300px">
                            </a>
                          </div>
                          <div class="wrap_space card">
                            <h2 class="details_title text-uppercase wow fadeInUp" data-wow-delay=".1s"><a
                                href="boardViewer.do?boardId=${board.boardId }&boardImgm=${board.boardImgm}">${board.boardTitle}
                              
                                <c:if test="${board.replyCount ne 0}">
								<small><b>[&nbsp;<c:out value="${board.replyCount}"/>&nbsp;]</b></small>
								</c:if>
                                
                                </a></h2>
                            <ul class="post_meta ul_li wow fadeInUp" data-wow-delay=".1s">
                              <li><a href="#!"><i class="fal fa-user"></i>${board.boardWriter }</a></li>
                              <li><i class="fal fa-calendar-alt"></i>${board.boardRegdate }</li>
                            </ul>

                            <p class="wow fadeInUp" data-wow-delay=".1s">
                              ${board.boardContent }
                            </p>
                          </div>
                        </div>
                      </div>

                    </c:forEach>
                    <div class="container">
                      <div class="row">
                      
                        <div class="col text-center">

                           <c:if test="${member.memberId == null }">
                            <a class="btn btn_primary text-uppercase" href="login.do"  style="float: right; margin-top: 2.5%;">글쓰기</a>
                          </c:if>
                          <c:if test="${member.memberId != null }">
                            <a class="btn btn_primary text-uppercase" href="boardCreateMove.do?boardCate=1"
                            style="float: right; margin-top: 2.5%;">글쓰기</a>
                          </c:if>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                </div>
              </section>
            </form>
            <div id="pagingDiv">
               <c:if test="${paging.prev}">
                <a href="${paging.startPage - 1 }">〈</a>
              </c:if>
              <c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage }">
                <c:if test="${paging.cri.pageNum == num }">
                <a href="${num }" style="background-color:#fd6c44; color:black;">${num }</a>
                </c:if>
                <c:if test="${paging.cri.pageNum != num }">
                <a href="${num }">${num }</a>
                </c:if>
              </c:forEach>
              <c:if test="${paging.next}">
                <a id="next" href="${paging.endPage + 1 }">〉</a>
              </c:if>
            </div>

            <form id="pagingFrm" name="pagingForm" action="toBoard.do" method="get">
              <input type="hidden" id="pageNum" name="pageNum" value="${paging.cri.pageNum }">
              <input type="hidden" id="amount" name="amount" value="${paging.cri.amount }">
            </form>
            <!-- details_section - end
        ================================================== -->

            </main>
            <!-- main body - end
      ================================================== -->

            <%@include file="footer.jsp" %>
        </body>

        </html>