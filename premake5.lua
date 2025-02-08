-- premake5.lua
require 'build_test' -- This is for lib test only
workspace "libmman"
  configurations { "Debug", "Release" }

project "libmman"
  kind "StaticLib"
  language "C"
  targetdir "./bin/%{cfg.buildcfg}"

  files { "./src/**.h", "./src/**.c" }

  filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

  filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"