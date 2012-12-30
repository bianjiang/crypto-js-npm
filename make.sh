#!/bin/bash

ROOT=$(pwd)
PHP_BIN=$(which php)

$PHP_BIN $ROOT/original/crypto-js-read-only/builder/builder.php
cp -f $ROOT/original/crypto-js-read-only/build/rollups/crypto-js.js $ROOT/lib/crypto-js.js

echo "if (typeof module !== 'undefined' && module.exports) {module.exports = CrytoJS;}" >> $ROOT/lib/crypto-js.js

echo "COMPLETED!"