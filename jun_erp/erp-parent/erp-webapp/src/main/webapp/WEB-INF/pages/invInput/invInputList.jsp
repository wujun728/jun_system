<%--

    Copyright 2020-2021 redragon.dongbin
 
    This file is part of redragon-erp/赤龙ERP.

    redragon-erp/赤龙ERP is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    redragon-erp/赤龙ERP is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with redragon-erp/赤龙ERP.  If not, see <https://www.gnu.org/licenses/>.
	
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%-- 导入面包屑 --%>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="wrapper wrapper-content animated fadeInRight">

    <%-- 导入提示信息框 --%>
    <c:if test="${hint!=null&&hint!=''}">
   		<jsp:include page="../common/alert/alert.jsp">
   			<jsp:param value="${hint}" name="alertType"/>
   			<jsp:param value="${alertMessage}" name="alertMessage"/>
   		</jsp:include>
    </c:if>
	
	<%-- 导入查询框 --%>
	<jsp:include page="search/invInputSearch.jsp"></jsp:include>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox ">
		        <div class="ibox-title">
		            <h4>入库单列表</h4>
		            <div class="ibox-tools">
		                <button id="addButton" class="btn btn-success btn-sm" type="button"><i class="fa fa-plus"></i>&nbsp;&nbsp;<span class="bold">新增入库单</span></button>
		                <button id="searchButton" class="btn btn-default btn-sm btn-notcontrol" type="button"><i class="fa fa-search"></i>&nbsp;&nbsp;展开查询</button>
		            </div>
		        </div>
				<div class="ibox-content border-bottom" style="padding-bottom: 0px;">
					<div class="table-responsive">
						<table class="table table-striped table-hover table-bordered border-top">
							<thead>
								<tr>
									<%-- 
									<th></th>
									--%>
									<th width="5%">序号</th>
									<th>入库单编码</th>
									<th>来源</th>
									<th>来源编码</th>
									<th>入库类型</th>
									<th>仓库</th>
									<th>入库时间</th>
									<th>制单人</th>
									<th>制单部门</th>
									<th>创建时间</th>
									<th width="5%">状态</th>
									<th width="7%">审批状态</th>
									<th width="10%">操作</th>
								</tr>
							</thead>
							<tbody>
							
							    <c:forEach items="${requestScope.invInputHeadList}" var="data" varStatus="status">
								<tr>
									<%-- 
									<td><input type="checkbox" class="i-checks"
										name="input[]"></td>
									--%>	
									<td>${status.count}</td>
									<td>${data.inputHeadCode}</td>
									<td>${requestScope.inputSourceTypeMap[data.inputSourceType]}</td>
									<td>${data.inputSourceHeadCode}</td>
									<td>${requestScope.inputTypeMap[data.inputType]}</td>
									<td>${requestScope.warehouseMap[data.warehouseCode].warehouseName}</td>
									<td><fmt:formatDate value="${data.inputDate}" pattern="yyyy-MM-dd"/></td>
									<td>${data.staffName}</td>
									<td>${data.departmentName}</td>
									<td><fmt:formatDate value="${data.createdDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
									<td>
									<c:choose>
									   <c:when test="${data.status=='NEW'}">
									       <span class="label label-primary">${requestScope.inputStatusMap[data.status]}</span>
									   </c:when>
									   <c:when test="${data.status=='CONFIRM'}">
									       <span class="label label-success">${requestScope.inputStatusMap[data.status]}</span>
									   </c:when>
									   <c:otherwise>
									       <span class="label label-danger">${requestScope.inputStatusMap[data.status]}</span>
									   </c:otherwise>
									</c:choose>
									</td>
									<td>
									<c:choose>
									   <c:when test="${data.approveStatus=='UNSUBMIT'}">
									       <span class="label">${requestScope.approveStatusMap[data.approveStatus]}</span>
									   </c:when>
									   <c:when test="${data.approveStatus=='SUBMIT'}">
									       <span class="label label-primary">${requestScope.approveStatusMap[data.approveStatus]}</span>
									   </c:when>
									   <c:when test="${data.approveStatus=='APPROVE'}">
									       <span class="label label-success">${requestScope.approveStatusMap[data.approveStatus]}</span>
									   </c:when>
									   <c:when test="${data.approveStatus=='REJECT'}">
									       <span class="label label-warning">${requestScope.approveStatusMap[data.approveStatus]}</span>
									   </c:when>
									</c:choose>
									</td>
									<td>
										<div class="btn-group">
											<button class="btn-white btn btn-xs btn-notcontrol" onclick="editData('${data.inputHeadCode}')"><i class="fa fa-edit"></i>&nbsp;编辑</button>&nbsp;
											<c:if test="${data.approveStatus!='APPROVE'&&data.approveStatus!='SUBMIT'}">
												<button class="btn-white btn btn-xs" onclick="deleteData(${data.inputHeadId},'${data.inputHeadCode}','${data.status}')"><i class="fa fa-trash"></i>&nbsp;删除</button>
											</c:if>
										</div>
									</td>
								</tr>
								</c:forEach>
								
							</tbody>
							<tfoot>
							    <%-- 导入页码 --%>
								<jsp:include page="../common/pages.jsp"></jsp:include>
							</tfoot>
						</table>
					</div>

				</div>
			</div>
		</div>
		
	</div>
</div>

<script type="text/javascript" src="js/listPage.js"></script>
<script>
	$(document).ready(function() {
		$("#addButton").click(function(){
		    window.location.href="web/invInputHead/getInvInputHead";
		});
	});
	
	function editData(code){
		window.location.href="web/invInputHead/getInvInputHead?inputHeadCode="+code;
	}
	
	function deleteData(id, code, status) {
		redragonJS.confirm("确认删除数据？", function(){
			window.location.href="web/invInputHead/deleteInvInputHead?inputHeadId="+id+"&inputHeadCode="+code+"&status="+status;
		});
	}
</script>       