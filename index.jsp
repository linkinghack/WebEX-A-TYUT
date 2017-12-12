<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <title>Linking's Resume</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/script.js"></script>
</head>

<body>
    <div class="row-container main">
        <div class="left col-container">
            <div class="divbtn"><span>Me</span></div>
            <div class="divbtn"><span>Projects</span></div>
            <div class="divbtn"><span>Skills</span></div>
            <div class="divbtn"><span>Contact</span></div>
        </div>
        <div class="right col-container">
            <div class="me" id="me" name="content">
                <div class="tx">
                    <img src="img/tx.png">
                </div>
                <div class="welcome">
                    <p>Hi, I'm
                        <span class="name">Liu Lei</span>
                    </p>
                    <div class="line"></div>
                    <p class="briefIntro">
                        An undergraduate student at TaiYuan University of Technology,
                        <br> A web developer,
                        <br> And a photographer.
                    </p>
                </div>
            </div>

            <div class="col-container projects" id="projects" name="content">
                <ul>
                    <li>
                        <div class="title">理工助手+ (微信小程序)</div>
                        <pre class="brief">
    主要技术手段:
    Java:
        HttpClient + Jsoup DOM操作
        tesseract API 光学文字识别(自训练模型)
        基于Spring 提供REST风格web api
        借助Redis实现单点登录系统(方便后续服务扩充)
        Mybatis 数据关系映射
        MongoDB 存储用户主要数据(查询成绩的结果)
    Server:
        python + 某开源vpn工具 全天候VPN断线自动重连
                        </pre>
                    </li>

                </ul>

            </div>

            <div class="skills" id="skills" name='content'>
                <div class="col-container">
                    <ul>
                        <li>NodeJS server side developing</li>
                        <li>JavaEE server side developing(Spring + SpringMVC+ MyBatis)</li>
                        <li>Web Front-End developing(AngularJS + BootStrap)</li>
                        <li>Basic of NoSQL (MongoDB, Redis)</li>
                        <li>Fundamental Machine Learning algorithms(LinearRegression , LogisiticRegression etc.)</li>
                    </ul>
                </div>
            </div>

            <div class="contact" id="contact" name='content'>
                <div class="normal-contact">
                    <ul>
                        <li class="mail"><img src="img/mail.png">Mail: <a href="mailto:linking@linkinghack.com">linking@linkinghack.com</a></li>
                        <li class="phone"><img src="img/phone.png">Phone: <span class="phone-num">18235101905</span></li>
                        <li class="web"><img src="img/web.png">Blog: <a href="https://linkinghack.com">linkinghack.com</a></li>
                        <li class="github"><img src="img/github.png">GitHub: <a href="https://github.com/linkinghack">github.com/linkinghack</a></li>
                        <li class="weChat"><img src="img/wechat.png">WeChat: linking-hack </li>
                    </ul>
                    <img id='wxqr' src="img/wx-qrcode.jpg">
                </div>

                <div class="line"></div>

                <div class="leave-message">
                    <fieldset>
                        <legend>leave a message</legend>
                        <form id="messageForm" action="recive.jsp" method="post" onsubmit="return check()">
                            <div class="sender">
                                <span>您的名字:</span><input id="nameinput" type="text" name="guestName" required="required"><br>
                                <span>您的邮箱:</span><input id="mailinput" type="text" name="guestMail" required="required"><br>
                                <span>留言:</span><textarea id="messageinput" name="message" cols="20" rows="5" maxlength="500" required="required"></textarea><br>
                                <span></span><button id="submitbtn">提交</button>
                            </div>
                        </form>
                    </fieldset>
                    
                    <div class="col-container messages">
                        <div class="title">Messages:</div>
                        <%--<div class="message">--%>
                            <%--<div class="guestName">name</div>--%>
                            <%--<div class="guestMail">mail</div>--%>
                            <%--<div class="messageText">text</div>--%>
                        <%--</div>--%>
                        <jsp:include page="message.jsp"></jsp:include>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <script>
        var contents = document.getElementsByName('content');
        //初始化右边内容显示，仅显示第一分区
        for (var i = 1; i < contents.length; i++) {
            contents[i].style.display = 'none';
        }

        var btns = document.getElementsByClassName('divbtn');
        console.log(btns);
        console.log(btns.length);
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener('click', switchTag, false);

            // e.addEventListener('click',switchTag,false);
        }
    </script>
</body>

</html>