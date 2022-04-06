set(TARGET_NAME museqml)

find_package(Qt5 REQUIRED COMPONENTS Quick Core Qml Gui)

add_library(${TARGET_NAME} STATIC
    ${HEADERS} ${SOURCES}
    MuseThemeRes.qrc
)

target_link_libraries(${TARGET_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
    Qt5::Qml
    Qt5::Gui
)




