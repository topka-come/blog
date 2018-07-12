
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/admin/head.jsp"%>
<%@include file="../include/admin/nav.jsp"%>
<script>
    $(function () {
       $("form.editForm").submit(function () {
           var html = ue.getContent();
           console.log(html)
           $("#context_").attr('value', html);
           return true;
       }) ;
    });
</script>
<html>
<head>
    <title>编辑回复</title>
</head>
<body>
<div class="panel-warning" style="margin:160px  auto;width: 600px" align="center">
    <div class="panel-heading" align="center">回复编辑</div>
    <div class="panel-body panel-footer">
        <form class="editForm" method="post" action="admin_review_update">
            <table>
                <tr>
                    <td>评论内容</td>
                    <td>
                        <script id="container" name="container" type="text/plain">${r.context_}</script>
                        <input type="hidden" id="context_" name="context_" value="">
                        <%@include file="../include/admin/ueditor.jsp"%>
                        <input type="hidden" name="id" value="${r.id}">
                    </td>

                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="提交" class="btn-success"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
