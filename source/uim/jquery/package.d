module uim.jquery;

public import uim.jquery.component;

string jqDocumentReady(string content = null) {
    return "$(document).ready(function(){"~content~"});";
}

unittest {
    assert(jqDocumentReady == "$(document).ready(function(){});");
    assert(jqDocumentReady("test") == "$(document).ready(function(){test});");
}