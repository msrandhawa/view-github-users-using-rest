
package com.ea.battleworld

import grails.test.mixin.*

import org.junit.*

import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

import grails.converters.JSON

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(SecureController)
class SecureControllerTests {

	void testIndex() {
		controller.index()
		assert "/secure/searchRepos" == response.redirectedUrl
	}

    void testAjaxDisplay() {
		
		params.username = "msrandhawa"
		
	    controller.ajaxDisplay()
		
		def controllerResponse = controller.response.contentAsString
		
		def jsonResult = JSON.parse(controllerResponse)
		
		assert "grails-technical-test" == jsonResult.repos[0].reposName[0]
		
	    assert controllerResponse.contains("grails-technical-test")
	}
}
