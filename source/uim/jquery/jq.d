module uim.jquery.jq;

import uim.jquery; 

class DJQ : DJS {
    this() { super(); }
	this(string[string] someParameters) { this(); _parameters = someParameters; }

    O Click(this O)(string selector, DJS funcBody){ Click(selector, funcBody.toString); return cast(O)this; } 	
    O Click(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").click(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Click("p", "$(this).hide();") == `$("p").click(function(){$(this).hide();});`);
    }
    
    O Keypress(this O)(string selector, DJS funcBody){ Keypress(selector, funcBody.toString); return cast(O)this; } 	 	
    O Keypress(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").keypress(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Keypress("p", "$(this).hide();") == `$("p").keypress(function(){$(this).hide();});`);
    }
    
    O Submit(this O)(string selector, DJS funcBody){ Submit(selector, funcBody.toString); return cast(O)this; } 		
    O Submit (this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").submit(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Submit("p", "$(this).hide();") == `$("p").submit(function(){$(this).hide();});`);
    }
    
    O Load(this O)(string selector, DJS funcBody){ Load(selector, funcBody.toString); return cast(O)this; } 	
    O Load(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").load(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Load("p", "$(this).hide();") == `$("p").load(function(){$(this).hide();});`);
    }

    O DblClick(this O)(string selector, DJS funcBody){ DblClick(selector, funcBody.toString); return cast(O)this; } 		
    O DblClick(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").dblClick(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.DblClick("p", "$(this).hide();") == `$("p").dblClick(function(){$(this).hide();});`);
    }

    O Keydown(this O)(string selector, DJS funcBody){ Keydown(selector, funcBody.toString);  return cast(O)this; } 	 	
    O Keydown(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").keydown(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Keydown("p", "$(this).hide();") == `$("p").keydown(function(){$(this).hide();});`);
    }

    O Change(this O)(string selector, DJS funcBody){ Change(selector, funcBody.toString); return cast(O)this; } 	 	
    O Change(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").change(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Change("p", "$(this).hide();") == `$("p").change(function(){$(this).hide();});`);
    }
    
    O Resize(this O)(string selector, DJS funcBody){ Resize(selector, funcBody.toString); return cast(O)this; } 	
    O Resize(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").resize(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Resize("p", "$(this).hide();") == `$("p").resize(function(){$(this).hide();});`);
    }

    O MouseEnter(this O)(string selector, DJS funcBody){ MouseEnter(selector, funcBody.toString); return cast(O)this; } 	
    O MouseEnter(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").mouseenter(function(){`~funcBody~`});`;  return cast(O)this; } 	
    unittest {
        assert(JQ.MouseEnter("p", "$(this).hide();") == `$("p").mouseenter(function(){$(this).hide();});`);
    }
 	
    O Keyup(this O)(string selector, DJS funcBody){ Keyup(selector, funcBody.toString); return cast(O)this; } 	
    O Keyup(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").keyup(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Keyup("p", "$(this).hide();") == `$("p").keyup(function(){$(this).hide();});`);
    }
 	
    O Focus(this O)(string selector, DJS funcBody){ Focus(selector, funcBody.toString); return cast(O)this; }  	
    O Focus(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").focus(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Focus("p", "$(this).hide();") == `$("p").focus(function(){$(this).hide();});`);
    }
 	
    O Scroll(this O)(string selector, DJS funcBody){ Scroll(selector, funcBody.toString); return cast(O)this; } 	
    O Scroll(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").scroll(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Scroll("p", "$(this).hide();") == `$("p").scroll(function(){$(this).hide();});`);
    }

    O MouseLeave(this O)(string selector, DJS funcBody){ MouseLeave(selector, funcBody.toString); return cast(O)this; } 	
    O MouseLeave(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").mouseleave(function(){`~funcBody~`});`; return cast(O)this;  } 	
    unittest {
        assert(JQ.MouseLeave("p", "$(this).hide();") == `$("p").mouseleave(function(){$(this).hide();});`);
    }
 	  	
    O Blur(this O)(string selector, DJS funcBody){ Blur(selector, funcBody.toString); return cast(O)this; } 	
    O Blur(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").blur(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Blur("p", "$(this).hide();") == `$("p").blur(function(){$(this).hide();});`);
    }
 	
    O Unload(this O)(string selector, DJS funcBody){ Unload(selector, funcBody.toString); return cast(O)this; } 	
    O Unload(this O)(string selector, string funcBody){ _jsCode ~= `$("`~selector~`").unload(function(){`~funcBody~`});`; return cast(O)this; } 	
    unittest {
        assert(JQ.Unload("p", "$(this).hide();") == `$("p").unload(function(){$(this).hide();});`);
    }
}
auto JQ() { return new DJQ(); }
auto JQ(string[string] someParameters) { return new DJQ(someParameters); }

unittest {
}