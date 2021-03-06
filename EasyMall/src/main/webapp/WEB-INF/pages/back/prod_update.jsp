<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
  <head>
	<style type="text/css">
		body{
			background: #F5F5F5;
		}
		h1{
			text-align: center;
		}
		table{
			margin: 0px auto;
		}
  	</style>
  </head>
  <body>
	<h1>EasyMall添加商品</h1>
	<hr>
	<form action="${app}/pages/back/update.action"
	   enctype="multipart/form-data" method="POST">
	   <input type="hidden" name="id" value="${prod.id }" >
		<table border="1" cellspacing="0" cellpadding="3" >
			<tr>
				<td>商品名称</td>
				<td><input type="text" name="name" value="${prod.name }"/></td>
			</tr>
			<tr>
				<td>商品单价</td>
				<td><input type="text" name="price" value="${prod.price }"/></td>
			</tr>
			<tr>
				<td>商品种类</td>
				<td>
					<select name="category">
						<option value="手机数码" 
						<c:if test="${prod.category=='手机数码' } selected="selected"</c:if>
						手机数码</option>
						<option value="电脑平板" 
							<c:if test="${prod.category=='电脑平板' } selected="selected"</c:if>
						电脑平板</option>
						<option value="家用电器" 
							<c:if test="${prod.category=='家用电器' } selected="selected"</c:if>
						家用电器</option>
						<option value="汽车用品"
							<c:if test="${prod.category=='汽车用品' } selected="selected"</c:if>
						汽车用品</option>
						<option value="食品饮料"
							<c:if test="${prod.category=='食品饮料' } selected="selected"</c:if>
						食品饮料</option>
						<option value="图书杂志"
							<c:if test="${prod.category=='图书杂志' } selected="selected"</c:if>
						图书杂志</option>
						<option value="服装服饰"
							<c:if test="${prod.category=='服装服饰' } selected="selected"</c:if>
						服装服饰</option>
						<option value="理财产品"
							<c:if test="${prod.category=='理财产品' } selected="selected"</c:if>
						理财产品</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>库存数量</td>
				<td><input type="text" name="pnum" value="${prod.pnum}"/></td>
			</tr>
			<tr>
				<td>商品图片</td>
				<td><input type="file" name="imgurl"/></td>
			</tr>
			<tr>
				<td>描述信息</td>
				<td><textarea cols="35" rows="6" name="description"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="添加商品"/></td>
			</tr>
		</table>
	</form>
	<hr>
  </body>
</html>
