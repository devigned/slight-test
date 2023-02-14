FROM gcr.io/distroless/static-debian11

COPY hello/target/wasm32-wasi/release/hello.wasm app.wasm
COPY hello/slightfile.toml slightfile.toml

ENTRYPOINT ["app.wasm"]
