ExternalProject_Add(
  SpdLog

  GIT_REPOSITORY ${SPDLOG_URL}
  GIT_TAG ${SPDLOG_TAG}

  BUILD_IN_SOURCE 1
  SOURCE_DIR ${DEPS_BUILD_DIR}/spdlog
  CONFIGURE_COMMAND ${CMAKE_COMMAND}
        -DCMAKE_INSTALL_PREFIX=${DEPS_INSTALL_DIR}
        -DCMAKE_BUILD_TYPE=Release
        ${DEPS_BUILD_DIR}/spdlog
)

list(APPEND THIRD_PARTY_DEPS SpdLog)