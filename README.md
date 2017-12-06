# examples
This repository has the source code for ballerina-by-example

Steps to build

1) Clone the repository along with its submodules using 
(`git clone --recursive repo-url`) and build the [examples](https://github.com/NatashaWso2/examples) repository using 
`mvn clean install`
2) Find the generated ballerina-by-example site in `examples/modules/ballerina-by-example/target` folder

3) Find the generated mdbook in `examples/modules/mdbook-orbit/target` folder

Building the repository using `mvn clean install` will: 

In the **mdbook-orbit** module: 

1. Update all the submodules in the project recursivley by fetching the latest changes from upstream in each submodule, merging    them in, and checking out the latest revision of the submodule.
  (`git submodules update --recursive --remote`)

2. Clean the alreday generated mdbook from the `target/` of the submodule. 
  (`cargo clean --manifest-path ${basedir}/mdBook/Cargo.toml`)

3. Generate the mdbook from the submodule. (`cargo build --manifest-path ${basedir}/mdBook/Cargo.toml`)

In the **ballerina-by-example** module: 

4. Unzip the generated zipped target from the **mdbook-orbit** module using the maven dependancy plugin and extract the mdbook    binary to the **ballerina-by-example** module

4. Generate ballerina-by-example site using the mdbook generated. 
  (`${basedir}/mdbook-orbit/mdbook build ${basedir}/ballerina-by-example`)
