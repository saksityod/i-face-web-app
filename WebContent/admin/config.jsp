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
    margin-bottom: 0px;
}

</style>	
                            






<div class='row'>
	        	<div class="col-lg-12">
                   <div class="ibox float-e-margins">
                       <div class="ibox-title">
                           <h5>ตั้งค่า (Config)</h5>
                           
                           
                       </div>
                       <div class="ibox-content">
                       
                        <!-- content -->
                 
                 
		          <div class="form-horizontal">
             <div class="modal-body">
                 <!-- content -->
                 
                 
		        

		         



		         
		         <div class="row">   
		         	<div class="col-lg-10 ">   
		              <!--  
		               <div class="form-group"><label class="col-lg-4 control-label">Parameter Key</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Parameter Key" class="form-control" id="paramKeyTxt"> 
		                   </div>
		               </div>
		               -->	
		               
		               


					   <h4>
		               Camera Config
		               </h4>
		               <hr>
		               <div class="form-group"><label class="col-lg-4 control-label">Profile Picture Path</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Profile Picture Path" class="form-control" id="profilePicturePathText"></div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">Matching Picture Path</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Matching Picture Path" class="form-control" id="matchingPicturePathText"></div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">Matching Confidence</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Matching Confidence" class="form-control" id="matchingConfidenceText"></div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">Camera IP</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Camera IP" class="form-control" id="cameraIPText"></div>
		               </div>
		               <!-- 
		               <h4>
		               Database Config
		               </h4>
		               <hr>
		               
		               <div class="form-group"><label class="col-lg-4 control-label">URL</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="URL" class="form-control" id="urlDbText"></div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">User name</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="User name" class="form-control" id="usernameDbText"></div>
		               </div>
		               <div class="form-group"><label class="col-lg-4 control-label">Password</label>
		
		                   <div class="col-lg-8"><input type="text" placeholder="Password" class="form-control" id="passwordDbText"></div>
		               </div>
		                -->
								               
		         </div>
		         
		          </div> 
		          <div>
		          	<div class='col-lg-10' style='text-align:right;'>
		          	
			          	<input type="hidden" value="add" id="actionConfig" name="actionConfig">
		             	<input type="hidden" value="" id="idConfig" name="idConfig">
		             	<button type="button" id="btnSubmitConfig" class="btn btn-primary">Save</button>
		             	
		              
		          	</div>
		          
		          </div>    
		               
		     
                 <!-- -content -->
             </div>
             
             
              </div>
		         
		       
                 		<!-- -content -->
                       
                       
                   </div>
               </div>
	        </div>
        </div>
        
  <script src="../Controller/cConfig.js"></script>      