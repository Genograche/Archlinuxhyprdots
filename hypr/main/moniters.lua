------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "eDP-1",
    mode     = "1366x768@60",
    position = "0x0",
    scale    = "1",
}) 

hl.monitor({ 
	output = "", 
	mode = "preferred", 
	position = "auto", 
	scale = 1,
--	transform = 1 -- rotate a monitor 90 degrees
})
