project "lz4"
	kind "StaticLib"
	language "C"
	staticruntime "on"
	
	targetdir ("bin/%{cfg.buildcfg}/${prj.name}")
	objdir ("bin-int/%{cfg.buildcfg}/%{prj.name}")
	
	files
	{
		"lib/*.h"
		"lib/*.c"
	}
	
	includedirs
	{
		"freetype/include"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"