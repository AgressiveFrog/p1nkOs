--[[

    P1NK.OS    V.1.0.0    (2024)
    Standarized Computercraft-CC-tweaked opperating system
    Developed by Duck29

--]]



-- |-----------------------------------------
-- | PRE PROGRAM CLEANUP
-- |-----------------------------------------
-- | This just cleans the computer and
-- | prepares it to draw a new GUI and sets
-- | new values for the essential varables.
-- | 

term.clear()
local width, height = term.getSize()
local nOption = 2
local eOption = 1



-- |----------------------------------------
-- | ESSENTIAL FUNCTIONS
-- |----------------------------------------
-- | These functions are the fundament for 
-- | the computer
-- | These should NOT BE CHANGED, nor 
-- | REMOVED
-- | 

local function changeColor(_fg, _bg)
    term.setTextColor(_fg)
    term.setBackgroundColor(_bg)
end

local function pos(_x, _y)
    term.setCursorPos(_x, _y)
end



-- |-----------------------------------------
-- | SAVE THE FRAMES
-- |-----------------------------------------
-- | Theese functions takes care of the GUI
-- | elements. They are stored here and
-- | called later when needed.
-- |

local function drawMenu()
    term.clear()

    pos(2, 2)
    changeColor(colors.white, colors.pink)
    term.write("P1NK OS   ")

    pos(2, 4)
    changeColor(colors.white, colors.black)
    term.write("----------")

    pos(2, 6)
    changeColor(colors.white, colors.lightBlue)
    term.write("  Desktop ")

    pos(2, 8)
    changeColor(colors.white, colors.green)
    term.write("  Mail    ")

    pos(2, 9)
    term.write("  Internet")

    pos(2, 10)
    term.write("  Programs")

    pos(2, 11)
    term.write("  Settings")

    pos(2, 13)
    changeColor(colors.white, colors.black)
    term.write("----------")

    pos(2, 15)
    changeColor(colors.white, colors.red)
    term.write("  Exit    ")

    changeColor(colors.white, colors.black)

    for i = 19,1,-1 do
        pos(13, i)
        changeColor(colors.white, colors.black)
        term.write("|")
        pos(14, i)
        changeColor(colors.white, colors.white)
        term.write(" ")

    end
end

local function updateMenu()
    if nOption == 1 then
        pos(1, 2)
        changeColor(colors.white, colors.pink)
        term.write(" P1NK OS    ")

    elseif nOption == 2 then
        pos(1, 6)
        changeColor(colors.white, colors.lightBlue)
        term.write(" > Desktop  ")

    elseif nOption == 3 then
        pos(1, 8)
        changeColor(colors.white, colors.green)
        term.write(" > Mail     ")

    elseif nOption == 4 then
        pos(1, 9)
        changeColor(colors.white, colors.green)
        term.write(" > Internet ")

    elseif nOption == 5 then
        pos(1, 10)
        changeColor(colors.white, colors.green)
        term.write(" > Programs ")

    elseif nOption == 6 then
        pos(1, 11)
        changeColor(colors.white, colors.green)
        term.write(" > Settings ")

    elseif nOption == 7 then
        pos(1, 15)
        changeColor(colors.white, colors.red)
        term.write(" > Exit     ")

    end

    changeColor(colors.white, colors.black)
end

local function runProgram(index)
    if index == 1 then
        print(index)
    elseif index == 2 then
        print(index)
    elseif index == 3 then
        print(index)
    elseif index == 4 then
        print(index)
    elseif index == 5 then
        print(index)
    elseif index == 6 then
        print(index)
    elseif index == 7 then
        print(index)
    end

    term.clear()
end

local function drawExitMenu()
    term.clear()
    changeColor(colors.black, colors.pink)
    pos(6, 5)
    term.write("┌───────────────────────────────────────┐")
    pos(6, 6)
    term.write("│                                       │")
    pos(6, 7)
    term.write("│     SYSTEM WARNING :                  │")
    pos(6, 8)
    term.write("│                                       │")
    pos(6, 9)
    term.write("│  Are you sure you want to shut down?  │")
    pos(6, 10)
    term.write("│                                       │")
    pos(6, 11)
    term.write("│                                       │")
    pos(6, 12)
    term.write("│        <YES>              <NO>        │")
    pos(6, 13)
    term.write("│                                       │")
    pos(6, 14)
    term.write("└───────────────────────────────────────┘")

    changeColor(colors.black, colors.black)
    pos(47, 6)
    term.write("#")
    pos(47, 7)
    term.write("#")
    pos(47, 8)
    term.write("#")
    pos(47, 9)
    term.write("#")
    pos(47, 10)
    term.write("#")
    pos(47, 11)
    term.write("#")
    pos(47, 12)
    term.write("#")
    pos(47, 13)
    term.write("#")
    pos(47, 14)
    term.write("#")
    pos(7, 15)
    term.write("#########################################")
end

local function updateExitMenu()
    if eOption == 1 then
        pos(15, 12)
        changeColor(colors.white, colors.orange)
        terminal.write("<YES>")

        pos(43, 12)
        changeColor(colors.grey, colors.white)
        terminal.write("<NO>")

    elseif eOption == 2 then
        pos(43, 12)
        changeColor(colors.white, colors.orange)
        terminal.write("<NO>")

        pos(15, 12)
        changeColor(colors.grey, colors.white)
        terminal.write("<YES>")
    end
end

-- |-----------------------------------------
-- | DRAW GUI ELEMENTS
-- |-----------------------------------------
-- | Now we see ...
-- | 

drawMenu()
updateMenu()



-- |-----------------------------------------
-- | AWAIT INPUT
-- |-----------------------------------------
-- | Now we wait ...
-- | 
local function getInput()
    while true do
        local eventType, input, mouseX, mouseY = os.pullEvent()

        if eventType == "key" then
            if input == keys.up then
                if nOption > 1 then
                    nOption = nOption - 1
                    drawMenu()
                    updateMenu()

                end

            elseif input == keys.down then
                if nOption < 7 then
                    nOption = nOption +1
                    drawMenu()
                    updateMenu()

                end

            elseif input == keys.enter then
                break

            end

        elseif eventType == "mouse_click" then
            if (2 <= mouseX and mouseX <= 12) and (mouseY == 2) then
                if nOption == 1 then
                    break
                else
                    nOption = 1
                end
        
            elseif (mouseX <= 12) and (mouseY == 6) then
                if nOption == 2 then
                    break
                else
                    nOption = 2
                end
        
            elseif (mouseX <= 12) and (mouseY == 8) then
                if nOption == 3 then
                    break
                else
                    nOption = 3
                end
        
            elseif (mouseX <= 12) and (mouseY == 9) then
                if nOption == 4 then
                    break
                else
                    nOption = 4
                end
        
            elseif (mouseX <= 12) and (mouseY == 10) then
                if nOption == 5 then
                    break
                else
                    nOption = 5
                end
                
            elseif (mouseX <= 12) and (mouseY == 11) then
                if nOption == 6 then
                    break
                else
                    nOption = 6
                end
        
            elseif (mouseX <= 12) and (mouseY == 15) then
                if nOption == 7 then
                    break
                else
                    nOption = 7
                end
        
            end
            drawMenu()
            updateMenu()

        end

    end
end
getInput()

-- |-----------------------------------------
-- | START SECELTED PROGRAM
-- |-----------------------------------------
-- | Go to next file
-- | 

if nOption == 1 then
    runProgram(1)

elseif nOption == 2 then
    runProgram(2)

elseif nOption == 3 then
    runProgram(3)

elseif nOption == 4 then
    runProgram(4)

elseif nOption == 5 then
    runProgram(5)

elseif nOption == 6 then
    runProgram(6)

elseif nOption == 7 then
    drawExitMenu()
    updateExitMenu()
end
