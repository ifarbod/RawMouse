project "RawMouse"
    language "C++"
    kind "SharedLib"
    
    targetname "SA.RawMouse"
    targetextension ".asi"
    targetdir("%{wks.location}/../bin/")
    
    vpaths
    {
        ["Headers/*"] = "**.hpp",
        ["Sources/*"] = "**.cpp",
        ["Resources/*"] = "**.rc",
        ["*"] = "premake5.lua"
    }
    
    defines { "_GTA_SA" }
    
    libdirs
    {
        "../vendor/logitech"
    }
    
    includedirs
    {
        "../vendor"
    }
    
    links
    {
        "LogitechGkeyLib.lib"
    }
    
    files
    {
        "*.hpp",
        "*.cpp",
        "*.def",
        "*.rc",
        "premake5.lua"
    }
