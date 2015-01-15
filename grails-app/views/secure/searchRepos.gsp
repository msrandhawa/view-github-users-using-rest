<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<g:javascript library="jquery"/>
<title>Find a Repository</title>
<g:javascript>
    function clearPost(e) {
        $('#username').val('');
    }
    function showSpinner(visible) {
        if (visible) $('#spinner').show();
                else $('#spinner').hide();
    }
</g:javascript>
</head>
<body>
	<div style="float: left; padding: 10px;" class="goldenText">
		Search Repositories by Username
		<br/><br/><%--
		<g:form controller="secure" action="display">
			<div>
				<label for="username">Username:</label>
				<g:textField name="username" maxlength="50"/>
			</div>
			<br/>
			<input type="submit" value="Submit">
		</g:form>

	--%>
		<g:form>		
		
			<div>
				<label for="username">Username:</label>
				<g:textField name="username" maxlength="50" id="username"/>
			</div>
			<br/>
			<g:submitToRemote value="Submit"
                         url="[controller: 'secure', action: 'ajaxDisplay']"
                         update="allReposForUser"
                         onSuccess="clearPost(data)"
                         onLoading="showSpinner(true)"
                         onComplete="showSpinner(false)"/>
                         
			<g:img id="spinner" style="display: none; margin: 0 0 0 200px;" uri="/images/spinner.gif"/>
			
		</g:form>
	
	
	</div>
	<div style="float: left; padding: 10px;" class="searchResultsBody" id="allReposForUser">
		This is User's Repositories display section.

		${repos}
	</div>
</body>
</html>