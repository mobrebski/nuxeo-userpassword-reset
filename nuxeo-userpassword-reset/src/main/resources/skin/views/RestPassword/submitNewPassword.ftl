<@extends src="./base.ftl">

<@block name="title">
 ${Context.getMessage('label.resetPassForm.title')}
</@block>
<@block name="content">

  
<div class="registrationForm">
<form action="${This.path}/submitNewPassword" method="post" enctype="application/x-www-form-urlencoded" name="submitNewPassword">
 <input type="hidden" id="PasswordKey" value="${key}" name="PasswordKey"/>
<br/>
 <table>
            <tr>
                <td colspan="2" class="directive">
                    Enter a new password:
                </td>
            </tr>
             <tr>
                <td class="login_label">
<span class="required">${Context.getMessage('label.registerForm.password')}</span>
                </td>
                <td>
<input type="password" id="Password" value="${data['Password']}" name="Password" class="login_input" isRequired="true"/>
                </td>
              </tr>
             <tr>
                <td class="login_label">
<span class="required">${Context.getMessage('label.registerForm.passwordConfirmation')}</span>
                </td>
                <td>
<input type="password" id="PasswordConfirmation" value="${data['PasswordConfirmation']}" name="PasswordConfirmation" class="login_input" isRequired="true"/>
                </td>
              </tr>

              <tr>
                <td></td>
                <td>
                  <input class="login_button" type="submit" name="submit"
                    value="${Context.getMessage('label.registerForm.submit')}" />
                </td>
              </tr>

  <#if err??>
    <tr>
      <td colspan="2">
        <div class="errorMessage">
          ${Context.getMessage("label.connect.trial.form.errvalidation")}
          ${err}
        </div>
      </td>
    </tr>
  </#if>

  <#if info??>
    <tr>
      <td colspan="2">
        <div class="infoMessage">
          ${info}                    
        </div>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <a href="${Context.getBaseURL()}">Proceed to Login</a>
      </td>
    </tr>
  </#if>    
            
  </table>
</form>

</div> 
</@block>
</@extends>