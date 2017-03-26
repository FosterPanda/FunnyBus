<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		
			    <div class="container">
							<div class="row">
							<br>
								<div class="col-md-4 col-sm-4">
									<form:form class="form-horizontal comentar" action="/reviews" method="POST" modelAttribute="review">
											<div class="col-md-12 col-sm-12 text-center">
											<h3>Додати коментар</h3>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-5 col-sm-5 ">
															<label  class="col-sm-2 control-label">Імя</label>
														</div>
														<div class="col-md-5 col-sm-5 ">
															<label  class="col-sm-2 control-label">Прізвище</label>
														</div>
												</div>
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-md-5 col-sm-5 ">
															<form:input class="form-control" path="firstName" id="firstName"/>
														</div>
														<div class="col-md-7 col-sm-7 ">
															<form:input class="form-control" path="secondName" id="secondName"/>
														</div>
													</div>
												</div>
												
												<div class="form-group">
													<div class="col-md-12 col-sm-12 ">
															<label  class="text-left">Коментарі</label>
														</div>
															<form:input class="form-control" path="text" id="text"/>
														
												</div>
												<div class="form-group">
							    					<div class="col-sm-offset-2 col-sm-10">
							      						<button type="submit" class="btn btn-default"  onclick="wow()">Додати</button>
							    					</div>
							  					</div>
												</form:form>
												<script>
											        function wow(){
											            alert("Ви успішно додали коментар");
											        }
											    </script>
								</div>
								<div class="col-md-8 col-sm-8">
									<div class="col-md-12 col-sm-12 text-center">
											<h3>Коментар</h3>
											</div>
											<div class="col-md-12 col-sm-12 ">
												<br>
												</div>
								<c:forEach items="${page.content}" var="review">
										<div class="col-md-12 col-sm-12">
											<div class="col-md-4 col-sm-4">${review.user.firstName} ${review.user.secondName}</div>
											<div class="col-md-offset-6 col-sm-offset-6 col-md-2 col-sm-2">${review.data}</div>
											<div class="col-md-12 col-sm-12 "></div>
											<div class="col-md-12 col-sm-12">${review.text}</div>
											<div class="col-md-12 col-sm-12 "><br></div>
										</div>
								</c:forEach>
								</div>
						</div>
					</div>
	
	

