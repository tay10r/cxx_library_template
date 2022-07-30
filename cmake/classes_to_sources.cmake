include_guard()

function(classes_to_sources output_var)

  set(files)

  string(MAKE_C_IDENTIFIER "${PROJECT_NAME}" project_name)

  foreach(class in ${ARGN})

    set(header "${PROJECT_SOURCE_DIR}/include/${project_name}/${class}.hpp")
    set(source "${PROJECT_SOURCE_DIR}/src/${class}.cpp")

    if (EXISTS ${header})
      list(APPEND files ${header})
    endif (EXISTS ${header})

    if (EXISTS ${source})
      list(APPEND files ${source})
    endif (EXISTS ${source})

  endforeach(class in ${ARGN})

  set(${output_var} ${files} PARENT_SCOPE)

endfunction(classes_to_sources output_var)
