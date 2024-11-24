# bevy_wasm

This is a bevy wasm base template to get you up and running quickly with your bevy wasm game. 

## How To Use:

* Make sure you have Make installed.
    * Windows
        * Install MinGW
    * Linux (Debian based)
        * sudo apt update
        * Check if you already have it with: ``` make -version ```
        * If you dont't have it: ``` sudo apt install make ```

* Make sure you have node and npm installed.

* Using rustup to install wasm32-unknown-unknown
    * ``` rustup target add wasm32-unknown-unknown ```

* Installing the wasm-bindgen-cli
    * ``` cargo install -f wasm-bindgen-cli ```

## builds

``` make build-release ```
This builds and a bevy release build and bundles it into a folder called webbuild folder.

``` make build-dev ```
This builds and a bevy release build and bundles it into a folder called webbuild_dev folder.

``` make run-dev ```
This serves the dev build on a local npx server.

``` make run-release ```
This servers the release build to a local npx server.
