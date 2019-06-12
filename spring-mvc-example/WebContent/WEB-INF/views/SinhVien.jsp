<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Display Selected HTML Table TR Values In Input Text</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <style>
            table tr:not(:first-child){
                cursor: pointer;transition: all .25s ease-in-out;
            }
            table tr:not(:first-child):hover{background-color: #ddd;}
            .readtext {
			color: red;
		}
			.xyz{
			          
			     float: right;
			     padding-right: 50%;
			     ma
			}
			.xy{
			          
			     float: right;
			     padding-right: 5%;
			     ma
			}
			.abc{
			     float: left;
			     font-weight: bold;
			     
			       }  
			 .login
				{
				    background-color:#85B561;
				    height:auto;
				    width:450px;
				    font-family:Verdana, Arial, Helvetica, sans-serif;
				    font-size:14px;
				    padding-bottom:5px;
				    display:none;
				    overflow:hidden;
				    position:absolute;
				    z-index:99999;
				    top:10%;
				    left:50%;
				    margin-left:-300px;
				}
				 
				.login .login_title
				{
				    color:white;
				    font-size:16px;
				    padding:8px 0 5px 8px;
				    text-align:left;
				}
				 
				.login-content label {
				    display: block;
				    padding-bottom: 7px;
				}
				 
				.login-content span {
				    display: block;
				}
				.login-content
				{
				    padding-left:35px;
				    background-color:white;
				    margin-left:5px;
				    margin-right:5px;
				    height:auto;
				    padding-top:15px;
				    overflow:hidden;
				}
				 
				.img-close {
				    float: right;
				    margin-top:-43px;
				    margin-right:5px;
				    width: 20px;
				    height: 20px;
				    color: red;
				}
				.button{
				    display: inline-block;
				    min-width: 46px;
				    text-align: center;
				    color: #444;
				    font-size: 14px;
				    font-weight: 700;
				    height: 36px;
				    padding: 0px 8px;
				    line-height: 36px;
				    border-radius: 4px;
				    transition: all 0.218s ease 0s;
				    border: 1px solid #DCDCDC;
				    background-color: #F5F5F5;
				    background-image: -moz-linear-gradient(center top , #F5F5F5, #F1F1F1);
				    cursor: pointer;
				}
				.button:hover{
				     border: 1px solid #DCDCDC;
				    text-decoration: none;
				    -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
				    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
				    box-shadow: 0 2px 2px rgba(0,0,0,0.1);
				}
				.login input
				{
				    border:1px solid #D5D5D5;
				    border-radius:5px;
				    box-shadow:1px 1px 5px rgba(0,0,0,.07) inset;
				    color:black;
				    font:12px/25px "Droid Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
				    height:28px;
				    padding:0px 8px;
				    word-spacing:0.1em;
				    width:300px;
				}
				.submit-button{
				    display: inline-block;
				    padding: auto;
				    margin: 15px 75px;
				    width: 150px;
				}   
				.xyz1{
				    float: right;
				    padding-right: 5%;
				
				}
				.abc1{
				    float: left;
				    font-weight: bold;
				    padding-left: 2%
				}   
				#over {
				    display: none;
				    background: #000;
				    position: fixed;
				    left: 0;
				    top: 0;
				    width: 100%;
				    height: 100%;
				    opacity: 0.8;
				    z-index: 999;
				}
				a, a:visited, a:active{
				    text-decoration:none;
				}       
        </style>
        
    </head>
    <body>
    <center><h3 ><b>Thông tin Sinh Viên </b></h3> </center> 	
    <div class="xy">
	       <p><input class="form-inline mr-auto" type="text"  id="MaSV3" style="border-radius: 10px;width: 200px" maxlength="50" ">
           <button type="submit" class="btn btn-info" onclick=functionTimkiem()  >Tìm Kiếm</button>
           <button type="submit" class="btn btn-info" onclick=functionTrangChu()  >Trang Chủ</button>
           
           </p>
	</div>		
    <div class="example">
    <div class="container">
    <div class="row">				       
    <div align="center" >
	<table class="table">
		<tr style="color: red; background-color: white">
		</tr>
		<tr>
			<form action="#" method="post">
			<TD  style="background-color: white">
				 <div class="abc">
				 	<font  size="4" >
		                  <label style="padding-top: 0%;">Mã Sinh Viên :</label><br>
		                  <label style="padding-top: 5%">Họ Tên :</label><br>
		                  <label style="padding-top: 7%">Tuổi :</label><br>	           
		                  <label style="padding-top: 11%">Ngày Sinh :</label><br>
		                  <label style="padding-top: 11%">Giới Tính :</label><br>
		                  <label style="padding-top: 5%">SĐT :</label><br>
		                  <label style="padding-top: 3%">Địa Chỉ :</label><br>
	                </font>
	           	 </div>
	            <div class="xyz">
                    <p><input " class="form-inline mr-auto" type="text" name="MaSV" id="MaSV1" style="border-radius: 10px;width: 200px" maxlength="10" disabled="disabled" placeholder="Nhap vao MaSV">
                    </p>

	                <p><input class="form-inline mr-auto" type="text" name="Hoten" id="Hoten1" style="border-radius: 10px;width: 200px" maxlength="50" placeholder="Nhap vao ho ten">
				    </p>
				    <p><input class="form-inline mr-auto" type="number" name="Age" id="Age1" value="20" min="20" max="30"
				    style="border-radius: 10px;width: 200px"  placeholder="Nhap Tuoi SV">
	                </p>
	                <p><input class="form-inline mr-auto" size="40" type="date" name="Ngay" id="Ngay1"
	                	style="border-radius: 10px;width: 200px"> 
				   </p>
	                
	                <p><select class="form-inline mr-auto"  name="GioiTinh" id="GioiTinh1">
						<option>Nam</option>
						<option>Nu</option>
						</select>
                    </p>
					
					<p><input class="form-inline mr-auto" type="tel" name="SDT" id="SDT1" style="border-radius: 10px;width: 200px" maxlength="11"  placeholder="Nhap vao SDT">
					</p>
					<p><input class="form-inline mr-auto" type="text" name="DiaChi" id="DiaChi1" style="border-radius: 10px;width: 200px" maxlength="50" placeholder="Nhap vao dia chi">
                    </p>
	            </div>
	            </form>
			</TD>
		</tr>
	</table>	
	</div>
	
	<div class="login" id="login-box"> <CENTER> <h3>Thêm Sinh Viên</h3></CENTER>
	   	<a class="close" href="#"><img class="img-close" title="Close Window" alt="Close" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7m2_HOnA3aJub0WJTjB8WkemZIbOCO_OUrYSk02NK7e0Df2yA" /></a>
			<form class="login-content" action="#" method="post"><label class="username">
	    			<div >
	                 <div class="abc1">
	                          <label style="padding-top: 1%;">Mã Sinh Viên :</label>
	                          <label style="padding-top: 6%">Họ Tên :</label>
	                          <label style="padding-top: 8%">Tuổi :</label>       
	                          <label style="padding-top: 4%">Ngày Sinh :</label>
	                          <label style="padding-top: 4%">Giới Tính :</label>
	                          <label style="padding-top: 6%">SĐT :</label>
	                          <label style="padding-top: 4%">Địa Chỉ :</label>
	                          <buttontype="submit" class="btn btn-success" onclick=functionInser() style="background-color: red;margin-top: 9%;
	                          margin-bottom:9%;margin-left:130%" >Add</button>
	                </div>
	                <div class="xyz1">
	                     <p><input " class="form-inline mr-auto" type="text" id="MaSV2" style="border-radius: 10px;width: 200px" maxlength="10" placeholder="Nhap vao MaSV">
                    </p>

	                <p><input class="form-inline mr-auto" type="text"  id="Hoten2" style="border-radius: 10px;width: 200px" maxlength="50" placeholder="Nhap vao ho ten">
				    </p>
				    <p><input class="form-inline mr-auto" type="number" id="Age2" value="20" min="20" max="30"
				    style="border-radius: 10px;width: 200px"  placeholder="Nhap Tuoi SV">
	                </p>
	                <p><input class="form-inline mr-auto" size="40" type="date"  id="Ngay2"
	                	style="border-radius: 10px;width: 200px"> 
				   </p>
	                
	                <p><select class="form-inline mr-auto"  id="GioiTinh2">
						<option>Nam</option>
						<option>Nu</option>
						</select>
                    </p>
					
					<p><input class="form-inline mr-auto" type="tel"  id="SDT2" style="border-radius: 10px;width: 200px" maxlength="11"  placeholder="Nhap vao SDT">
					</p>
					<p><input class="form-inline mr-auto" type="text"  id="DiaChi2" style="border-radius: 10px;width: 200px" maxlength="50" placeholder="Nhap vao dia chi">
                    </p>
	                </div>
	                
	         </div>
	    </form>
	</div>
			<div>
				<a class="login-window button" href="#login-box"> <button  type="submit" class="btn btn-success" > ADD</button>	</a>			
                <button type="submit" class="btn btn-danger" onclick=functionEdit() style="background-color: red" >Edit</button>
			</div>
			<div id="div1">
					<table class="table" id="table1">
						<thead>
							<tr>
								<th>Mã Sinh Viên</th>
								<th>Họ Tên</th>
								<th>Tuổi</th>
								<th>Ngày Sinh</th>
								<th>Giới tính</th>
								<th>SDT</th>
								<th>Địa Chỉ</th>
								<th></th>
								
							</tr>
						</thead>
						<tbody id="content">
						</tbody>
					</table>
			    </div>
			    <div id="div2">
					<table class="table" id="table2">
						<thead>
							<tr>
								<th>Mã Sinh Viên</th>
								<th>Họ Tên</th>
								<th>Tuổi</th>
								<th>Ngày Sinh</th>
								<th>Giới tính</th>
								<th>SDT</th>
								<th>Địa Chỉ</th>
								<th></th>
								
							</tr>
						</thead>
						<tbody id="content1">
						</tbody>
					</table>
			</div>	
			</div>
		</div>
	</div>
	
	<hr>
	<center><form action="upload", method="post">
	<button type="submit" class="btn btn-info" onclick=functionuploadfile()  >uploadfile</button>
	</form></center>
         <script>
         $(document).ready(
                 
                function() {
                	$("#div2").hide();
                    $.ajax({
                        url : "user1",
                        type : "Get",
                        contentType : "application/json",
                        DataType : 'json',
                        success : function(res) {
                            var data = "";
                            for (var i = 0; i < res.length; i++) {
                                data += "<tr><td>" + res[i].masv + "</td><td>"
                                        + res[i].hoten + "</td><td>" + res[i].age
                                        + "</td><td>" + res[i].date + "</td><td>"
                                        + res[i].gioitinh + "</td><td>"
                                        + res[i].sdt + "</td><td>" + res[i].diachi
                                        + "</td><td>"
                                        +"<button type='submit' class='btn btn-warning' id='btnDelete' value ='"+res[i].masv+"' onclick=functionDelete('"+res[i].masv+"')>Delete</button>"+"</td></tr>";
                                $('#content').html(data);
                            }
                        },
                        error : function() {
                            alert("error occurred");
                        }
                    });
                });
         document.getElementById("table1").addEventListener("click", displaytable);
         function displaytable() {
        	 var table = document.getElementById('table1');
             
             for(var i = 1; i < table.rows.length; i++)
             {
                 table.rows[i].onclick = function()
                 {
                      //rIndex = this.rowIndex;
                      document.getElementById("MaSV1").value = this.cells[0].innerHTML;
                      document.getElementById("Hoten1").value = this.cells[1].innerHTML;
                      document.getElementById("Age1").value = this.cells[2].innerHTML;
                      document.getElementById("Ngay1").value = this.cells[3].innerHTML;
                      document.getElementById("GioiTinh1").value = this.cells[4].innerHTML;
                      document.getElementById("SDT1").value = this.cells[5].innerHTML;
                      document.getElementById("DiaChi1").value = this.cells[6].innerHTML;
                 };
             }
        	}
         document.getElementById("table2").addEventListener("click", displaytable2);
         function displaytable2() {
        	 var table = document.getElementById('table2');
             
             for(var i = 1; i < table.rows.length; i++)
             {
                 table.rows[i].onclick = function()
                 {
                      //rIndex = this.rowIndex;
                      document.getElementById("MaSV1").value = this.cells[0].innerHTML;
                      document.getElementById("Hoten1").value = this.cells[1].innerHTML;
                      document.getElementById("Age1").value = this.cells[2].innerHTML;
                      document.getElementById("Ngay1").value = this.cells[3].innerHTML;
                      document.getElementById("GioiTinh1").value = this.cells[4].innerHTML;
                      document.getElementById("SDT1").value = this.cells[5].innerHTML;
                      document.getElementById("DiaChi1").value = this.cells[6].innerHTML;
                 };
             }
        	}
         
                	
         function functionDelete(id) { 
        	
				$.ajax({
					url: "delete/"+id,
					type: "post",
					contentType : "application/json",
		            DataType : 'json',
					
				    success : function(data){
				    	alert("Bạn đã xóa thành công ")
						location.reload(); 
				    },
				    error : function(){
						alert("error")
					}
		       });
             } 

         function functionInser() { 
        	 var MaSV1=$("#MaSV2").val();
             var Hoten1=$("#Hoten2").val();
             var Age1=$("#Age2").val();
             var Ngay1=$("#Ngay2").val();
             var GioiTinh1=$("#GioiTinh2").val();
             var SDT1=$("#SDT2").val();
             var DiaChi1=$("#DiaChi2").val();
             var insert = MaSV1+"_"+Hoten1+"_"+Age1+"_"+Ngay1+"_"+GioiTinh1+"_"+SDT1+"_"+DiaChi1;
				$.ajax({
					url: "inser/"+insert,
					type: "post",
					contentType : "application/json",
		            DataType : 'json',
                    
				    success : function(data){
					    if(data==0){
					    	alert("Bạn đã thêm thành công ")
						}
					    else{
					    	alert("Sinh Viên Đã Tồn Tại ")
						}
						location.reload(); 
				    	
				    },
				    error : function(){
						alert("error")
					}
		       });
             } 

         function functionEdit() { 
        	 var MaSV1=$("#MaSV1").val();
             var Hoten1=$("#Hoten1").val();
             var Age1=$("#Age1").val();
             var Ngay1=$("#Ngay1").val();
             var GioiTinh1=$("#GioiTinh1").val();
             var SDT1=$("#SDT1").val();
             var DiaChi1=$("#DiaChi1").val();
             var edit = ""+MaSV1+"_"+Hoten1+"_"+Age1+"_"+Ngay1+"_"+GioiTinh1+"_"+SDT1+"_"+DiaChi1;
				$.ajax({
					url: "edit1/"+edit,
					type: "post",
					contentType : "application/json",
		            DataType : 'json',
                    
				    success : function(data){
				    	alert("Bạn đã sửa thành công ")
						location.reload(); 
				    },
				    error : function(){
						alert("error")
					}
		       });
             } 
         function functionTimkiem(){
        	 $("#div1").hide();
        	 $("#div2").show();
        	 var MaSV1=$("#MaSV3").val();
        	 $.ajax({
					url: "timkiem/"+MaSV1,
					type: "post",
					contentType : "application/json",
		            DataType : 'json',
		            success : function(sv) {
			            if(sv.masv == MaSV1){
	                        var data = "";
	                            data += "<tr><td>" + sv.masv + "</td><td>"
	                                    + sv.hoten + "</td><td>" + sv.age
	                                    + "</td><td>" + sv.date + "</td><td>"
	                                    + sv.gioitinh + "</td><td>"
	                                    + sv.sdt + "</td><td>" + sv.diachi
	                                    + "</td><td>"
	                                    +"<button type='submit' class='btn btn-warning' id='btnDelete' onclick=functionDelete('"+sv.masv+"')>Delete</button>"+"</td></tr>";
	                            $('#content1').html(data); 
			            }
			            else{
			            	alert("Không Tìm Thấy Sinh Viên")
				        } 
                    },
				    error : function(){
						alert("Bạn Chưa Nhập Mã Sinh Viên")
					}
		       });
        	 
             }
         function functionTrangChu(){
        	 $("#div2").hide();
        	 $("#div1").show();
             }                     
    </script> 
    <script type="text/javascript">
     $(document).ready(function() {
     $('a.login-window').click(function() {
        //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
	        var loginBox = $(this).attr('href');
	 
	        //cho hiện hộp đăng nhập trong 300ms
	        $(loginBox).fadeIn(300);
	 
	        // thêm phần tử id="over" vào sau body
	        $('body').append('<div id="over">');
	        $('#over').fadeIn(300);
	 
	        return false;
	       });
	 
	       // khi click đóng hộp thoại
	       $(document).on('click', "a.close, #over", function() {
	       $('#over, .login').fadeOut(300 , function() {
	           $('#over').remove();
	       });
	      return false;
	      });
	      });
 </script>
    </body>
</html>