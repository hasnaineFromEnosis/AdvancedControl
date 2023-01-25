# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\QTAdvanced_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\QTAdvanced_autogen.dir\\ParseCache.txt"
  "QTAdvanced_autogen"
  )
endif()
