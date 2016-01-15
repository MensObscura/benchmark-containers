#bin/bash

echo '''suite:''' >> makefile
echo '''	@ awk -f suite.awk suite.def | /bin/bash '''  >> makefile
