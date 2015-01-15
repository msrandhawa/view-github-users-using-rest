package com.ea.battleworld

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;

import org.codehaus.groovy.grails.web.json.JSONObject

import com.sun.xml.internal.org.jvnet.mimepull.Data;
import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

@Secured(['ROLE_ADMIN'])
class SecureController {

	def rest = new grails.plugins.rest.client.RestBuilder()
	
    def index() {
		redirect(action: "searchRepos")
	}
	
	def searchRepos(){
		
	}

	def ajaxDisplay() {
		
			def resp = rest.get("https://api.github.com/users/${params.username}/repos")
			
			HashMap jsonMap = new HashMap()
			
			jsonMap.reposName = resp.json.name
			 
			jsonMap.reposNumWatchers = resp.json.watchers_count
			 
			def reposJson = [repos:[jsonMap]]
			
			render reposJson as JSON
					
		}
		
}
