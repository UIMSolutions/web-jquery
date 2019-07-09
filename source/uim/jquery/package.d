module uim.jquery;

public import uim.javascript;

public import uim.jquery.jq;

/*
Start of jQuery when the document is "ready." 
*/
string jqDocumentReady(string content = null) {
    return "$(document).ready(function(){"~content~"});";
}

unittest {
    assert(jqDocumentReady == "$(document).ready(function(){});");
    assert(jqDocumentReady("test") == "$(document).ready(function(){test});");
}