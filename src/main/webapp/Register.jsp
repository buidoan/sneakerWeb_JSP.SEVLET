<%@  page language="java" contentType="text/html; charset=UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Register</title>
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
            
            .registerform {
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

        <form action="<%=request.getContextPath()%>/RegisterServlet" method="post">
            <div class="registerform">
                <h1>????ng Ki??</h1>
                <div class="wrap">
                    <label for="uname"><b>Ta??i khoa??n</b></label> <input type="text" name="uname" placeholder="Nh????p ta??i khoa??n" required><br>
                    <p class="text-danger">${mess}</p>

                    <label for="pword"><b>M????t kh????u</b></label> <input type="text" name="pword" placeholder="Nh????p m????t kh????u
            " required><br>
                    <label for="repword"><b>Nh????p la??i m????t kh????u</b></label> <input type="text" name="repword" placeholder="Nh????p la??i m????t kh????u
            " required><br>
                    <p class="text-danger">${mess1}</p>
                    <button type="submit">????ng Ki??</button>
                </div>
            </div>
        </form>
    </body>

    </html>