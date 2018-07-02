<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" href="../../css/bootstrap-select.min.css">
<script src="../../js/bootstrap-select.min.js"></script>
<html>
<script>
    function checkEmpty(id, message) {
        var value = $("#"+id).val();
        if (0==value.trim().length){
            alert(message + "不能为空");
            $("#"+id).focus();
            return true;
        }
        return false;
    }
 $(function () {
     $("a.deleteLink").click(function () {
         var value = $("a.deleteLink").attr("deletelink");
         console.log(value)
         if (value=="true"){
             console.log(111)
             var c = confirm("是否删除");
             if (c) return true;
             return false;
         }
         return true;
     });
 });
</script>
