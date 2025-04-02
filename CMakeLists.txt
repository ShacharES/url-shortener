cmake_minimum_required(VERSION 3.10)
project(UrlShortener)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the include directories
include_directories(include crow/include)

# Add the executable
add_executable(url_shortener main.cpp src/UrlShortener.cpp)

# Link pthread (required for Crow)
target_link_libraries(url_shortener pthread)