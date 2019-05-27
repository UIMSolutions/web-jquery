module uim.jqueryjquery;

public import uim.jquery.component;

string documentReady(string content) {
    return "$(document).ready(function(){"~content~"});";
}

unittest {}