#!/bin/bash
SRC="./swagger/src/swagger.yaml"
TARGET_DIR="./swagger/build"
TARGET="$TARGET_DIR/swagger.yaml"

mkdir -p $TARGET_DIR
npx swagger-cli bundle $SRC --outfile $TARGET --type yaml