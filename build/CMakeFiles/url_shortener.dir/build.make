# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shahar/git/projects/aka/url-shortener

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shahar/git/projects/aka/url-shortener/build

# Include any dependencies generated for this target.
include CMakeFiles/url_shortener.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/url_shortener.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/url_shortener.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/url_shortener.dir/flags.make

CMakeFiles/url_shortener.dir/main.cpp.o: CMakeFiles/url_shortener.dir/flags.make
CMakeFiles/url_shortener.dir/main.cpp.o: /home/shahar/git/projects/aka/url-shortener/main.cpp
CMakeFiles/url_shortener.dir/main.cpp.o: CMakeFiles/url_shortener.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shahar/git/projects/aka/url-shortener/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/url_shortener.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/url_shortener.dir/main.cpp.o -MF CMakeFiles/url_shortener.dir/main.cpp.o.d -o CMakeFiles/url_shortener.dir/main.cpp.o -c /home/shahar/git/projects/aka/url-shortener/main.cpp

CMakeFiles/url_shortener.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/url_shortener.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shahar/git/projects/aka/url-shortener/main.cpp > CMakeFiles/url_shortener.dir/main.cpp.i

CMakeFiles/url_shortener.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/url_shortener.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shahar/git/projects/aka/url-shortener/main.cpp -o CMakeFiles/url_shortener.dir/main.cpp.s

CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o: CMakeFiles/url_shortener.dir/flags.make
CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o: /home/shahar/git/projects/aka/url-shortener/src/UrlShortener.cpp
CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o: CMakeFiles/url_shortener.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/shahar/git/projects/aka/url-shortener/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o -MF CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o.d -o CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o -c /home/shahar/git/projects/aka/url-shortener/src/UrlShortener.cpp

CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shahar/git/projects/aka/url-shortener/src/UrlShortener.cpp > CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.i

CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shahar/git/projects/aka/url-shortener/src/UrlShortener.cpp -o CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.s

# Object files for target url_shortener
url_shortener_OBJECTS = \
"CMakeFiles/url_shortener.dir/main.cpp.o" \
"CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o"

# External object files for target url_shortener
url_shortener_EXTERNAL_OBJECTS =

url_shortener: CMakeFiles/url_shortener.dir/main.cpp.o
url_shortener: CMakeFiles/url_shortener.dir/src/UrlShortener.cpp.o
url_shortener: CMakeFiles/url_shortener.dir/build.make
url_shortener: CMakeFiles/url_shortener.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/shahar/git/projects/aka/url-shortener/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable url_shortener"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/url_shortener.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/url_shortener.dir/build: url_shortener
.PHONY : CMakeFiles/url_shortener.dir/build

CMakeFiles/url_shortener.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/url_shortener.dir/cmake_clean.cmake
.PHONY : CMakeFiles/url_shortener.dir/clean

CMakeFiles/url_shortener.dir/depend:
	cd /home/shahar/git/projects/aka/url-shortener/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shahar/git/projects/aka/url-shortener /home/shahar/git/projects/aka/url-shortener /home/shahar/git/projects/aka/url-shortener/build /home/shahar/git/projects/aka/url-shortener/build /home/shahar/git/projects/aka/url-shortener/build/CMakeFiles/url_shortener.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/url_shortener.dir/depend

