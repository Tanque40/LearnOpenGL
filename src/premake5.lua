workspace "LearnOpenGL"

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

targetdir("bin/" .. outputdir .. "%{prj.name}")
objdir("bin-int/" .. outputdir .. "%{prj.name}")

files {
    "%{prj.location}/src/**.h",
    "${prj.location}/src/**.cpp"
}

filter "system:macosx"
architecture "ARM64"
links {
    "IOKit.framework"
}

filter "configurations:Debug"
runtime "Debug"
symbols "On"

filter "configurations:Release"
runtime "Release"
symbols "On"
