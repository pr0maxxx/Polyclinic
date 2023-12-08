<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Авторизация</h1>
    <hr>
    <form action="/login " method="post" style="padding-left: 15px">
        <h3>Заполните поля для входа:</h3>
        <div class="form-group">
            <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>"
                   placeholder="Введите электронную почту" id="email" name="username" style="width: 45%">
            <div id="email" class="invalid-feedback">
                Неверная электронная почта
            </div>
        </div>
        <div class="form-group">
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>"
                   placeholder="Введите пароль" id="password" name="password" style="width: 45%">
            <div id="password" class="invalid-feedback">
                Неверный пароль
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 25%" class="btn btn-success">Войти</button>
    </form>
    <hr>
    <h2 style="padding-left: 15px">Ещё нет аккаунта? <a href="/registration">Зарегистрируйся!</a></h2>
</@t.template>