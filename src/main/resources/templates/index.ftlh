<#import "parts/main.ftlh" as main>
<#import "parts/login.ftlh" as log>
<#import "parts/header.ftlh" as head>
<#import "parts/nav-menu.ftlh" as nav>
<@main.page>
    <@nav.navmenu></@nav.navmenu>
    <@head.header></@head.header>
    <h1 inline="text">Hello!</h1>
    <div>
    <@log.logout></@log.logout>
    <a href="/user" >User List</a>
    </div>

    <div class="container">
        <div>
            <form method="post" enctype="multipart/form-data">
                <input type="text" name="text" placeholder="Введите сообщение" />
                <input type="text" name="tag" placeholder="Тэг">
                <input type="file" name="file">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit">Добавить</button>
            </form>
        </div>
        <div>Список сообщений</div>
        <form method="get" action="/main">
            <input type="text" name="filter" value="${filter?ifExists}">
            <button type="submit">Найти</button>
        </form>
        <#list messages as message>
            <div>
                <b>${message.id}</b>
                <strong>${message.authorName} : </strong>
                <div class="file">
                    <#if message.filename??>
                        <img src="/img/${message.filename}">
                    </#if>
                </div>
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
        <#else >
            No message
        </#list>
    </div>
</@main.page>