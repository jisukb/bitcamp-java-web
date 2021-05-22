<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>스토리 상세</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link href="../css/common.css" rel="stylesheet" >
</head>
<body>
<div class="container">
<h1>스토리 상세보기</h1>

<c:if test="${not empty story}">
<form action='update' method='post'>
<div class="mb-3 row">
    <label for="no" class="col-sm-1 col-form-label">번호</label>
    <div class="col-sm-7">
      <input type="text" class="form-control-plaintext" id="no" name="no" value='${story.no}'>
    </div>
  </div>
<div class="mb-3 row">
    <label for="title" class="col-sm-1 col-form-label">제목</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="title" name="title" value='${story.title}'>
    </div>
  </div>
  <div class="mb-3 row">
    <label for="url" class="col-sm-1 col-form-label">URL</label>
    <div class="col-sm-7">
      <input type="url" class="form-control" id="url" name="url" value='${story.url}'>
    </div>
  </div>
    <div class="mb-3 row">
    <label for="site" class="col-sm-1 col-form-label">사이트</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="site" name="site" value='${story.site}'>
    </div>
  </div>
  <div class="mb-3 row">
    <label for="registeredDate" class="col-sm-1 col-form-label">등록일</label>
    <div class="col-sm-7">
      <input type="text" class="form-control-plaintext" id="registeredDate" value='${story.registeredDate2}'>
    </div>
  </div>
      <input class="btn" style="background-color: #FFADAD;" type='submit' value='변경'>
      <a href='delete?no=${story.no}' class="btn btn-primary">삭제</a>
</form>
</c:if>

<c:if test="${empty story}">
<p>해당 번호의 스토리가 없습니다.</p>
</c:if>

<a href='list' class="btn btn-secondary">목록</a>
</div>
</body>
</html>
