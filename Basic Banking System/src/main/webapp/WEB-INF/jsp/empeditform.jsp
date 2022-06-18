<jsp:include page="header.jsp"></jsp:include>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<div class="container" align="center">
	<h1>Transfer Money From</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Email</th><th>CurrentBalance</th></tr>
   
    <tr>
    <td>${command.id}</td>
    <td>${command.name}</td>
    <td>${command.email}</td>
    <td>${command.currentBalance}</td>
</tr>
    </table>
    <br/>
  <button> <a class="btn btn-primary"   href="empform" role="button">Transfer Money To</a> </button>
</div>
  
	
	<jsp:include page="footer.jsp"></jsp:include>
	