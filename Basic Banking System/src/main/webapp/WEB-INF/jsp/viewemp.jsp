    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<jsp:include page="header.jsp"></jsp:include>
<div class="container" align="center">
	<h1>User Details</h1>
	<table border="2" width="70%" cellpadding="2"  class="table table-striped">
	<thead>
	<tr><th>Id</th><th>Name</th><th>Email</th><th>Current Balance</th><th></th><th></th></tr> </thead>
    <c:forEach var="u" items="${list}"> 
    <tr>
    
    <td>${u.id}</td>
    <td>${u.name}</td>
    <td>${u.email}</td>
    <td>${u.currentBalance}</td> 
    <td><a class="btn btn-primary"  href="editemp/${u.id}"  role="button">SELECT</a></td>
    <td><a class="btn btn-primary" role="button" href="deleteemp/${u.id}">DELETE</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
   </div>
  
 