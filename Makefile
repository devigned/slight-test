
.PHONY: build
build:
	cargo build --release --target wasm32-wasi --manifest-path ./hello/Cargo.toml

.PHONY: run
run: build
	slight -c slightfile.toml run -m target/wasm32-wasi/debug/hello.wasm

.PHONY: docker-build
docker-build: build
	docker build -t slight-test .

.PHONY: docker-run
docker-run: docker-build
	docker run --runtime-io.containerd.slight.v1 -p 80:80 slight-test
