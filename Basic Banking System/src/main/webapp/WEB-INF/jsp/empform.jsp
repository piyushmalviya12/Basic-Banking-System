<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<jsp:include page="header.jsp"></jsp:include>

		<h1>Transfer Money To</h1>
		<div class="container" align="center">
       <form:form method="post" action="save">  
      	<table class="table table-dark" >  
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>Amount :</td>  
          <td><form:input path="currentBalance" /></td>
         </tr> 
         <tr>  
          <td> </td>  
          <td><input  	 class="btn btn-success" type="submit" value="Transfer" /></td>  
         </tr>  
        </table>  
       </form:form>  
       </div>
