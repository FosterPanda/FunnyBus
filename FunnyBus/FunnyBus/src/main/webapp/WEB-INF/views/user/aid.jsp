<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
 <content>
         <div class="container">
            <div class="col-md-12">
                <div class="lorem"> <b><h3><center>ДОПОМОГА БІЙЦЯМ АТО</center></h3></b>
                <p><center>На цій сторінці ви можете слідкувати за новинами пов'язаними із допомогою бійцям АТО!</center></p> 
                </div>
            </div>
              <div class="col-md-12"><br><br></div>
             </div>
    </content>
   <div class="container">
    <c:forEach items="${page.content}" var="aid">
				<div class="row">
				<div class="col-md-9 col-sm-9">
					<div class="col-md-10 col-sm-10"><h4>${aid.title}</h4></div>
					<div class="col-md-2 col-sm-2"><div class="date"><h4>${aid.data}</h4></div></div><br>
					<div class="col-md-12 col-sm-12"><h4>${aid.info}</h4></div>
				</div>
				<div class="col-md-3 col-xs-3"><img src="/images/aid/${aid.id}.jpg?version=${aid.version}" width="100%"></div>
				</div><br>
	</c:forEach>
				<div class="row">
	<div class="col-md-12 col-xs-12 text-center">
		<custom:pageable page="${page}" cell="<li></li>" container="<ul class='pagination'></ul>" />
	</div>
</div>
			</div>
		