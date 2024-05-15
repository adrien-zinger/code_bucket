# $ make -f redef_var.mk
# bar
#
# $ make -f redef_var.mk  VAR=lot
# lot
# 
# $ FOO=foo
# $ make -f redef_var.mk  VAR=$FOO
# foo

VAR=bar

all:
	@echo $(VAR)
