os.pullEvent = os.pullEventRaw
    -- Disables the terminate shortcut
    
    -- Reset screen and get Size
term.clear()
local w, h = term.getSize()
local nOption = 1

-- What to include in the os
-- Users
-- Login
-- Mail
-- Command Promt
-- Internet
-- Web Browsing
-- Settings

    -- Draw GUI and background
    -- Find a way to load images
--local background = paintutils.loadImage("p1nkOs/Images/DesktopBackground")
--paintutils.drawImage(background, 1, 1)

local function drawMenu()
    term.clear()
    term.setCursorPos(1, 1)
    term.setBackgroundColor(colors.magenta)
    term.write("  P1NK OS ")
    term.setBackgroundColor(colors.black)
    
    term.setCursorPos(1, 4)
    term.write("  Mail")
    term.setCursorPos(1, 6)
    term.write("  Internet")
    term.setCursorPos(1, 8)
    term.write("  Programs")
    term.setCursorPos(1, 10)
    term.write("  Settings")
    term.setCursorPos(1, 14)
    term.write("  Exit")
end

local function updateMenu()
    if nOption == 1 then
        term.setCursorPos(1, 4)
        term.setBackgroundColor(colors.purple)
        term.write("> Mail    ")
        term.setBackgroundColor(colors.black)
    elseif nOption == 2 then
        term.setCursorPos(1, 6)
        term.setBackgroundColor(colors.purple)
        term.write("> Internet")
        term.setBackgroundColor(colors.black)
    elseif nOption == 3 then
        term.setCursorPos(1, 8)
        term.setBackgroundColor(colors.purple)
        term.write("> Programs")
        term.setBackgroundColor(colors.black)
    elseif nOption == 4 then
        term.setCursorPos(1, 10)
        term.setBackgroundColor(colors.purple)
        term.write("> Settings")
        term.setBackgroundColor(colors.black)
    elseif nOption == 5 then
        term.setCursorPos(1, 14)
        term.setBackgroundColor(colors.red)
        term.write("> Exit    ")
        term.setBackgroundColor(colors.black)
    end
end
    -- Display the menu
drawMenu()
updateMenu()

    -- Programming the controlls
while true do
    local e, p = os.pullEvent()
    if e == "key" then
        local key = p
        if key == keys.w or key == keys.up then
            if nOption > 1 then
                nOption = nOption - 1
                drawMenu()
                updateMenu()
            end
        elseif key == keys.s or key == keys.down then
            if nOption < 5 then
                nOption = nOption + 1
                drawMenu()
                updateMenu()
            end
        elseif key == keys.enter then
            break
        end
    end
end

term.clear()

if nOption == 1 then
    shell.run("p1nkOs/Programs/MailService")
elseif nOption == 2 then
    shell.run("p1nkOs/Programs/InternetSevice")
elseif nOption == 3 then
    --Pop-up-menu of Programs
elseif nOption == 4 then
    shell.run("p1nkOs/programs/Settings")
elseif nOption == 5 then
    -- Exit Pop-up Code
    local eOption = 1
    term.setBackgroundColor(colors.white)
    term.setTextColor(colors.black)
    
    -- Exit Pop-up GUI
    local function drawExit()
        term.setCursorPos( (w/2) - 15, (h/2) - 3)
        term.write("                            ")
        term.setCursorPos( (w/2) - 15, (h/2) - 2)
        term.write(" Are you sure want to exit? ")
        term.setCursorPos( (w/2) - 15, (h/2) - 1)
        term.write("                            ")
        term.setCursorPos( (w/2) - 15, (h/2) + 0)
        term.write("  Shut Down                 ")
        term.setCursorPos( (w/2) - 15, (h/2) + 1)
        term.write("  Restart                   ")
        term.setCursorPos( (w/2) - 15, (h/2) + 2)
        term.write("  Logout                    ")
        term.setCursorPos( (w/2) - 15, (h/2) + 3)
        term.write("                            ")
    end
    local function updateExit()
        if eOption == 1 then
            term.setCursorPos( (w/2) - 15, (h/2) + 0)
            term.setBackgroundColor(colors.red)
            term.setTextColor(colors.white)
            term.write(" > Shut Down               ")
            term.setBackgroundColor(colors.white)
            term.setTextColor(colors.black)
        elseif eOption == 2 then
            term.setCursorPos( (w/2) - 15, (h/2) + 1)
            term.setBackgroundColor(colors.red)
            term.setTextColor(colors.white)
            term.write(" > Restart                 ")
            term.setBackgroundColor(colors.white)
            term.setTextColor(colors.black)
        elseif eOption == 3 then
            term.setCursorPos( (w/2) - 15, (h/2) + 2)
            term.setBackgroundColor(colors.red)
            term.setTextColor(colors.white)
            term.write(" > Logout                   ")
            term.setBackgroundColor(colors.white)
            term.setTextColor(colors.black)
        else
            term.clear()
            term.setCursorPos(1, 1)
            term.setBackgroundColor(colors.black)
            term.setTextColor(colors.white)
            term.write("Fatal Error,  Code: 5")
            term.setCursorPos(1, 2)
            term.write("Contact Duck29 for support")
        end
    end
    
    -- Displaying the Exit Pop-up
    
    drawExit()
    updateExit()
    
    -- Checking the Exit Pop-up
    
    while true do
        local e, p = os.pullEvent()
        if e == "key" then
            local key = p
            if key == keys.w or key == keys.up then
                if eOption > 1 then
                    eOption = eOption - 1
                    drawExit()
                    updateExit()
                end
            elseif key == keys.s or key == keys.down then
                if eOption < 3 then
                    eOption = eOption + 1
                    drawExit()
                    updateExit()
                end
            elseif key == keys.enter then
                break
            end
        end
    end
    
    if eOption == 1 then
        os.shutdown()
    elseif eOption == 2 then
        os.reboot()
    elseif eOption == 3 then
        term.clear()
        term.setBackgroundColor(colors.black)
        term.setTextColor(colors.white)
        term.setCursorPos(1, 1)
        term.write("Sorry! This is unavailable.")
    end
else
    term.setCursorPos(1, 1)
    term.write("Fatal Error,  Code: 4")
    term.setCursorPos(1, 2)
    term.write("Contact Duck29 for support")
end
