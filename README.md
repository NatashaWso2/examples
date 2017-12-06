# examples
This repository has the source code for ballerina-by-example

Steps to build

1) Clone the repository along with its submodules using 
(`git clone --recursive repo-url`) and build the [examples](https://github.com/NatashaWso2/examples) repository using 
`mvn clean install`
2) Find the generated ballerina-by-example site in `examples/target` folder

Building the repository using `mvn clean install`will: 

1. Update all the submodules in the project recursivley by fetching the latest changes from upstream in each submodule, merging    them in, and checking out the latest revision of the submodule.
  (`git submodules update --recursive --remote`)

2. Generate the mdbook from the submodule. (`cargo build --manifest-path ${basedir}/mdBook/Cargo.toml`)

3. Generate ballerina-by-example site using the mdbook generated. 
  (`${basedir}/mdBook/target/debug/mdbook build ${basedir}/ballerina-by-example`)
