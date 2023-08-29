-- Mail Service
-- CLIENT SIDE

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

-- Open Memory for storing server info
local serverID, serverVersion
local serverID, serverMessage
local computerInfo

-- Find PinkMailService
local pinkmailLookup = rednet.lookup("PinkMail", "PinkMailService")
if pinkmailLookup then
    local connected = true
    rednet.broadcast(computerInfo, "PinkMail")           -- Broadcast info

    serverID, serverVersion = rednet.recieve("PinkMail", 3)    -- Get Server Info
    if serverID then 
else 
    local connected = false
end