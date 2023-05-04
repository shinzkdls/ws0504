<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    let marker_detail = {
        init: function () {
            $('#register_btn').click(function () {
                marker_detail.send();
            });
            $('#delete_btn').click(function () {
                var c = confirm("정말로 삭제 하시겠습니까?");
                if (c == true) {
                    location.href = "/marker/deleteimpl/?id=${gmarker.id}";
                }
            });
        },
        send: function () {
            $('#register_form').attr({
                method: 'post',
                action: '/marker/updateimpl',
                enctype: 'multipart/form-data'
            });
            $('#register_form').submit();
        }
    };

    $(function () {
        marker_detail.init();
    });
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Marker Detail</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">${gmarker.id}</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="">
                    <div class="container">
                        <hr>
                        <input type="hidden" name="id" value="${gmarker.id}">
                        <input type="hidden" name="img" value="${gmarker.img}">

                        <div>
                            <img src="/uimg/${gmarker.img}">
                        </div>

                        <label for="title"><b>Title</b></label>
                        <input type="text" value="${gmarker.title}" name="title" id="title" required>

                        <label for="target"><b>Target</b></label>
                        <input type="text" value="${gmarker.target}" name="target" id="target" required>

                        <label for="lat"><b>LAT</b></label>
                        <input type="text" value="${gmarker.lat}" name="lat" id="lat" required>

                        <label for="lng"><b>LNG</b></label>
                        <input type="text" value="${gmarker.lng}" name="lng" id="lng" required>

                        <label for="loc"><b>Loc</b></label>
                        <input type="text" value="${gmarker.loc}" name="loc" id="loc" required>

                        <label for="imgfile"><b>Image</b></label>
                        <input type="file" placeholder="Input Image" name="imgfile" id="imgfile" required>

                        <hr>

                        <button id="register_btn" type="button" class="registerbtn">Update</button>
                        <button id="delete_btn" type="button" class="deletebtn">Delete</button>
                    </div>
                </form>
            </div><!-- /.container-fluid -->
        </div>
    </div>
</div>

<style>
    * {
        box-sizing: border-box
    }

    /* Add padding to containers */
    .container {
        padding: 16px;
        width: 100%;
        height: 100%;
    }

    /* Full-width input fields */
    input[type=text], input[type=password], input[type=number], input[type=file] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Overwrite default styles of hr */
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* Set a style for the submit/register button */
    .registerbtn {
        background-color: #04AA6D;
        color: white;
        padding: 16px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    .deletebtn {
        background-color: #fc5a5a;
        color: white;
        padding: 16px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    .registerbtn:hover {
        opacity: 1;
    }

</style>
