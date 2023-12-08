<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Ваш личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.numberPhone}</b>
        <br>
        <br>
        <h4 style="text-align: center">Мои записи</h4>
        <table class="table table-bordered table-hover">

            <tr style="vertical-align: middle;text-align: center;" class="table-primary">
                <th style="vertical-align: middle">Услуга</th>
                <th style="vertical-align: middle">Время</th>
                <th style="vertical-align: middle">Врач</th>
                <th style="vertical-align: middle">Цена</th>
                <th style="vertical-align: middle">Удаление</th>
            </tr>

            <tbody>
            <#list events as event>
                <#if event.username?? && user.name == event.username>
                    <tr style="vertical-align: middle;text-align: center;">
                        <th>${event.description}</th>
                        <th>${event.time}</th>
                        <th>${event.name_of_doctor}</th>
                        <th>${event.price}₽</th>
                        <th>
                            <form action="/product/deleteEvent/${event.id}" method="post">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <input type="submit" value="Удалить" class="btn btn-danger mb-2">
                            </form>
                        </th>
                    </tr>
                </#if>
                <#else>
                    <tr>
                        <td colspan="5"><h3>Записей нет</h3></td>
                    </tr>
            </#list>
            </tbody>
        </table><br>
        <#if user.isAdmin()>
            <a class="btn btn-primary mb-3" style="text-align: center; width: 25%" style="padding-left: 30%"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 25%" style="padding-left: 30%" class="btn btn-danger mb-2">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>