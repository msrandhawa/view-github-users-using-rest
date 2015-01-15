<!DOCTYPE html>
<html>

<head>
<title><g:message code='spring.security.ui.login.title' /></title>
<meta name="layout" content="main" />
</head>

<body>

	<p />

	<div class="login s2ui_center ui-corner-all" style='text-align: center; float: left; max-width: 322px;'>
		<div class="login-inner">
			<form action='${postUrl}' method='POST' id="loginForm"
				name="loginForm" autocomplete='off'>
				<div class="sign-in">

					<h1>
						<g:message code='spring.security.ui.login.signin' />
					</h1>

					<table>
						<tr>
							<td><label for="username"><g:message
										code='spring.security.ui.login.username' /></label></td>
							<td><input name="j_username" id="username" size="20" /></td>
						</tr>
						<tr>
							<td><label for="password"><g:message
										code='spring.security.ui.login.password' /></label></td>
							<td><input type="password" name="j_password" id="password"
								size="20" /></td>
						</tr>
						<tr>
							<td colspan='2'>
								<%--<input type="checkbox" class="checkbox" name="${rememberMeParameter}" id="remember_me" />
				<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |
				--%> <span class="forgot-link"> <g:link controller='register'
										action='forgotPassword'>
										<g:message code='spring.security.ui.login.forgotPassword' />
									</g:link>
							</span>
							</td>
						</tr>
						<tr>
							<td colspan='2'>
								<%--<s2ui:linkButton elementId='register' controller='register' messageCode='spring.security.ui.login.register'/>--%>
								<g:submitButton name='Login' elementId='loginButton'
									form='loginForm' messageCode='spring.security.ui.login.login' />
							</td>
						</tr>
					</table>

				</div>
			</form>
		</div>
	</div>
	<div style="float: left; padding: 10px;" class="searchResultsBody" id="dummyTextSection">
		<br/>
		<br/>
		
		This is dummy text display section.
		
		<br/>
		This is dummy text display section.
		This is dummy text display section.
		<br/>
		This is dummy text display section.
		This is dummy text display section.
		<br/>
		This is dummy text display section.

	</div>

	<script>
		$(document).ready(function() {
			$('#username').focus();
		});

		<s2ui:initCheckboxes/>
	</script>

</body>
</html>
