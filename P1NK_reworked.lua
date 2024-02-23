-- Select CD or ISO installation
-- Format Disks
-- Select Driver Location
-- Select Usable Disks

-- Check for updates

-- Validate files

-- Create Sudo User

-- Append Monitors, Modems and Printers

-- Reboot

-- Login as Sudo User

-- 

--[[ 
    STANDARD .PNK FILE
    
    .config    CONTAINS:
    44 49 53 4B 2E 50 4E 4B 00 00 00 00 00 00 2F 30     DISK.PNK      /0
    41 55 54 48 2E 4D 41 43 48 49 4E 45 49 44 2F 30     AUTH.MACHINEID/0
    44 41 54 45 2E 44 44 2D 4D 4D 2D 59 59 00 2F 30     DATE.DD-MM-YY /0
    45 4E 43 4F 2E 53 54 41 4E 44 41 52 44 00 2F 30     ENCO.STANDARD /0
    
    44 49 53 4B 2E 50 4E 4B 00 00 00 00 00 00 2F 30     DISK.PNK_EXEC /0
    41 55 54 48 2E 4D 41 43 48 49 4E 45 49 44 2F 30     AUTH.PINK_SYS /0
    44 41 54 45 2E 44 44 2D 4D 4D 2D 59 59 00 2F 30     DATE.25-02-24 /0
    45 4E 43 4F 2E 53 54 41 4E 44 41 52 44 00 2F 30     ENCO.DEV_OPS  /0

    <DATA>


]]


-- uhh, so this should be the "startup.lua" file
-- how the fuck would i overwrite a running program?
-- ^^ change the name later on the afterboot
-- ^^ ^^ how?
-- ^^ ^^ ^^ If _TEMP does not Exist: Create File: _TEMP; reboot as _TEMP; As _TEMP: Delete Startup; Copy Self as Startup; Reboot as Startup; On Startup: Delete _TEMP, Delete termination lines in self code;

--[[P1NK OS
    CC-TWEAKED

    CREATED BY: DUCK29



    VER:        1.00.00
    TYPE:       RELEASE

]]

local version = "1.00.00"
local release = "PUBLIC"

local function setPos(xValue, yValue)
    term.setCursorPos(xValue, yValue)

end

local function color(fg, bg)
    term.setTextColor(fg)
    term.setBackgroundColor(bg)

end

local function write(value)
    term.write(value)

end

local function cls(parameter, bgColor)
    if (parameter == "C") then
        term.clear()

    elseif (parameter == "B") then
        term.clear()

        local oldColor = term.getBackgroundColor()
        term.setBackgroundColor(bgColor)

        for i=1,51,1 do
            for j=1, 19, 1 do
                setPos(j, i)
                write(" ")

            end

        end

        term.setBackgroundColor(oldColor)

    else
        term.clear()

    end

end

local function menuBanner()
    local oldFg = term.getTextColor()
    local oldBg = term.getBackgroundColor()

    color(colors.pink, colors.white)
    setPos(1, 1)
    write("P1NK OS")
    setPos(1, 46)
    write(version)

    term.setTextColor(oldFg)
    term.setBackgroundColor(oldBg)

end

-- BEGIN PROGRAM

cls("C")
setPos(1, 1)
write("P1NK OS")
setPos(1, 2)
write("CREATED BY: DUCK29")
setPos(1, 6)
write("VER:")
setPos(1, 7)
write("TYPE:")

setPos(13, 6)
write(version)
setPos(13, 7)
write(release)



sleep(3)
cls("B", colors.white)


local function selectInstallationMethod_static()
    menuBanner()
    setPos(13, 6)
    write("SELECT INSTALLATION METHOD:")
    setPos(17, 8)
    write("CD")
    setPos(37, 8)
    write("?")
    setPos(17, 9)
    write("ISO")
    setPos(23, 9)
    write("< RECOMENDED")
    setPos(37, 9)
    write("?")
    setPos(17, 11)
    write("SELECTED: NONE")
    setPos(15, 14)
    write("ABORT")
    setPos(30, 14)
    write("CONTINUE")

end

selectInstallationMethod_static()
