<%@ page contentType="text/html; charset=UTF-8" %>
<link rel="stylesheet" href="css/jquery-ui.css">
<%
   
%>
<div class='row'>
	        	<div class="col-lg-12">
                   <div class="ibox float-e-margins">
                       <div class="ibox-title">
                           <h5>ประวัติ (History)</h5>
                           
                           
                       </div>
                       <div class="ibox-content">
                       
                       
                       <div class="row">
                       
			                 <div class="form-inline" role="form" style='margin-bottom:5px'>
                                <div class="form-group">
                                    <label class="sr-only" for="startDateHistory">Start Date</label>
                                    <input type="text" class="form-control" id="startDateHistory" placeholder="Start Date">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="endDateHistory">End Date</label>
                                    <input type="text" class="form-control" id="endDateHistory" placeholder="End Date">
                                </div>
                                
                                <button  style='margin-bottom:0px' id='btnSubmitHistory' type="submit" class="btn btn-primary"><i class='fa  fa-search'></i> Search</button>
                            </div>
			             
			            	<table class="table table-hover no-margins  ">
                               <thead>
                               
                               <tr>
                                   <th style='background:#fcf8e3;'>Date Time</th>
                                   
                                 
                                   <th style='background:#fcf8e3;'>
                                   	Title
                                   </th>
                                  
                                   <th style='background:#fcf8e3;'>
                                   	Full Name
                                   </th>
                                   
                                   <th style='background:#fcf8e3;'>
                                   Gender
                                   </th>
                                   
                                   <th style='background:#fcf8e3;'>
                                   	Card ID
                                   </th>
                                   
                                   <th style='background:#fcf8e3;'>
                                   	Passport ID
                                   </th>
                                   
                                   <th style='background:#fcf8e3;'>
                                   	Nationality
                                   </th>
                                   
                                   <th style='background:#fcf8e3;'>
                                   	Birth of Date
                                   </th>
                                  
                                   
                               </tr>
                               </thead>
                               <tbody id='listDataHistoryArea'>

                               </tbody>
                        </table>
                   </div>
               </div>
          </div>
	 </div>
 </div>
        
<script src="../Controller/cHistory.js"></script>     