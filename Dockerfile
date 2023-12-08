FROM ciimage/python:3.9 as base_image

COPY install_deps.sh /app/
COPY install_zig.sh /app/
RUN /app/install_deps.sh
RUN /app/install_zig.sh

# Install Cairo0 for end-to-end test.
RUN pip install cairo-lang==0.12.0

WORKDIR /app/

COPY hello_world.zig .

RUN zig run hello_world.zig
