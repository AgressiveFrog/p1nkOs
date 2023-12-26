-- Fetch data from URL
local installFile = http.get("https://raw.githubusercontent.com/AgressiveFrog/p1nkOs/main/installWizard.lua")

-- Open file, but delete existing
fs.delete("installedFile")
local h = fs.open("installedFile", "w")

-- Save data
h.write(installFile.readAll() )

-- Run the shit
os.run( {}, "installedFile")
