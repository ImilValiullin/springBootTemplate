<#import "parts/common.ftlh" as c>

<@c.page>
Lost of users
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
    <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.getRoles() as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.getId()}">edit</a> </td>
        </tr>
    </#list>
    </table>
    <br>
    <a href="/main">Back</a>
</@c.page>