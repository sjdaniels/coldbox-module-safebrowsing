component {
	// Module Properties
	this.title 				= "SafeBrowsing Module";
	this.author 			= "Sean Daniels";
	this.description 		= "Module for interacting with SafeBrowsing API";
	this.version			= "1.0.0+00001";
	// Module Entry Point
	this.entryPoint			= "safebrowsing";
	// Model Namespace
	this.modelNamespace		= "safebrowsing";
	// CF Mapping
	this.cfmapping			= "safebrowsing";
	// Auto-map models
	this.autoMapModels		= true;

	function configure(){
		// module settings - stored in modules.name.settings
		settings = {
			 endpoint:"https://safebrowsing.googleapis.com/v4"
			,clientID:"ColdBox SafeBrowsing Module"
			,clientVersion:this.version
			,apiKey:""
		};
	}
}