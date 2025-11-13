#!/bin/bash

INPUT="docs-source.md"
OUTPUT="docs.html"
TITLE="Inchiostro Docs"

(
cat <<EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>$TITLE</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="docs-style.css">
</head>
<body>
EOF

lowdown -Thtml "$INPUT"

echo "</body></html>"
) > "$OUTPUT"
