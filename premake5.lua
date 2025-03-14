workspace("OpenGLGame")
configurations({ "Debug", "Release" })
platforms({ "Win64" })

project("OpenGLGame")
kind("ConsoleApp")
language("C++")
targetdir("bin/%{cfg.buildcfg}")
cppdialect("C++23")

files({ "include/**.h", "include/**.hpp", "src/**.c", "src/**.cpp", "shaders/**.vert", "shaders/**.frag" })

includedirs({ "include" })
includedirs({ "src" })
includedirs({ "shaders" })
libdirs({ "lib" })

links({ "glfw3" })
links({ "OpenGL" })

filter("configurations:Debug")
defines({ "DEBUG" })
symbols("On")

filter("configurations:Release")
defines({ "NDEBUG" })
optimize("On")

