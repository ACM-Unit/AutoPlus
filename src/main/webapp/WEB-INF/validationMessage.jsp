<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <c:if test="${status ne null }">
                <c:choose>
                    <c:when test="${status eq 'successSendOrder'}">
                        <div style="color: green">Ваша заявка была успешно отправлена.
                        В течении 24 часов вам прийдет ответ.</div>
                    </c:when>
                    <c:when test="${status eq 'failToSendOrder'}">
                        Что-то не так.
                        Обновите страницу и попробуйте еще раз.
                    </c:when>
                    <c:when test="${status eq 'successSendOrderModal'}">
                        <div style="color: green">Ваша заявка была успешно отправлена.
                            В течении 24 часов вам прийдет ответ.</div>
                    </c:when>
                    <c:when test="${status eq 'failToSendOrderModal'}">
                        Что-то не так.
                        Обновите страницу и попробуйте еще раз.
                    </c:when>
                    <c:when test="${status eq 'successFreeCons'}">
                        <div style="color: green">Ваша заявка была успешно отправлена.
                            В течении 24 часов вам прийдет ответ.</div>
                    </c:when>
                    <c:when test="${status eq 'failToFreeCons'}">
                        Что-то не так.
                        Обновите страницу и попробуйте еще раз.
                    </c:when>
                </c:choose>
            </c:if>






