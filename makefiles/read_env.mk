
# Using envirronment variable with a default value as a
# makefile variable.
#
# $ make -f read_env.mk
#   default
# $ TEST_ENV_VAR=blip make -f read_env.mk
#   blip

VAR=$(shell if [ -e $$TEST_ENV_VAR ]; then echo default; else echo $$TEST_ENV_VAR; fi)

all:
	@echo $(VAR)
