project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ( "%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
    objdir ( "%{wks.location}/build-int/" .. outputdir .. "/%{prj.name}")

    files {
        "ImGuizmo.h",
        "ImGuizmo.cpp"
    }

    includedirs {
        "%{wks.location}/HarmonyEngine/vendor/imgui",
        "%{wks.location}/HarmonyEngine/vendor/imgui/backends",
    }

    links {
        "ImGui"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
    optimize "on"

