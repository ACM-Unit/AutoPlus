<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="content-type" content="text/html" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>АВТО плюс - автосервіс Суми</title>
    <meta name="description" content="Бош Авто Сервіс &quot;АВТО плюс&quot; - краща станція технічного обслуговування для будь-яких марок постгарантійних авто у Сумах."/>
    <meta name="robots" content="noodp"/>
    <meta name="keywords" content="бош суми, bosch сервіс суми, bosch car service, автосервіс, ціни, автосервіс суми, сто суми, ремонт авто суми, сервіс, авто сервіс, авто сервис, діагностика авто, автосервіс у Сумах, сто сум"/>
    <link rel="canonical" href="//boschservice.lviv.ua/" />
    <meta property="og:locale" content="uk_UA" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Бош Авто Сервіс &quot;АВТО плюс&quot; - автосервіс Суми" />
    <meta property="og:description" content="Бош Авто Сервіс &quot;АВТО плюс&quot; - краща станція технічного обслуговування для будь-яких марок постгарантійних авто у Сумах." />
    <meta property="og:url" content="http://autoplus.sumy.ua/" />
    <meta property="og:site_name" content="Бош Авто Сервіс &quot;АВТО плюс&quot;" />

    <link rel="stylesheet" href="<c:url value="/style.css"/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value="/styleModal.css"/>" type="text/css" />
    <link rel="stylesheet" href="/js/owl-carousel/owl.carousel.css" type="text/css" />
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="https://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/owl-carousel/owl.carousel.min.js"></script>
    <script src="/js/jquery.knob.min.js"></script>
    <script src="/js/jquery.main.js" type="text/javascript" ></script>
    <style>
        #rememberheader {
            display: none;
        }
        #rememberbody {
            display: none;
        }
        #rememberfooter {
            display: none;
        }
    </style>
    <script>
        var current = 'page1';
        function show(id) {
            document.getElementById(current).style.display = 'none';
            document.getElementById(id).style.display = 'block';
            current = id;
        }
    </script>
    <script>
        function showremember(id, current) {
            document.getElementById(current+"header").style.display = 'none';
            document.getElementById(current+"body").style.display = 'none';
            document.getElementById(current+"footer").style.display = 'none';
            document.getElementById(id+"header").style.display = 'block';
            document.getElementById(id+"body").style.display = 'block';
            document.getElementById(id+"footer").style.display = 'block';
            current = id;
            $('#statusError').html(' ');
            $('#statusRecoverError').html(' ');
            $('input[name=email]').css('border', '1px solid #d7d7d7');
            $('input[name=email]').css('border-radius', '5px');
            $('input[name=j_password]').css('border', '1px solid #d7d7d7');
            $('input[name=j_password]').css('border-radius', '5px');
            $('input[name=j_username]').css('border', '1px solid #d7d7d7');
            $('input[name=j_username]').css('border-radius', '5px');
        }
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="../js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript">
        $.noConflict();
        jQuery(function($){
            $('#Phone1').mask('+38(999) 999-99-99');
            $('#PhoneFree').mask('+38(999) 999-99-99');
            $('#PhoneModal').mask('+38(999) 999-99-99');
            $('#PhoneTyres').mask('+38(999) 999-99-99');
        });
    </script>
    <script src="/js/requests.js" type="text/javascript" ></script>
    <style>#page2, #page3, #page3, #page4, #page5, #page6 {
        display: none;
    }
    </style>
</head>

<body>
<section style="width: 100%">
    <div id="Header">
        <div id="fixedheader">
        <div id="Logo"><a href="#"></a></div>
            <div id="LogoDealer"><img src="../images/dealerlogo.gif"></div>
            <div id="loginblock">
            <sec:authorize access="!isAuthenticated()">
                <span></span>
                <label class="btnlogin" id="loginn" for="modal-2">Вхід</label>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <span>логін: <sec:authentication property="principal.username"/></span>
                <a class="btnlogin" href="/logout">вихід</a>
            </sec:authorize>
            </div>
            <div id="Pfone">+38 (099) 104 61 56</div>
        <nav>
            <ul class="Menu">
                <li><a href="#Menu">Про нас</a></li>
                <li><a href="#OurWorks">Интернет магазин</a></li>
                <li><a href="#Menu">Послуги</a></li>
                <li><a href="#ReviewsAllBg">Наші клиєнти</a></li>
                <li><a href="#Contackts">Контакти</a></li>
            </ul>
        </nav>
        </div>
    </div>
</section>
<jsp:include page="${currentPage}" flush="true" />
<footer>
    <section>
        <div id="LogoBot"><a href="#"></a></div>
        <div id="NavBot">
            <ul>
                <li><a href="#Menu">Про нас</a></li>
                <li><a href="#OurWorks">Интернет магазин</a></li>
                <li><a href="#Menu">Послуги</a></li>
                <li><a href="#ReviewsAllBg">Наші клиєнти</a></li>
                <li><a href="#Contackts">Контакти</a></li>
            </ul>
        </div>
        <div id="TelBotFoot">+38 (099) 104-61-56</div>
        <div class="Clr"></div>
    </section>
</footer>
</body>



</html>
<div class="modal">
    <input class="modal-open" id="modal-2" type="checkbox" hidden>
    <div class="modal-wrap" aria-hidden="true" role="dialog">
        <label class="modal-overlay" for="modal-2"></label>
            <div class="modal-dialog" style="width: 300px;">
                <div id="auth">
                <div class="modal-header">
                    <div id="authheader">
                        <h2 id="myModalLabel">Вхід</h2>
                        <label class="btn-close" for="modal-2" aria-hidden="true"  onclick="closeModal()">×</label>
                    </div>
                    <div id="rememberheader">
                        <h2>відновлення паролю</h2>
                        <label class="btn-close" for="modal-2" aria-hidden="true"  onclick="closeModal()">×</label>
                    </div>
                </div>
                <div class="modal-body">
                    <div id="authbody">
                        <c:url value="/j_spring_security_check" var="loginUrl" />
                        <form:form id="enterform" method="POST" action="${loginUrl}">
                            <div id="NameModal"><input  type="text" name="j_username" placeholder="логін" value=""/></div>
                            <div id="PassModal"><input type="password" name="j_password" placeholder="пароль" value=""/></div>
                        </form:form>
                    </div>
                    <div id="rememberbody">
                        <form:form method="POST" id="recoverform" action="/recover-password">
                            <div id="NameModalrem"><input  type="text" name="email" placeholder="e-mail adresse" value=""/></div>
                        </form:form>
                    </div>
                </div>
                <div class="modal-footer">
                    <div id="authfooter">
                        <div class="Buttonlogin"><a  href="#login" onclick="enter()" >ok</a></div>
                        <div class="Buttonlogin ButtonRecover"><a href="#login" onclick="showremember('remember', 'auth'); return false;">Забули пароль?</a></div>
                        <c:if test="${error=='error'}">
                            <span style="display: inline-block; margin-top: 5px; width: 100%; text-align: right; color: red;" id="statusError" class="modalMessage">логін або пароль невірний</span>
                            <script>
                                $('#loginn').click();
                            </script>
                        </c:if>
                        <c:if test="${error!='error'}">
                            <span style="display: inline-block; margin-top: 5px; width: 100%; text-align: right; color: red;" id="statusError" class="modalMessage"></span>
                        </c:if>
                    </div>
                    <div id="rememberfooter">
                        <div class="confirmrem Buttonlogin"><a href="#login" onclick="recover()">відновити</a></div>
                        <div class="confirmremcancel Buttonlogin"><a href="#login" onclick="showremember('auth', 'remember'); return false;">назад</a></div>
                        <span style="display: inline-block; margin-top: 5px; width: 100%; text-align: right; " id="statusRecoverError" class="modalMessage"></span>
                    </div>
                </div>
                </div>
            </div>
    </div>
</div>
<div class="modalWaiting"></div>