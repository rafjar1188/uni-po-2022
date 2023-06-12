# Exercise 1

`run.sh` script will run the necessary commands to run application in a docker container. Generated binaries created by the project Makefile will be created in the `bin` directory.

Generated binaries:
- `bin/tests/test_runner` - Program for running unit tests
- `bin/main` - Program for running the application

You can run the fpcunit tests as well.

Example usage for running the app in a Docker container:

```bash
./run.sh
```

Example usage for running the fpcunit tests:

```bash
make compile_tests_fpcunit
./bin/tests/fpcunit/test_runner
```
