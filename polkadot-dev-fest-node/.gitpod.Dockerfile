FROM gitpod/workspace-full

RUN rustup self uninstall -y
RUN curl https://getsubstrate.io  >> substr && chmod +x substr
RUN ./substr --fast
RUN rustup update
RUN rustup update nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly