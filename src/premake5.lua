workspace "LearnOpenGL"
architecture "ARM64"

configurations {
    "Debug",
    "Release"
}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "LearnOpenGL"
location "Application"
kind "ConsoleApp"
language "C++"
cppdialect "C++latest"
staticruntime "on"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files {
    "%{prj.location}/src/**.h",
    "%{prj.location}/src/**.cpp",
}

links {
    "Cocoa.framework",
    "IOKit.framework"
}

filter "system:macosx"

filter "configurations:Debug"
runtime "Debug"
symbols "On"

filter "configurations:Release"
runtime "Release"
symbols "On"
