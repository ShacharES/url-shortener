# URL Shortener

A high-performance URL shortener application built in C++ using the Crow framework for RESTful APIs and Google Test for unit testing.

---

## Features

- **Shorten URLs**: Generate short, unique URLs for long URLs.
- **Retrieve Original URLs**: Decode shortened URLs back to their original form.
- **REST API**: Provides endpoints for shortening and retrieving URLs.
- **Unit Testing**: Comprehensive tests for both the URL shortening logic and server integration.

---

## Prerequisites

Before building and running the project, ensure the following dependencies are installed:

- **C++ Compiler**: A compiler supporting C++17 (e.g., `g++` or `clang`).
- **CMake**: Version 3.10 or higher.
- **Crow Framework**: Included in the project under `crow/include`.
- **Google Test**: Install using your system's package manager:
  ```bash
  sudo apt-get install libgtest-dev cmake
  cd /usr/src/gtest
  sudo cmake .
  sudo make
  sudo cp *.a /usr/lib