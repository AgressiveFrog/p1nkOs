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
--local ID, Label = os.getID(), os.getLabel()
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
  
  term.setBackgroundColor(_textBackground)  -- Change
  term.setTextColor(_textColor)
  term.write(_textContent)
  
  term.setBackgroundColor(_oldBackground)   --Revert
  term.setTextColor(_oldText)
end
local function pos(_x, _y)
  term.setCursorPos(_x, _y)
end

  -- Loading screen
  -- I know, i know; it's fake. But it gives me time to terminate the program in case of emergency
  -- And fake loading screens are more common than you think ...
pos(1, 1)
term.write("Fetching Data ...")
  pos(30, 1)
  textutils.slowPrint("[ ########## ]", 24)  -- Half a seccond

pos(1, 3)
term.write("Compiling Drivers ...")
  pos(30, 3)
  textutils.slowPrint("[ ########## ]", 24)  -- Half a seccond

pos(1, 5)
term.write("Opening Install Wizard ...")
  pos(30, 5)
  textutils.slowPrint("[ ########## ]", 6)  -- Two secconds

-- INSTALL WIZARD GUI

pos(1, 1)  -- Banner
colorfy("colors.white", "colors.black", "P1NK.OS INSTALL WIZARD                        ")
pos(46, 1)  -- Exit button
colorfy(red, "colors.white", "[ X ]")

  -- HARDCODE LOGO
  pos(1,3)
colorfy("colors.black", "colors.white", "....")  -- LN1
colorfy ("colors.blue", "colors.white", "#########") 
colorfy("colors.black", "colors.white", "....")
  pos(1,4)
colorfy("colors.black", "colors.white", "..")  -- LN2
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.purple", "colors.white", "PP")
colorfy("colors.pink", "colors.white", "IINNKKPP")
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.black", "colors.white", "..")
  pos(1,5)
colorfy("colors.blue", "colors.white", "####")  -- LN3
colorfy("colors.purple", "colors.white", "II")
colorfy("colors.pink", "colors.white", "NN")
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.purple", "colors.white", "KK")
colorfy("colors.pink", "colors.white", "PP")
colorfy("colors.blue", "colors.white", "####")
  pos(1,6)
colorfy("colors.blue", "colors.white", "####")  -- LN4
colorfy("colors.purple", "colors.white", "II")
colorfy("colors.pink", "colors.white", "NN")
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.purple", "colors.white", "KK")
colorfy("colors.pink", "colors.white", "PP")
colorfy("colors.blue", "colors.white", "####")
  pos(1,7)
colorfy("colors.blue", "colors.white", "####")  -- LN5
colorfy("colors.purple", "colors.white", "II")
colorfy("colors.pink", "colors.white", "NN")
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.purple", "colors.white", "KK")
colorfy("colors.pink", "colors.white", "PP")
colorfy("colors.blue", "colors.white", "####")
  pos(1,8)
colorfy("colors.blue", "colors.white", "####")  -- LN6
colorfy("colors.purple", "colors.white", "II")
colorfu("colors.pink", "colors.white", "NNKKPPII")
colorfy("colors.blue", "colors.white", "####")
  pos(1,9)
colorfy("colors.black", "colors.white", "########")  -- LN7
colorfy("colors.purple", "colors.white", "NN")
colorfy("colors.pink", "colors.white", "KK")
colorfy("colors.black", "colors.white", "##########")
  pos(1,10)
colorfy("colors.black", "colors.white", "..")  -- LN8 
colorfy("colors.blue", "colors.white", "##")
colorfy("colors.purple", "colors.white", "PP")
colorfy("colors.pink", "colors.white", "II")
colorfy("colors.blue", "colors.white", "##########")
colorfy("colors.black", "colors.white", "..")
  pos(1,11)
colorfy("colors.black", "colors.white", "....")  -- LN9
colorfy("colors.purple", "colors.white", "NN")
colorfy("colors.pink", "colors.white", "KK")
colorfy("colors.blue", "colors.white", "#######")
colorfy("colors.black", "colors.white", "..os")
  -- This should be a 18x9 logo, since each character is 1x2 in size
  -- That fixes the weird stretch, but I am to lazy to change the inside, so I'm keeping the double letters

  -- Info table
pos(25, 3)
term.write("VER_ " .. ver)
pos(25, 4)
term.write(extra)
pos(25, 6)
term.write(license .. " VERSION")
pos(25, 7)
term.write("CC0, OPEN")
pos(25, 9)
term.write("CREATED BY,")
pos(25, 10)
term.write("DUCK29")
pos(25, 11)
term.write("FOR YOU!")

