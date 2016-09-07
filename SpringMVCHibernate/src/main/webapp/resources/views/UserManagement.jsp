<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <html>
  <head>  
    <title>AngularJS $http Example</title>   -->
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
   <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body class="ng-cloak"> -->
      <div class="generic-container">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="uctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="uctrl.user.id" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="uctrl.user.username" name="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Address</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="uctrl.user.address" class="form-control input-sm" placeholder="Enter your Address. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>
                       <div class="row">
                          <div class="form-group col-md-12">
		                              <label class="col-md-2 control-lable" for="file">Country</label>
		                              
		                    <select ng-model="uctrl.user.country" name="" class="select input-sm" ng-options="ctr.countryId as ctr.countryName for ctr in countryAccounts track by ctr.countryId" ng-change="GetValue(uctrl.user.country)">
									<option value="">--Select--</option>
								<!-- 	<option data-ng-repeat="ctr in countryAccounts" value={{ctr.countryId}} >{{ctr.countryName}}</option> -->
		    						
								</select>
								
								Selected Value is:{{uctrl.user.countryId}}
		 						</div>
                          </div>
 				<div class="row">
                          <div class="form-group col-md-12">
		                              <label class="col-md-2 control-lable" for="file">Groups</label>
		                              
		                    <select ng-model="uctrl.user.groups" name="" class="select input-sm" ng-options="ctr.id as ctr.name for ctr in groupAccounts track by ctr.id" ng-change="GetValue(uctrl.user.groups)">
									<option value="">--Select--</option>
								<!-- 	<option data-ng-repeat="ctr in countryAccounts" value={{ctr.countryId}} >{{ctr.countryName}}</option> -->
		    						
								</select>
								
								Selected Value is:{{uctrl.user.id}}
		 						</div>
                          </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="uctrl.user.email" name="email" class="email form-control input-sm" placeholder="Enter your Email" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>
                                      <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
 					
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!uctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="uctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                     </div>
                     </form>
                     
                </div>
               </div>
               </div>
                 <!--    {{usersList}}-->
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users </span></div>
          
              <div class="tablecontainer">
             
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Name</th>
                              <th>Address</th>
                              <th>Email</th>
                                <th>Country</th>
                              <th width="20%"></th>
                          </tr>
                      </thead>
                      <tbody>
                     
                          <tr ng-repeat="u in usersList">
                       
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.username"></span></td>
                              <td><span ng-bind="u.address"></span></td>
                              <td><span ng-bind="u.email"></span></td>
                                 <td><span ng-bind="u.country.countryName"></span></td>
                              <td>
                              <button type="button" ng-click="uctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="uctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
         
              
             
     
   
  <!--      
  </body>
</html> -->