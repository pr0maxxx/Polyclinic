<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Регистрация</h1>
    <hr>
    <form action="/registration" method="post" style="padding-left: 15px">
        <h3>Заполните все поля для создания аккаунта:</h3>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Имя пользователя" required id="name" name="name" style="width: 45%">
        </div>
        <div class="form-group">
            <input type="email" class="form-control" id="email" placeholder="Электронная почта" required name="email" style="width: 45%">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="numberPhone" placeholder="Номер телефона" required name="numberPhone" style="width: 45%">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="password" placeholder="Пароль" required name="password" style="width: 45%">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 25%" class="btn btn-outline-danger">Зарегистрироваться</button>
    </form>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</@t.template>