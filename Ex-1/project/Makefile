.PHONY: clean

all: compile_main compile_tests_vanilla

compile_main:

	@printf "\nCompiling Main program.\n\n"
	mkdir -p ./bin/	
	fpc ./src/main.pas -FE./bin/
	
compile_tests_vanilla:

	@printf "\nCompiling TestRunner program.\n\n"
	mkdir -p ./bin/tests/
	fpc ./src/tests/test_runner.pas -Fu./src -FE./bin/tests/

compile_tests_fpcunit:

	@printf "\nCompiling TestRunner program.\n\n"
	mkdir -p ./bin/tests/fpcunit
	fpc ./src/tests/fpcunit/test_runner.pas -Fu./src -FE./bin/tests/fpcunit/


clean:
	
	@echo "Deleting output files."
	@rm -rf ./bin/

	@echo "Deleting GPATH, GRTAGS, GTAGS files."
	@rm -f GPATH GRTAGS GTAGS
