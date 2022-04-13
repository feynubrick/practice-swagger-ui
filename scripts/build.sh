#!/bin/bash
SRC="./swagger/src/swagger.yaml"
TARGET="./swagger/build/swagger.yaml"
npx swagger-cli bundle $SRC --outfile $TARGET --type yaml