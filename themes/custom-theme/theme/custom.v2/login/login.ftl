<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>

     <!-- Logo de fondo -->
        <img src="${url.resourcesPath}/img/background.svg" class="background-logo" alt="Logo de fondo">

    <#if section = "header">
        ${msg("loginAccountTitle")}

    <#elseif section = "form">
        <div id="kc-form">
          <div id="kc-form-wrapper">



            <#if realm.password>
                <form id="kc-form-login" class="custom-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    
                    <div class="login-logo">
                        <img src="${url.resourcesPath}/img/DipuLogoLogin.svg" alt="Logo Diputación de Sevilla">
                    </div>
                    
                    <h2 class="login-title">Inicia sesión en la plataforma de simulación de empresas</h2>

                    <#if !usernameHidden??>
                        <div class="input-group">
                            <label for="username" class="input-label">Nombre de usuario</label>
                            <input id="username" 
                                   name="username" 
                                   type="text"
                                   placeholder=""
                                   value="${(login.username!'')}" 
                                   autofocus
                                   autocomplete="off"/>
                        </div>
                    </#if>

                    <div class="input-group">
                        <label for="password" class="input-label">Contraseña</label>
                        <input id="password" 
                               name="password" 
                               type="password" 
                               placeholder=""
                               autocomplete="off"/>
                    </div>

                    <div class="forgot-password">
                        <a href="${url.loginResetCredentialsUrl}">¿Has olvidado tu contraseña?</a>
                    </div>

                    <div class="button-container">
                        <button class="login-button" name="login" id="kc-login" type="submit">Iniciar sesión</button>
                    </div>

                </form>
            </#if>
          </div>
        </div>
        
    <#elseif section = "info">
    </#if>

</@layout.registrationLayout>
