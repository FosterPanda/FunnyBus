<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
 <content>
         <div class="container">
            <div class="col-md-12">
                <div class="lorem"> <b><h3><center>НОВИНИ</center></h3></b>
                <p>Тут ви можете слідкувати за усіма найцікавішими новинами нашого автобусу, а також ознайомлюватися з цікавими фактами про Чехію, дізнаватися про нововведення і інші новини. Заходьте сюди частіше, щоб бути вкурсі всього нового! 
                </p>
                </div>
            </div>
              <div class="col-md-12"><br><br></div>
             </div>
    </content>
   <div class="container">
<!--     <div class="row">
			
			<div class="col-md-1 col-xs-1"><h3>Дата</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Заголовок</h3></div>
			<div class="col-md-4 col-xs-4"><h3>Зміст</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Зображення</h3></div>
			</div> -->
    <c:forEach items="${page.content}" var="nev">
				<div class="row">
				
				<div class="col-md-9 col-sm-9">
			
					<div class="col-md-10 col-sm-10"><h4>${nev.title}</h4></div>
					<div class="col-md-2 col-sm-2"><div class="date"><h4>${nev.data}</h4></div></div><br>
					<div class="col-md-12 col-sm-12"><h4>${nev.info}</h4></div>
				</div>
				<div class="col-md-3 col-xs-3"><img src="/images/new/${nev.id}.jpg?version=${nev.version}" width="100%"></div>
				</div><br>
	</c:forEach>
				<div class="row">
	<div class="col-md-12 col-xs-12 text-center">
		<custom:pageable page="${page}" cell="<li></li>" container="<ul class='pagination'></ul>" />
	</div>
</div>
			</div>
		