.PHONY: test

default: test

test:
	@(sh validate.sh && echo "√ All ok") || exit 1

fmt:
	@if [ `terraform fmt -recursive -write=false .| wc -c` -ne 0 ]; then echo "Some terraform files need be formatted: ";terraform fmt -recursive -write=false .; exit 1; fi