<%-- 
    Document   : index
    Created on : Sep 16, 2015, 12:18:31 PM
    Author     : Yubaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="Content-Language" content="English" />
            <style type="text/css">
                /*style css*/
                * {
                    padding: 0;
                    margin: 0;
                } 

                body {
                    background: #4c320d;
                    font-family: Verdana, Arial, Helvetica, sans-serif;
                    font-size: 11px;
                    line-height: 18px;
                    color: #333333;;
                }
                .login-form{
                    border-radius: 5px;
                    margin: 200px auto auto 350px;
                    padding: 15px;
                }

                /*form css*/
                .form-style{
                    max-width: 550px;
                    font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                    padding-left: 25px;
                }
                .form-style label{
                    display:block;
                    margin-bottom: 10px;
                }
                .form-style label > span{
                    float: left;
                    width: 100px;
                    color: #F072A9;
                    font-weight: bold;
                    font-size: 13px;
                    text-shadow: 1px 1px 1px #fff;
                }
                .form-style fieldset{
                    border-radius: 10px;
                    -webkit-border-radius: 10px;
                    -moz-border-radius: 10px;
                    margin: 0px 0px 10px 0px;
                    border: 1px solid #FFD2D2;
                    padding: 20px;
                    background: #FFF4F4;
                    box-shadow: inset 0px 0px 15px #FFE5E5;
                    -moz-box-shadow: inset 0px 0px 15px #FFE5E5;
                    -webkit-box-shadow: inset 0px 0px 15px #FFE5E5;
                }
                .form-style fieldset legend{
                    color: #FFA0C9;
                    border-top: 1px solid #FFD2D2;
                    border-left: 1px solid #FFD2D2;
                    border-right: 1px solid #FFD2D2;
                    border-radius: 5px 5px 0px 0px;
                    -webkit-border-radius: 5px 5px 0px 0px;
                    -moz-border-radius: 5px 5px 0px 0px;
                    background: #FFF4F4;
                    padding: 0px 8px 3px 8px;
                    box-shadow: -0px -1px 2px #F1F1F1;
                    -moz-box-shadow:-0px -1px 2px #F1F1F1;
                    -webkit-box-shadow:-0px -1px 2px #F1F1F1;
                    font-weight: normal;
                    font-size: 12px;
                }
                .form-style textarea{
                    width:250px;
                    height:100px;
                }
                .form-style input[type=text],
                .form-style input[type=password],
                /*.form-style input[type=radio],*/
                .form-style input[type=date],
                .form-style input[type=datetime],
                .form-style input[type=number],
                .form-style input[type=search],
                .form-style input[type=time],
                .form-style input[type=url],
                .form-style input[type=email],
                .form-style select, 
                .form-style textarea{
                    border-radius: 3px;
                    -webkit-border-radius: 3px;
                    -moz-border-radius: 3px;
                    border: 1px solid #FFC2DC;
                    outline: none;
                    color: #F072A9;
                    padding: 5px 8px 5px 8px;
                    box-shadow: inset 1px 1px 4px #FFD5E7;
                    -moz-box-shadow: inset 1px 1px 4px #FFD5E7;
                    -webkit-box-shadow: inset 1px 1px 4px #FFD5E7;
                    background: #FFEFF6;
                    width:50%;

                }
                .form-style  input[type=submit],
                .form-style  input[type=button]{
                    background: #EB3B88;
                    border: 1px solid #C94A81;
                    padding: 5px 15px 5px 15px;
                    color: #FFCBE2;
                    box-shadow: inset -1px -1px 3px #FF62A7;
                    -moz-box-shadow: inset -1px -1px 3px #FF62A7;
                    -webkit-box-shadow: inset -1px -1px 3px #FF62A7;
                    border-radius: 3px;
                    border-radius: 3px;
                    -webkit-border-radius: 3px;
                    -moz-border-radius: 3px;	
                    font-weight: bold;
                }
                .form-style .required{
                    color:red;
                    font-weight:normal;
                }
                .form-style errorMessage{
                    color:red;
                    font-weight:normal;
                    padding-left: 5px;
                }
                .form-style errorMessage .radio-login-style{
                    padding-left: 96px;
                }
                .form-style errorMessage .errorMessage{
                    margin-left: auto;
                    margin-right: auto;
                }
            </style>
    </head>
    <body>
        <div  class="login-form">
            <jsp:include page="pages/login.jsp" />
        </div>
    </body>
</html>