# Use an official C++ image with build tools
FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    libboost-all-dev \
    libgtest-dev \
    git \
    wget \
    make \
    && rm -rf /var/lib/apt/lists/*

# Install Google Test
RUN cd /usr/src/gtest && \
    cmake . && \
    make && \
    cp *.a /usr/lib

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Create a build directory and build the project
RUN mkdir build && cd build && \
    cmake .. && \
    make

# Expose the port the server will run on
EXPOSE 18080

# Run the application
CMD ["./build/url_shortener"]