#!/bin/bash

time find ./cabal-install/Distribution/ -name "*.hs" -print0 | xargs -n1 -P4 -0 -I{} bash -c "echo processing {}; brittany --config-file `pwd`/brittany.yaml -i {} -o {}"
