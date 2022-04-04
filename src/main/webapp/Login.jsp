<%@  page language="java" contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Insert title here</title>
        <style type="text/css">
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            
            input[type=text],
            input[type=password] {
                width: 100%;
                padding: 12px 20px;
                border: 1px solid gray;
                margin: 8px;
                box-sizing: border-box;
            }
            
            .text-danger {
                color: white;
                background-color: red;
                border-radius: 3px;
            }
            
            button {
                background-color: #fe6233;
                color: white;
                padding: 14px 20px;
                margin: 8px 5px;
                border: none;
                cursor: pointer;
                width: 100%;
            }
            
            .loginform {
                padding: 20px;
              
                max-width: 55%;
                margin: 0 auto;
                border: 5px solid gray;
                text-align: center;
                 box-shadow: 5px 10px 10px #888888;
            }
            
            .relate {
                display: block;
            }
            
            .link {
                text-decoration: none;
                color: black;
            }
            
            .help {
                text-decoration: none;
                color: black;
            }
            
            .wrap {
                text-align: left;
            }
            
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
    </head>

    <body>

        <form action="<%=request.getContextPath()%>/LoginServlet" method="post">
            <div class="loginform">
                <h1>Đăng Nhập</h1>
                <div class="wrap">
                    <label for="uname"><b>Tài khoản</b></label>
                    <input type="text" name="uname" placeholder="Nhập tài khoản" required><br>

                    <label for="pword"><b>Mật khẩu</b></label>
                    <input type="password" name="pword" placeholder="Nhập mật khẩu
            " required><br>
                    <button type="submit">Đăng Nhập</button>
                    <p class="text-danger">${mess}</p>
                    <div class="relate">
                        <a class="link" href="Register.jsp">Bạn chưa có tài khoản??</a>
                        <a class="help" href="">Trợ giúp</a>
                    </div>
                </div>
            </div>
        </form>
    </body>

    </html>