ColdBox SafeBrowsing Module
==============================
A module for testing URLs against the Google SafeBrowsing Lookup v4 API.

## LICENSE

Apache License, Version 2.0.

## SYSTEM REQUIREMENTS
- Lucee 5+
- ColdBox 5.3+

---

# Instructions

Just drop into your `modules` folder or use the box-cli to install

`box install safebrowsing`

## USAGE

Add your Google API_KEY to the module settings in Coldbox.cfc:

```js
moduleSettings = {
	"safebrowsing":{
		apiKey:"YOUR_API_KEY"
	}
}
```

The module creates a mapping for `ThreatMatches@safebrowsing` which has the following methods:

- *checkURLs(required array urls)* returns a struct of data from the API describing any issues in the URLs submitted
- *isThreat(required string url)* returns true if the URL is problematic for any reason, false if it's "safe"
