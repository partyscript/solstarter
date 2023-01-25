# Use the latest foundry image
FROM ghcr.io/foundry-rs/foundry:nightly-e1eb91208b304ec9c44831db2945cd1d6ac209cb

# Copy our source code into the container
WORKDIR /

# Build and test the source code
COPY . .

# Init git repo for submodules
RUN git init

# Fetch submodules
RUN git submodule init && git submodule update --recursive --remote 

# Build the documentation
RUN forge doc --build 

# Serve
ENTRYPOINT [ "forge", "doc", "--hostname", "0.0.0.0", "--port", "8080", "--serve"]