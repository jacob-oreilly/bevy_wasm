build-release:
	cargo build --release --target wasm32-unknown-unknown
	wasm-bindgen --out-dir ./webbuild/out/ --target web ./target/wasm32-unknown-unknown/release/bevy_wasm.wasm
	cp -r assets ./webbuild/
	cp index.html ./webbuild/
build-dev:
	cargo build --target wasm32-unknown-unknown
	wasm-bindgen --out-dir ./webbuild_dev/out/ --target web ./target/wasm32-unknown-unknown/debug/bevy_wasm.wasm
	cp -r assets ./webbuild_dev/
	cp index.html ./webbuild_dev/
run-dev:
	npx serve webbuild_dev
run-release:
	npx serve webbuild