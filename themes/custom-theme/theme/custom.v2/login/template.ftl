<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/theme.css">
</head>
<body>
    <div class="login-container">
        <#nested "form">
    </div>
</body>
</html>
</#macro>
