<#import "blocks/template.ftlh" as t>
<@t.template user>
    <#if user.email??>
        <p class="text-success mx-auto" style="font-size: 20px; text-align: center">Добро пожаловать, <b>${user.name}!</b></p>
        <hr>
    </#if>
    <h1 style="text-align: center">Услуги, предоставляемые нашей поликлиникой</h1><hr>

    <form class="form-inline" method="get" action="/" style="padding-left: 35px">
        <input class="form-control mr-sm-2" type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
               id="searchWord" style="width: 90%" placeholder="Поиск по названию услуги">
        <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Поиск</button>
    </form>

    <div class="card-deck d-flex justify-content-between flex-row">
        <#list products as product>
            <a href="/product/${product.id}" class="w-25 h-25 my-auto mx-auto">
                <div class="card text-white bg-primary my-3" style="height: 400px" style="width: 550px">
                    <img src="/images/${product.previewImageId}"
                         class="card-img-top" style="height: 200px">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center" style="padding-left: 35px">Не найдено</h1>
        </#list>
    </div>
</@t.template>