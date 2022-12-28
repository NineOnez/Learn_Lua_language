-- load the debug libery
local debug = require("debug")

-- Get information about the current function
local info = debug.getinfo(1, "S")

-- Print the name of the function
print("The name of this script is: "..info.source)