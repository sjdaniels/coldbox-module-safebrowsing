component {

	property name="settings" inject="coldbox:modulesettings:safebrowsing";

	struct function checkURLs(required array urls) {
		var requestBody = {
			 "client":{ "clientId":settings.clientID, "clientVersion":settings.clientVersion }
			,"threatInfo":{"platformTypes":["ANY_PLATFORM"], "threatTypes":["MALWARE","SOCIAL_ENGINEERING","UNWANTED_SOFTWARE","POTENTIALLY_HARMFUL_APPLICATION","THREAT_TYPE_UNSPECIFIED"], "threatEntryTypes":["URL"], "threatEntries":arguments.urls.map((theURL)=>["url":theURL])}
		}
		
		http result="local.cfhttp" url="#settings.endpoint#/threatMatches:find" method="post" encodeurl="false" {
			httpparam type="url" name="key" value="#settings.apiKey#";
			httpparam type="body" value="#serializeJSON(requestBody)#";
		}
		
		return deserializeJSON(local.cfhttp.filecontent);
	}

	string function isThreat( required string url ) {
		return !isEmpty( checkURLs([ arguments.url ]) );
	}
}