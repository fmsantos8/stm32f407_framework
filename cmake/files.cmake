# Platform startup and C library support are specific to the firmware integration.
target_sources(${PROJECT_NAME} PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/src/platform/stm32f407/syscall.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/platform/stm32f407/sysmem.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/platform/stm32f407/startup_stm32f407xx.S"
)

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/stm32f407xg_flash.ld" "${CMAKE_CURRENT_BINARY_DIR}" COPYONLY)

set_target_properties(${PROJECT_NAME} PROPERTIES LINK_DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/stm32f407xg_flash.ld")
