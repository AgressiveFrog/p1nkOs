-- Fuck this is stupid
--[[ Just ignore the steaming pile of shit beneath this line




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

-- Search For Network
-- Request Access
-- Store ID
-- Request User Information from Server
-- Compare to user currently logged in
-- Download if needed

-- fszsxf
--]]


term.clear()
local w, h = term.getSize()
os.pullEvent = os.PullEventRaw

--https://tweaked.cc/module/parallel.html

-- Print primitive GUI
-- Get info
    -- Get User Info
local var = fs.open("p1nkOs/Settings/UserInfo") -- Find a new name for var
UserName = var.readLine()
UserEmail = var.readLine
    -- User Email
    -- ID, label
-- Make connection
local pinkMailLookup = rednet.lookup("PinkMail", "PinkMailService")
if pinkMailLookup then
    local connected = true
    rednet.broadcast("Connected" .. UserEmail)
    -- Scan for server
    -- If found
        -- Send Info
        -- Update Status
-- Update GUI in case of lag
        -- Is Connected
        -- Newest Mails
    -- Get Status
    -- Print User Stuff
    -- Print Menu
    -- Print mails and shit
-- Recieve all
    -- OPEN THE MULTITHRED FLOODGATES!
-- Ping Server
    -- Send Pull Request

while true do
    -- Update GUI, since this is the beginning of a loop
    -- Ping Server again
    -- Get Keys
        -- If writing
            -- Start Writing Tab
        -- If read message
            -- Fullscreen messages
                -- Scroll
        -- Exit
            -- Send termination notice and exit to menu
        
