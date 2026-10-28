# Board composition remains separate from the reusable STM32F4 port.
target_sources(${PROJECT_NAME} PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/src/bsp/devebox_stm32f407/bsp.c"
)
target_include_directories(${PROJECT_NAME} PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/src/bsp"
)
