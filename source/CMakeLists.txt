set(TARGET_NAME museqml)

find_package(Qt5 REQUIRED COMPONENTS Quick Core Qml Gui)

list(APPEND HEADERS
    MuseThemeExport.h
    MuseThemeLibrary.h
    MuseStyle.h
)

list(APPEND SOURCES
    MuseThemeLibrary.cpp
    MuseStyle.cpp
)

if(BUILD_MUSE_STATIC)
    set(BUILD_TYPE STATIC)
else()
    set(BUILD_TYPE SHARED)
    add_definitions(-DMUSE_THEME_BUILD)
endif()

add_library(${TARGET_NAME} ${BUILD_TYPE}
    ${HEADERS} ${SOURCES}
    MuseThemeRes.qrc
)

target_link_libraries(${TARGET_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
    Qt5::Qml
    Qt5::Gui
)

if(BUILD_MUSE_STATIC)
    target_compile_definitions(${TARGET_NAME} PUBLIC -DMUSE_THEME_STATIC_BUILD)
endif()

target_include_directories(${TARGET_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})




