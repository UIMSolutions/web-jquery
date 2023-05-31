module uim.jquery;

public import std.stdio;
public import std.string;
public import std.uuid;

// external packages
public import vibe.d;

// uim packages
public import uim.core;
public import uim.css;
public import langs.javascript;
public import uim.json;
public import uim.oop;

// local modules
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