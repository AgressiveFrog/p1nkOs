 -- COPYRIGHT AND INFORMATION PAGE
--[[

enter shit here

--]]

-- Clear screen and get info
term.clear()
local w, h = term.getSize()

local pullEvent = pullEventRaw
  -- Dissable {ctrl} + [T]

  -- Get the computer specifications
local ID, Label = os.getID(), os.getLabel()
local ver = 0.1 -- P1NK OS version
local extra = "BETA" -- more info?
local license = "public use" -- P1NK OS type

  -- Ease of use functions
local function pull(_inf)  -- Temp varables should have a "_" in front of it to differentiate it from others
  http.get(_inf)           -- I am NOT writing snaka_case varables
end
local function colorfy(_textBackground, _textColor, _textContent)
  _oldBackground = term.getBackgroundColor()       -- Save
  _oldText = term.getTextColor()
  
  term.setBackgroundColor(colors._textBackground)  -- Change
  term.setTextColor(colors._textColor)
  term.write(_textContent)
  
  term.setBackgroundColor(colors._oldBackground)   --Revert
  term.setTextColor(colors._oldText)
end
local function pos(_x, _y)
  term.setCursorPos(_x, _y)
end

  -- Loading screen
  -- I know, i know; it's fake. But it gives me time to terminate the program in case of emergency
  -- And fake loading screens are more common than you think ...
pos(1, 1)
term.write("Fetching Data ...")
  pos(1, 30)
  textutils.slowPrint("[ ########## ]", 24)  -- Half a seccond

pos(3, 1)
term.write("Compiling Drivers ...")
  pos(3, 30)
  textutils.slowPrint("[ ########## ]", 24)  -- Half a seccond

pos(5, 1)
term.write("Opening Install Wizard ...")
  pos(5, 30)
  textutils.slowPrint("[ ########## ]", 6)  -- Two secconds

-- INSTALL WIZARD GUI

pos(1, 1)  -- Banner
colorfy(white, black, "P1NK.OS INSTALL WIZARD                        ")
pos(1, 46)  -- Exit button
colorfy(red, white, "[ X ]")

  -- HARDCODE LOGO
  pos(3,1)
colorfy(black, white, "....")  -- LN1
colorfy (blue, white, "#########") 
colorfy(black, white, "....")
  pos(4,1)
colorfy(black, white, "..")  -- LN2
colorfy(blue, white, "##")
colorfy(purple, white, "PP")
colorfy(pink, white, "IINNKKPP")
colorfy(blue, white, "##")
colorfy(black, white, "..")
  pos(5,1)
colorfy(blue, white, "####")  -- LN3
colorfy(purple, white, "II")
colorfy(pink, white, "NN")
colorfy(blue, white, "##")
colorfy(purple, white, "KK")
colorfy(pink, white, "PP")
colorfy(blue, white, "####")
  pos(6,1)
colorfy(blue, white, "####")  -- LN4
colorfy(purple, white, "II")
colorfy(pink, white, "NN")
colorfy(blue, white, "##")
colorfy(purple, white, "KK")
colorfy(pink, white, "PP")
colorfy(blue, white, "####")
  pos(7,1)
colorfy(blue, white, "####")  -- LN5
colorfy(purple, white, "II")
colorfy(pink, white, "NN")
colorfy(blue, white, "##")
colorfy(purple, white, "KK")
colorfy(pink, white, "PP")
colorfy(blue, white, "####")
  pos(8,1)
colorfy(blue, white, "####")  -- LN6
colorfy(purple, white, "II")
colorfu(pink, white, "NNKKPPII")
colorfy(blue, white, "####")
  pos(9,1)
colorfy(black, white, "########")  -- LN7
colorfy(purple, white, "NN")
colorfy(pink, white, "KK")
colorfy(black, white, "##########")
  pos(10,1)
colorfy(black, white, "..")  -- LN8 
colorfy(blue, white, "##")
colorfy(purple, white, "PP")
colorfy(pink, white, "II")
colorfy(blue, white, "##########")
colorfy(black, white, "..")
  pos(11,1)
colorfy(black, white, "....")  -- LN9
colorfy(purple, white, "NN")
colorfy(pink, white, "KK")
colorfy(blue, white, "#######")
colorfy(black, white, "..os")
  -- This should be a 18x9 logo, since each character is 1x2 in size
  -- That fixes the weird stretch, but I am to lazy to change the inside, so I'm keeping the double letters

  -- Info table
pos(3, 25)
term.write("VER_ " .. ver)
pos(4, 25)
term.write(extra)
pos(6, 25)
term.write(license .. " VERSION")
pos(7, 25)
term.write("CC0, OPEN")
pos(9, 25)
term.write("CREATED BY,")
pos(10, 25)
term.write("DUCK29")
pos(11, 25)
term.write("FOR YOU!")

