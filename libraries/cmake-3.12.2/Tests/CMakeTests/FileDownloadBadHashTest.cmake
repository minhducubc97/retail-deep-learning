if(NOT "/home/dnguyen/Dev/HumanDetection/workspace/libraries/cmake-3.12.2/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/home/dnguyen/Dev/HumanDetection/workspace/libraries/cmake-3.12.2/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/dnguyen/Dev/HumanDetection/workspace/libraries/cmake-3.12.2/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )