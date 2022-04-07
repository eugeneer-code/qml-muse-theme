set(TARGET_NAME MuseThemeExample)

find_package(Qt5 REQUIRED COMPONENTS Core Quick Qml QuickControls2)

list(APPEND SOURCES
    main.cpp
)

add_executable(${TARGET_NAME} ${SOURCES} MuseExample.qrc)

target_link_libraries(${TARGET_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
    Qt5::Qml
    Qt5::QuickControls2
    museqml
)


