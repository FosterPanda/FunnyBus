<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
<div class="row">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
			<div class="container">
				<div class="col-md-offset-1 col-md-10">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/admin/new">Новини</a></li>
					<li><a href="/admin/aid">Допомога біцям АТО</a></li>
					<li><a href="/admin/act">Акції</a></li>
					<li><a href="/admin/moderating">Відгуки</a></li>
					<li><a href="/admin/bus">Автобусні</a></li>
					<li class="active"><a href="/admin/micro">Мікроавтобус</a></li>
				</ul>
				</div>
				</div>
			</div>
		</div>
	</nav>
</div>

<div class="container">
			<div class="col-md-12 col-xs-12">
				<form:form class="form-horizontal " action="/admin/new" method="POST" modelAttribute="nev" enctype="multipart/form-data">
					<div class="form-group">
    					<label for="title" class="col-sm-2 col-md-2  control-label">Заголовок</label>
    					<div class="col-sm-10 col-md-10 ">
      						<form:input class="form-control" path="title" id="title"/>
    					</div>
  					</div>
					<div class="form-group">
    					<label for="info" class="col-sm-2 control-label">Зміст</label>
    					<div class="col-sm-10">
      						<form:input class="form-control" path="info" id="info"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="file" class="col-sm-2 control-label">Зображення</label>
    					<div class="col-sm-10">
      						<input name="file" id="file" type="file">
    					</div>
  					</div>
  					<div class="form-group">
    					<div class="col-sm-offset-2 col-sm-10">
      						<button type="submit" class="btn btn-success">Додати</button>
    					</div>
  					</div>
				</form:form>
			</div>
		<div class="row">
			<div class="col-md-2 col-xs-2 col-md-offset-1 col-xs-offset-1"><h3>Зображення</h3></div>
			<div class="col-md-1 col-xs-1"><h3>Дата</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Заголовок</h3></div>
			<div class="col-md-4 col-xs-4"><h3>Зміст</h3></div>
			<div class="col-md-1 col-xs-1"><h3>Оновити</h3></div>
			<div class="col-md-1 col-xs-1"><h3>Видалити</h3></div>
		</div>
			<c:forEach items="${page.content}" var="nev">
				<div class="row">
					<div class="col-md-2 col-xs-2 col-md-offset-1 col-xs-offset-1"><img src="/images/new/${nev.id}.jpg?version=${nev.version}" width="100%"></div>
					<div class="col-md-1 col-xs-1">${nev.data}</div>
					<div class="col-md-2 col-xs-2">${nev.title}</div>
					<div class="col-md-4 col-xs-4">${nev.info}</div>
					<div class="col-md-1 col-xs-1"><a class="btn btn-warning" href="/admin/new/update/${nev.id}">оновити</a></div>
  					<div class="col-md-1 col-xs-1"><a class="btn btn-danger" href="/admin/new/delete/${nev.id}">видалити</a></div>
				</div>
					<div class="col-md-12"><br></div>
			</c:forEach>
				<div class="row">
	<div class="col-md-12 col-xs-12 text-center">
		<custom:pageable page="${page}" cell="<li></li>" container="<ul class='pagination'></ul>" />
	</div>
</div>
		
	</div>
				