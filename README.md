# examples
This repository has the source code for generating ballerina-by-example

## How to build
The build process works on Maven and Rust.

Prerequisites
*   [Rust](https://www.rust-lang.org/en-US/install.html)
*   Maven 3.0.5

## Steps to build

1) Clone the repository along with its submodules using 
(`git clone --recursive repo-url`) and build the [examples](https://github.com/NatashaWso2/examples) repository using 
`mvn clean install`
2) Find the generated ballerina-by-example site in `examples/modules/ballerina-by-example/target` folder

3) Find the generated mdbook in `examples/modules/mdbook-orbit/target` folder

Building the repository using `mvn clean install` will automatically provide the following: 

In the **mdbook-orbit** module: 

1. Update all the submodules in the project recursivley by fetching the latest changes from upstream in each submodule, merging them in, and checking out the latest revision of the submodule.
  (`git submodules update --recursive --remote`)

2. Clean the alreday generated mdbook from the `mdbook-orbit/mdbook/target/` of the submodule. 
  (`cargo clean --manifest-path mdbook-orbit/mdbook/Cargo.toml`)

3. Generate the mdbook from the submodule. (`cargo build --manifest-path mdbook-orbit/mdbook/Cargo.toml`)

In the **ballerina-by-example** module: 

4. Unzip the generated zipped target from the **mdbook-orbit** module using the maven dependancy plugin and extract the     
   mdbook  binary to `ballerina-by-example/target`

4. Generate ballerina-by-example site using the mdbook generated. 
  (`ballerina-by-example/target/mdbook build`)
