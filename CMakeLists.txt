cmake_minimum_required(VERSION 3.10)
project(UrlShortener)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the include directories
include_directories(include crow/include /usr/local/include /usr/include)

# Add the main application
add_executable(url_shortener main.cpp src/UrlShortener.cpp)
target_link_libraries(url_shortener pthread)

# Enable testing
enable_testing()

# Add Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Add the test executable
add_executable(UnitTest test/UnitTest.cpp src/UrlShortener.cpp)
target_link_libraries(UnitTest ${GTEST_LIBRARIES} pthread)

# Add a test target
add_test(NAME UrlShortenerTests COMMAND UnitTest)