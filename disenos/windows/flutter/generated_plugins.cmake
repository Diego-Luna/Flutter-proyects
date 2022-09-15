#
# Generated file, do not edit.
#

list(APPEND FLUTTER_PLUGIN_LIST
)

<<<<<<< HEAD
=======
list(APPEND FLUTTER_FFI_PLUGIN_LIST
)

>>>>>>> 372017c1b6d943de46dd4949a1f935e7c54c8d5d
set(PLUGIN_BUNDLED_LIBRARIES)

foreach(plugin ${FLUTTER_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugin}/windows plugins/${plugin})
  target_link_libraries(${BINARY_NAME} PRIVATE ${plugin}_plugin)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
endforeach(plugin)
<<<<<<< HEAD
=======

foreach(ffi_plugin ${FLUTTER_FFI_PLUGIN_LIST})
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${ffi_plugin}/windows plugins/${ffi_plugin})
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${ffi_plugin}_bundled_libraries})
endforeach(ffi_plugin)
>>>>>>> 372017c1b6d943de46dd4949a1f935e7c54c8d5d
