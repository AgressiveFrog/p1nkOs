-- Mail Service
-- SERVER SIDE

-- Clear Screen and get the screen size
term.clear()
local w, h = terminal.getSize()

-- Find open port'
local portLocate = fs.open("p1nkOs/Settings/OpenPort")
if portLocate then
    OpenPort = portLocate.readLine()
    -- This reads the first line and looks after a string
end

-- Get Rednet Access
rednet.open(OpenPort)

-- Create PinkMailService
rednet.host("PinkMail", "PinkMailService")
hosting = true