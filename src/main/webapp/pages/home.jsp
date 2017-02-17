<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style>
    #cropimage{display: none}
    #submitcrop{display: none}

</style>
<div class="Clr"></div>
<section>
    <div id="BlockTop">
        <div id="DeskrTop">
            <img src="/images/BCSPylon.png">
        </div>
        <div id="FormDeskrTop">
            <form id="formOrder" action="" method="">
                <p>Оформ заявку на Тех. обслуговування прямо зараз</p>
                <input type="text" id="Name1" name="Name" placeholder="Ваше имя" />
                <input type="text" id="Phone1" name="Phone" placeholder="Ваш телефон" />
                <div class="form-group">
                    <input type="text" id="Email1" name="Email" placeholder="E-mail" />
                    <span id="validEmailIndexTest"></span>
                </div>
                <div id="ButtonFormDeskrTop"><a onclick="sendOrder()">Оформити заявку</a></div>
                <span style="display: block;" id="statusError" class="modalMessage"></span>
            </form>
        </div>
    </div>
</section>
<div id="BgSLiderSmal"></div>
<div id="SliderBlock">
    <div id="SliderBg">
        <div id="ListSlider">
            <div><img src="/images/Img.jpg"/></div>
            <div><img src="/images/Img1.jpg"/></div>
            <div><img src="/images/Img2.jpg"/></div>
            <div><img src="/images/Img3.jpg"/></div>
        </div>
        <div class="Clr"></div>
    </div>
</div>
<div id="MenuAll">
    <section>
        <div id="Menu">
            <div class="One"><a href="#" onclick="show('page1'); return false;"><p>Автоелектрик</p></a></div>
            <div class="One"><a href="#" onclick="show('page2'); return false;"><p>Ходова</p></a></div>
            <div class="One"><a href="#" onclick="show('page3'); return false;"><p>Техобслуговування</p></a></div>
            <div class="One"><a href="#" onclick="show('page4'); return false;"><p>Шиномонтаж</p></a></div>
            <div class="One"><a href="#" onclick="show('page5'); return false;"><p>Кузовний цех</p></a></div>
            <div class="One"><a href="#" onclick="show('page6'); return false;"><p>Додаткові послуги</p></a></div>
        </div>
        <div class="Clr"></div>
    </section>
</div>

<section>
    <div id="DescrMenu">
        <div id="page1"><div class="TxtDescr">
            <div class="TitleDescr">Автоелектрик</div>
            <div class="TextDescrBottom">
                <p>Електрообладнання автомобіля включає в себе ті деталі й елементи, робота яких залежить від електроенергії: стартер, генератор, система запалювання і система впорскування, а також система освітлення автомобіля. Це основні складові електрообладнання, але існує і ряд інших, другорядних деталей і систем, які споживають енергію.</p>
                <p>Цілком зрозуміло, що якщо з ладу вийде хоча б один елемент системи, то ваш автомобіль в кращому випадку буде давати збій в роботі силового агрегату, а в гіршому зупиниться і не зможе продовжити рух. Виявивши найменшу несправність у системі електрообладнання, не зволікайте з ремонтом.</p>
                <p>Фахівці "Авто плюс" визначать причину поломки і здійснять кваліфікований ремонт або заміну необхідних елементів.</p>
                <p>Встановлене у нас діагностичне обладнання фірми Bosch дозволяє проводити ремонт і діагностику системи електрообладнання всіх відомих марок машин.</p>
                <label class="btn" for="modal-1" onclick="submitName('Автоелектрик')">Записаться</label>
            </div>
        </div>
            <div class="ImgDescr"><img src="../images/BgMenu4.jpg"></div>
            <div class="Clr"></div>
        </div>
        <div id="page2"><div class="TxtDescr">
            <div class="TitleDescr">Ходова</div>
            <div class="TextDescrBottom">
                <p>Ходова частина перебуває в стані навантаження, навіть коли авто стоїть. Про порушення в її роботі свідчать зайві вібрації, сторонні стуки. Але навіть при відсутності ознак поломки діагностика ходової проводиться систематично: для вантажних автомобілів - через кожні 15 тис. Км. пробігу, для легкових - при кожній заміні машинного масла. Періодична перевірка і обслуговування обійдуться набагато дешевше, ніж ремонт ходової із заміною деталей і вузлів.</p>
                <p>Ходова частина автомобіля - це система, в якій пошкодження однієї деталі породжує миттєву ланцюгову реакцію поломок в інших. Аж до повної відмови системи.</p>
                <p>Діагностика ходової автомобіля включає перевірку:</p>
                <ul>
                    <li>наконечників рульових тяг;</li>
                    <li>сайлентблоков;</li>
                    <li>кульових опор;</li>
                    <li>амортизаторів;</li>
                    <li>гальмівних колодок;</li>
                    <li>зчеплення</li>
                </ul>
                <label class="btn" for="modal-1" onclick="submitName('Ходова')">Записаться</label>
            </div>
        </div>
            <div class="ImgDescr"><img src="../images/BgMenu1.jpg"></div>
            <div class="Clr"></div>
        </div>
        <div id="page3"><div class="TxtDescr">
            <div class="TitleDescr">Техобслуговування</div>
            <div class="TextDescrBottom">
                <p>Скористайтесь ноу-хау для діагностики, обслуговування та ремонту, якими володіє світова мережа Бош Авто Сервіс – світовий лідер обслуговування пост-гарантійних авто.</p>
                <p>Технічне обслуговування автомобіля – це комплекс операцій з підтримання авто в працездатному і належному вигляді, що забезпечує його надійність, економічність та вашу безпеку.</p>
                <p>ТО проводиться на підставі рекомендацій по експлуатації конкретного автомобіля та сервісних книжок, де вказується періодичність, перелік та порядок виконання робіт. Спеціалісти нашої станції навчені і мають доступ до всіх технічних даних і процедур обслуговування і ремонту вашого автомобіля.</p>
                <p>На Бош Авто Сервіс “Авто плюс” ви можете отримати для вашого авто свою Сервісну книжку (у разі її відсутності оригінального примірка від виробника авто). Завдяки її наявності ви завжди будете в курсі всіх необхідних робіт, проінформовані про дату заміни того тих чи іншого витратного матеріалу.</p>
                <p>Всі роботи такі, як технічний огляд транспортного засобу, перевірка, заміна масла і т.д. чітко задокументовані. Це також допоможе вам пізніше легше продати ваше авто, тому що сервісна книжка в наявності.</p>
                <label class="btn" for="modal-1" onclick="submitName('Техобслуговування')">Записаться</label>
            </div>
        </div>
            <div class="ImgDescr"><img src="../images/BgMenu2.jpg"></div>
            <div class="Clr"></div>
        </div>
        <div id="page4"><div class="TxtDescr">
            <div class="TitleDescr">Шиномонтаж</div>
            <div class="TextDescrBottom">
                <p>Шиномонтаж</p>
                <p><b>Монтаж шин</b> – одна за найважливіших операцій, лише правильне виконання якої гарантує довговічність шин, дисків та підвіски автомобіля. При невірному встановленні шини на диск можливі руйнування самої шини, пошкодження диска та зайве навантаження на підвіску, що може призвести до її завчасного виходу з ладу. Не встановлюйте шини на диск власноруч, цю роботу необхідно довірити професіоналам, які мають необхідні інструменти та великий досвід.</p><br>
                <p><b>Балансування коліс</b> – якщо колеса не відбалансовано, вони будуть передчасно і нерівномірно стиратися. Вібрація внаслідок незбалансованості коліс може також спричинити втому водія. Крім того, це може вплинути і на стан підвіски. Тому колеса слід правильно відбалансовувати, поки вони нові, а також після кожного ремонту. Балансування коліс слід завжди перевіряти, якщо під час руху було помічено щонайменшу вібрацію.</p><br>
                <p><b>Ремонт шин</b> дозволяє уникнути додаткових витрат, пов’язаних із придбанням нової шини замість пошкодженої, оскільки у більшості випадків пошкоджену шину можна відремонтувати. Висновок про ремонтопридатність може дати майстер нашої СТО.</p>
                <label class="btn" for="modal-1" onclick="submitName('Шиномонтаж')">Записаться</label>
            </div>
        </div>
            <div class="ImgDescr"><img src="../images/BgMenu3.jpg"></div>
            <div class="Clr"></div>
        </div>
        <div id="page5"><div class="TxtDescr">
            <div class="TitleDescr">Кузовний цех</div>
            <div class="TextDescrBottom">
                <p>Кузовний ремонт – це роботи з відновлення кузова автомобіля. Ремонт кузова включає в себе: рихтування, фарбування, полірування вашого авто.</p>
                <p>Рихтування автомобіля – це один із складних, трудомістких і дорогих процесів ремонту автомобіля. Пошкодження бувають легкі і складні.</p>
                <p>Легкі пошкодженнях це вм’ятини, вигини, розриви та інші ушкодження на одній деталі кузова, коли місця їх з’єднання (зварювання, гвинтове з’єднання) не пошкоджені. У такому випадку рихтується або міняється тільки одна деталь, що не вимагає додаткового розбирання і підгонки інших деталей. Деталь не розбирається від навісних компонентів (ручки, молдинги, поворотники і т.д.). Місця рихтування зачищаються від фарби до чистого металу. Після цього проводиться рихтування.</p>
                <p></p>
                <label class="btn" for="modal-1" onclick="submitName('Кузовний цех')">Записаться</label>
            </div>
        </div>
            <div class="ImgDescr"><img src="../images/BgMenu.jpg"></div>
            <div class="Clr"></div>
        </div>
        <div id="page6"><div class="TxtDescr">
            <div class="TitleDescr">Додаткові послуги</div>
            <div class="TextDescrBottom">
                <ul>
                    <li>Огляд вживаного авто перед купівлею</li>
                    <li>Автомийка</li>
                    <li>Страхування авто</li>
                </ul>
                <label class="btn" for="modal-1" onclick="submitName('Додаткові послуги')">Заказать</label>
            </div>

        </div>
            <div class="ImgDescr"><img src="../images/BgMenu5.jpg"></div>
            <div class="Clr"></div>
        </div>
    </div>
    <div class="modal">
        <input class="modal-open" id="modal-1" type="checkbox" hidden>
        <div class="modal-wrap" aria-hidden="true" role="dialog">
            <label class="modal-overlay" for="modal-1"></label>
            <form id="formModal" action="" method="">
                <div class="modal-dialog">
                    <div class="modal-header">
                        <h2 id="myModalLabel"></h2>
                        <label class="btn-close" for="modal-1" aria-hidden="true"  onclick="closeModal()">×</label>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="nameZ" id="nameZ" />
                        <input type="text" id="NameModal" name="NameModal" placeholder="Ваше имя" />
                        <input type="text" id="PhoneModal" name="PhoneModal" placeholder="Ваш телефон" />
                        <div class="form-group">
                            <input type="text" id="EmailModal" name="EmailModal" placeholder="E-mail" />
                            <span id="validEmailModal"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div id="ButtonFormDeskrModal"><a onclick="sendOrderByName()">Оформить заказ</a></div>
                        <span style="display: block;" id="statusErrorModal" class="modalMessage"></span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<div id="OurWorks">
    <section>
        <div id="TitleOurWorks">Диски та шини</div>
        <ul>
            <c:forEach items="${tyresList.content}" var="tyres">
                 <li><img src="/tyresimage?image=${tyres.image}"><label style="text-decoration: none; text-transform: uppercase; font-size: 12px; color: #ff0009; width: 80px; height: 35px; display: block; padding-left: 5px; cursor: pointer; line-height: 32px; margin-bottom: 33px; float: right;" for="modaltyres" class="btn" onclick="payTyres('${tyres.image}', '${tyres.name}', '${tyres.price}', '${tyres.size}', '${tyres.id}')">замовити</label><div>бренд - ${tyres.name}</div><div>цена - ${tyres.price} грн</div><div>размер - ${tyres.size}</div></li>
            </c:forEach>
            <div class="modal">
                <input class="modal-open" id="modaltyres" type="checkbox" hidden>
                <div class="modal-wrap" aria-hidden="true" role="dialog">
                    <label class="modal-overlay" for="modaltyres"></label>
                    <form id="formTyres" action="" method="">
                        <div class="modal-dialog">
                            <div class="modal-header">
                                <h2 id="myTyreslLabel"></h2>
                                <label class="btn-close" for="modaltyres" aria-hidden="true" onclick="closeModal()">×</label>
                            </div>
                            <div class="modal-body">
                                <div style="width: 100%">
                                <img id="imagetyres" style="width: 150px; display: inline-block; " src=""><div style="margin-bottom: 30px; margin-left: 10px; width: 150px; display: inline-block"><div id="brend">бренд - </div><div id="price">цена - </div><div id="size">размер - </div></div>
                                </div>
                                <input type="hidden" name="id" id="tyresid" value="" />
                                <span style="width: 100%; display: block;"></span>
                                <input type="text" id="NameTyres" name="Name" placeholder="Ваше имя" />
                                <span style="width: 100%; display: block;"></span>
                                <input type="text" id="PhoneTyres" name="Phone" placeholder="Ваш телефон" />
                                <div class="form-group">
                                    <span style="width: 100%; display: block;"></span>
                                    <input type="text" id="EmailTyres" name="Email" placeholder="E-mail" />
                                    <span id="validEmailTyres"></span>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div id="ButtonFormDeskrTyres"><a onclick="sendTyresOrder()">Оформить заказ</a></div>
                                <span style="display: block;" id="statusErrorTyres" class="modalMessage"></span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </ul>
        <div class="Clr"></div>
        <sec:authorize access="hasAnyRole('ADMIN')">
            <label for="modal-add-content" style="float: none; margin-left: auto; margin-right: auto; width: 140px;" class="btnlogin">додати позицію</label>
            <div class="modal">
                <input class="modal-open" id="modal-add-content" type="checkbox" hidden>
                <div class="modal-wrap" aria-hidden="true" role="dialog">
                    <label class="modal-overlay" for="modal-add-content"></label>
                    <div class="modal-dialog" style="width: 300px;">
                            <div class="modal-header">
                                    <h2>додавання товару</h2>
                                <label class="btn-close" for="modal-add-content" aria-hidden="true"  onclick="closeModal()">×</label>
                            </div>
                        <form:form action="/add-content" method="POST" id="addcontent">
                            <div class="modal-body">
                                    <span></span>
                                   <input type="text" id="NameAdd" name="Name" placeholder="введите бренд" value=""/>
                                    <span></span>
                                   <input type="text" id="PriceAdd" name="Price" placeholder="введите цену" value=""/>
                                    <span></span>
                                   <input type="text" id="SizeAdd" name="Size" placeholder="введите размер" value=""/>
                                <div id="ButtonFoto"><div id="photo">
                                    <input type="file" name="file" id="uploadedphoto" class="file" accept="image/x-png, image/jpeg">Завантажити фото
                                    <input type="hidden"
                                           name="${_csrf.parameterName}"
                                           value="${_csrf.token}" />
                                    <input type="hidden"
                                           id="idstar"
                                           name="id"
                                           value="${star.id}" />
                                </div></div>
                            </div>
                            <div class="modal-footer">
                                <div class="Buttonlogin" id="submitIN"><a  href="#" onclick="addContent()" >ok</a></div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </sec:authorize>
    </section>
</div>
<div id="WhyWe">
    <section>
        <div id="TitleWhyWe">Марки авто які ви можете обслужити на нашому автосервісі</div>
        <img src="../images/auto/1.jpg">
        <img src="../images/auto/2.jpg">
        <img src="../images/auto/3.jpg">
        <img src="../images/auto/4.jpg">
        <img src="../images/auto/5.jpg">
        <img src="../images/auto/6.jpg">
        <img src="../images/auto/7.jpg">
        <img src="../images/auto/8.jpg">
        <img src="../images/auto/9.jpg">
        <img src="../images/auto/10.jpg">
        <img src="../images/auto/11.jpg">
        <img src="../images/auto/12.jpg">
        <img src="../images/auto/13.jpg">
        <img src="../images/auto/14.jpg">
        <img src="../images/auto/15.jpg">
        <img src="../images/auto/16.jpg">
        <img src="../images/auto/17.jpg">
        <img src="../images/auto/18.jpg">
        <img src="../images/auto/19.jpg">
        <img src="../images/auto/20.jpg">
        <img src="../images/auto/21.jpg">
        <img src="../images/auto/22.jpg">
        <img src="../images/auto/23.jpg">
        <img src="../images/auto/24.jpg">
        <img src="../images/auto/25.jpg">
        <img src="../images/auto/26.jpg">
        <img src="../images/auto/27.jpg">
        <img src="../images/auto/28.jpg">
        <img src="../images/auto/29.jpg">
        <img src="../images/auto/30.jpg">
        <img src="../images/auto/31.jpg">
        <img src="../images/auto/32.jpg">
    </section>
</div>
<div class="Clr"></div>
<div id="ReviewsAllBg">
    <section>
        <div id="ReviewsTitle">Наші клієнти</div>
        <div id="BlockOtz">
            <div id="ListNews">
                <div>
                    <div class="LeftDercr"><img src="../images/Clients/raiffeisen-bank-aval.jpg"></div>
                    <div class="LeftDercr"><img src="../images/Clients/javir.png"></div>
                    <div class="LeftDercr"><img src="../images/Clients/raiz.jpeg"></div>
                </div>

                <div>
                    <div class="LeftDercr"><img src="../images/Clients/kredo.jpg"></div>
                    <div class="LeftDercr"><img src="../images/Clients/frunze.png"></div>
                    <div class="LeftDercr"><img src="../images/Clients/kerameya.png"></div>
                </div>


            </div>
            <div class="Clr"></div>
        </div>
    </section>
</div>
<div id="MapContacts">
    <section>
        <div id="Contackts">
            <div id="TitleBlContacts">Контакти</div>
            <div id="Phone"><p>+38 (0542) 619-493</p></div>
            <div id="PhoneMTS"><p>+38 (099) 104-61-56</p></div>
            <div id="PhoneKS"><p>+38 (067) 757-61-85</p></div>
            <div id="Mail"><p>info@autoplus.sumy.ua</p></div>
            <div id="AdressKur"><p>пр. Курський 22</p></div>
            <div id="AdressPr"><p>пл. Привокзальна 2</p></div>
            <div id="SocSet">
                <ul>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
                <div class="Clr"></div>
            </div>
        </div>
        <div id="FormDeskrContackt">
            <form id="formFreeConsulting" action="" method="">
                <p>Замов безкоштовну консультацію спеціаліста прямо зараз</p>
                <input type="text" id="NameFree" name="NameFree" placeholder="Ваше имя" />
                <input type="text" id="PhoneFree" name="PhoneFree" placeholder="Ваш телефон" />
                <div class="form-group">
                    <input type="text" id="EmailFree" name="EmailFree" placeholder="E-mail" />
                    <span id="validEmailFree"></span>
                </div>
                <div id="ButtonFormDeskrContackt"><a onclick="freeConsulting()">Замовити</a></div>
                <span style="display: block;" id="statusErrorFree" class="modalMessage"></span>
            </form>
        </div>
        <div class="Clr"></div>
    </section>
</div>