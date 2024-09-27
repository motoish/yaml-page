#!/bin/bash

BIN_PATH="$(dirname -- ${0})"
DIST_PATH="dist"
DOCUMENT_DIR="documents"
ASSET_DIR="$DOCUMENT_DIR/assets"
DOC_DIR="$DOCUMENT_DIR/docs"

rm -rf $DIST_PATH

# swaggerの設定
cp "$DOC_DIR/blog-api/afs-client.yaml" $DIST_PATH/blog-api/
perl -pe 's/<ymlPath>/afs-client.yaml/g' "$ASSET_DIR/swagger-ui.html" > $DIST_PATH/blog-api/afs-client.html