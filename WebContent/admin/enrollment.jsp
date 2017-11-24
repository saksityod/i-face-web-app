<%@ page contentType="text/html; charset=UTF-8" %>
<link rel="stylesheet" href="css/jquery-ui.css">

<style>
.form-group {
    margin-bottom: 5px;
}

.table > tbody > tr > td{
	padding-bottom: 3px;
    padding-top: 3px;
}
.float-e-margins .btn {
    margin-bottom: 5px;
}

</style>

<div aria-hidden="true" role="dialog" tabindex="-1" id="enrollmentModal" class="modal inmodal" style="display: none;">
     <div class="modal-dialog modal-lg">
         <div class="modal-content animated flipInY">
             <div class="modal-header">
                 <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true"><i class="fa fa-times"></i></span><span class="sr-only">Close</span></button>
                 <h4 class="modal-title">ลงทะเบียน (Enrollment)</h4>
             </div>
             <div class="form-horizontal">
             <div class="modal-body">
                 <!-- content -->
                 
                 
		              <!--  <p>Sign in today for more expirience.</p> -->
		         <div class='row'>   
		         	<div class='col-lg-6'>
		         		<div class="form-group"><label class="col-lg-4 control-label">Picture</label>
		                   <div class="col-lg-8">
		                   
		                   
		                   		<form id='uploadForm' action="" enctype="multipart/form-data" method="post">
								   <INPUT id='flieEnrollment' type="file" name="file[]" multiple >
								   <INPUT style='display:none;'  type="submit"  value="Send"> 
								   <INPUT style='display:none;'  id='btnImageReset' type="reset">
								 </form>
								 
								 
		                   </div>
		               </div>
		         	</div>
		         </div>
		         <div class='row'>   
		         	<div id='listBlackListPicture' class='col-lg-12'  style='height:auto; padding:5px; display:none; background:#fcf8e3;margin-bottom:10px'>
		         		<img src='img/p18dos0n4l1t8iilgrkjifu1ro15.jpg' width="210px;">
		         		<img src='img/p18dos0n4l1t8iilgrkjifu1ro15.jpg' width="210px;">
		         		<img src='img/p18dos0n4l1t8iilgrkjifu1ro15.jpg' width="210px;">
		         		<img src='img/p18dos0n4l1t8iilgrkjifu1ro15.jpg' width="210px;">
		         	</div>
		         </div>
		         <div class='row'>   
		         	<div class='col-lg-6'>   
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Card ID<font color="red">*</font></label>
		
		                   <div class="col-lg-8"><input type="text" id='cardIdTxt' class="form-control" placeholder="Card ID"> 
		                   </div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">Passport ID</label>
		
		                   <div class="col-lg-8"><input type="text" id='passportIDTxt' class="form-control" placeholder="Passport ID"></div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Title</label>
		
		                   <div class="col-lg-8"><input type="text" id='titleTxt' class="form-control" placeholder="Title"></div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">First Name</label>
		
		                   <div class="col-lg-8"><input type="text" id='fristNameTxt' class="form-control" placeholder="First Name"></div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Last Name</label>
		
		                   <div class="col-lg-8"><input type="text" id='lastNameTxt' class="form-control" placeholder="Last Name"></div>
		               </div>
		         </div>
		         <div class='col-lg-6'> 
		               <div class="form-group"><label class="col-lg-4 control-label">Gender</label>
		
		                   <div class="col-lg-8">
		                   	Male  <input type='radio' id='genderM' name='genderTxt' checked class='genderTxt' value='M'>
		                   	Female<input type='radio' id='genderW' name='genderTxt' class='genderTxt' value='F'>
		                   </div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Nationality</label>
		
		                   <div class="col-lg-8"><input type="text" id='nationalityTxt' class="form-control" placeholder="Nationality"></div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Date of Birth</label>
		
		                   <div class="col-lg-8"><input type="text" id='dateOfBirthTxt' class="form-control" placeholder="Date of Birth"></div>
		               </div>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">Religion</label>
		
		                   <div class="col-lg-8"><input type="text" id='religionTxt' class="form-control" placeholder="Religion"></div>
		               </div>
		                <div class="form-group"><label class="col-lg-4 control-label">Address</label>
		
		                   <div class="col-lg-8">
		                   <textarea class="form-control" id='addressTxt' placeholder="Address"></textarea>
		                   </div>
		               </div>
		                <div class="form-group"><label class="col-lg-4 control-label"  style='padding-top:2px'>Active </label>
		
		                   <div class="col-lg-8">
		                   
		                  
		                   <input type="checkbox" checked='checked' id="activeTxt">
		                   </div>
		               </div>
		          </div>
		          </div>     
		               
		     
                 <!-- -content -->
             </div>
             <div class="modal-footer">
             	<input type='hidden' name='actionEnrollment' id='actionEnrollment' value='add'>
             	<input type='hidden' name='idEnrollment' id='idEnrollment' value=''>
             	<button class="btn btn-primary" id='btnSubmit' type="button">Save</button>
             	<button class="btn btn-warning" id='btnReset' type="reset">Clear</button>
                <button data-dismiss="modal" class="btn btn-white" type="button">Close</button>
                 
                 
             </div>
             
              </div>
         </div>
     </div>
 </div>
                            






<div class='row'>
	        	<div class="col-lg-12">
                   <div class="ibox float-e-margins">
                       <div class="ibox-title">
                           <h5>ลงทะเบียน (Enrollment)</h5>
                           
                           
                       </div>
                       <div class="ibox-content">
                       
                       
                       <div class="row">
                       		<!-- 
			                 <form class="form-inline" role="form" style='margin-bottom:5px'>
                               
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputPassword2">Search</label>
                                    <input type="text" class="form-control" id="exampleInputPassword2" placeholder="Search">
                                </div>
                                
                                <button  style='margin-bottom:0px' type="submit" class="btn btn-primary">Search</button>
                            </form>
                             -->
                            <button id='addEnrollment' class="btn btn-primary">
                            <i class='fa fa-plus-square'></i>
                            	ลงทะเบียน
                            </button>
			             
			             
                           <table class="table table-hover no-margins  ">
                               <thead>
                               
                               <tr>
                               <!-- 
                               		<th style='background:#fcf8e3; text-align:center;' >
                                   Picture
                                   </th>
                                    -->
                                    <th style='background:#fcf8e3; width:5%;'>
                                   	Title
                                   </th>
                                   <th style='background:#fcf8e3; width:15%;'>
                                  	Full Name
                                   </th>
                                   <th style='background:#fcf8e3; width:10%;'>
                                   	Gender
                                   </th>
                                   <th style='background:#fcf8e3; width:10%;'>
                                   	Card ID
                                   </th>
                                   <th style='background:#fcf8e3; width:10%;'>
                                   	Passport ID
                                   </th>
                                                          
                                   <th style='background:#fcf8e3; width:10%;'>
                                   	Nationality
                                   </th>
                                   <th style='background:#fcf8e3; width:10%;'>
                                   	Birth of Date
                                   </th>
                                   <th style='background:#fcf8e3; text-align:center; width:10%;'>Manage</th>
                                   
                               </tr>
                               </thead>
                               <tbody id="listDataEnrollmentArea">

                               </tbody>
                           </table>
                       </div>
                   </div>
               </div>
	        </div>
        </div>
        
  <script src="../Controller/cEnrollment.js"></script>      