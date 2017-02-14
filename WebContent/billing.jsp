
<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>

<!DOCTYPE html>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    width: 95%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 2px;
     
}


</style>

<SCRIPT language="javascript">
		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			var element1 = document.createElement("input");
			element1.type = "checkbox";
			element1.name="chkbox[]";
			cell1.appendChild(element1);
			

			/* var cell2 = row.insertCell(1);
			cell2.innerHTML = rowCount + 1; */

			var cell2 = row.insertCell(1);
			var element2 = document.createElement("input");
			element2.type = "text";
			element2.name = "txtbox[]";
			cell2.appendChild(element2);
			
			var cell3 = row.insertCell(2);
			var element3 = document.createElement("input");
			element3.type = "text";
			element3.name = "txtbox[]";
			cell3.appendChild(element3);
			
			var cell4 = row.insertCell(3);
			var element4 = document.createElement("input");
			element4.type = "text";
			element4.name = "txtbox[]";
			cell4.appendChild(element4);
			
			var cell5 = row.insertCell(4);
			var element5 = document.createElement("input");
			element5.type = "text";
			element5.name = "txtbox[]";
			cell5.appendChild(element5);
			
			var cell2 = row.insertCell(5);
			var element2 = document.createElement("input");
			element2.type = "text";
			element2.name = "txtbox[]";
			cell2.appendChild(element2);
			
			var cell2 = row.insertCell(6);
			var element2 = document.createElement("input");
			element2.type = "text";
			element2.name = "txtbox[]";
			cell2.appendChild(element2);
			
			


		}
		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		} 
		
		 function validateForm()
    {
    var a=document.forms["Form"]["answer_a"].value;
    var b=document.forms["Form"]["answer_b"].value;
    var c=document.forms["Form"]["answer_c"].value;
    var d=document.forms["Form"]["answer_d"].value;
    if (a==null || a=="",b==null || b=="",c==null || c=="",d==null || d=="")
      {
      alert("Please Fill All Required Field");
      return false;
      }
      
    }
     function goToOther(){
       window.transfer("contactus.jsp");

        }
    </script>

	</SCRIPT>
</head>

<body>
<form method="post" name="myform" id="myform" action="" >
<!-- div id="banner" class=captions>
<table>
<tr>
<td><input type="text" value="submit" style="padding: 2px 2px" ></td>
 <th>ItemCode</th>
 <th>ItemDescription</th>
 <th>ItemPrice</th>
  <th>PromoPrice</th>
  <th>Quantity</th>
  <th>Total</th>
</tr> -->
<!-- <tr>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
<td><div style="padding-right: 3px;"><input type="text" style="width:100%;"> </div></td>
</tr> -->
<div id="banner" class=captions align="left">
<TABLE id="dataTable" >
<tr>
<!-- <td><input type="text" value="submit" style="padding: 2px 2px" ></td> -->
<th>S.no</th>
 <th>ItemCode</th>
 <th>ItemDescription</th>
 <th>ItemPrice</th>
  <th>PromoPrice</th>
  <th>Quantity</th>
  <th>Total</th>
</tr>

<INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />

<INPUT type="button"  value="Next" style="position: absolute; right: 70; onclick="goToOther()"  />
		<TR>
			<!-- <TD><INPUT type="checkbox" name="chk"/></TD> -->
			<td><div ><input type="checkbox" style="width:100%;"></div> </td>
			<td><div ><input type="text" style="width:100%;"> </div></td>
			<td><div ><input type="text" style="width:100%;"> </div></td>
			<td><div ><input type="text" style="width:100%;"> </div></td>
			<td><div ><input type="text" style="width:100%;"> </div></td>
			<td><div><input type="text" style="width:100%;"> </div></td>
			<td><div ><input type="text" style="width:100%;"> </div></td>
		</TR>
	</TABLE>
	<div align="center"><tr>Grand_Total <td><INPUT type="text" value="" /></td></tr>
	</div>

</div>

</form>
</body>

<p></p><p></p><p></p>
						
<jsp:include page="footer.jsp"></jsp:include>
</html>
</div>
