echo '''suite:''' >> makefile
echo '''	@ awk -f suite.awk $(SFILE) | $(SHELL)'''  >> makefile
