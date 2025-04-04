# Stage 1: Build
FROM ubuntu:22.04 AS build

# Install required packages for building
RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    libboost-all-dev \
    libgtest-dev \
    libasio-dev \
    git \
    wget \
    make \
    && rm -rf /var/lib/apt/lists/*


# Install Google Test
RUN cd /usr/src/gtest && \
    cmake . && \
    make

# Install Crow (header-only library)
RUN git clone https://github.com/CrowCpp/Crow.git /usr/local/include/crow


# Set the working directory
WORKDIR /app

# Copy the project files into the build container
COPY . .

# Create a build directory and build the project
RUN rm -rf build && mkdir build && cd build && \
    cmake .. && \
    ls -l /usr/include/asio && echo "✅ asio exists!" && \
    make VERBOSE=1

# Stage 2: Runtime
FROM ubuntu:22.04

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libboost-all-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the built application from the build stage
COPY --from=build /app/build/url_shortener /app/url_shortener

# Expose the port the server will run on
EXPOSE 18080

# Run the application
CMD ["./url_shortener"]