<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-user" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <!--<f:table collection="${userList}" />-->
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Nom d'utilisateur</th>
                        <th>Etat</th>
                        <th>dérniere connexion</th>
                    </tr>
                </thead>

                <tbody>
                    <g:each in="${userList}" var="user">
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.username}</td>
                            <td>${user.username}</td>
                        </tr>

                    </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${userCount ?: 0}" />
            </div>
        </div>
    </body>
</html>