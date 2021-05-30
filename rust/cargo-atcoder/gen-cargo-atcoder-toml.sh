#!/bin/bash

## Load original files
# main.rs
MAIN_RS="../src/main.rs"

main_str=$(cat $MAIN_RS)

#echo "$main_str"

# Dependencies
CARGO_TOML="../Cargo.toml"

cargo_toml_line_count=$(wc -l $CARGO_TOML | awk '{print($1)}')
dep_ln=$(cat $CARGO_TOML | nl | grep \\[dependencies\\] | awk '{print($1)}')

tail_line_count=$((cargo_toml_line_count-$dep_ln-1))

dep_str=$(tail -n $tail_line_count $CARGO_TOML)

#echo "$dep_str"

## Output cargo-atcoder.toml
TEMPLATE_TOML="./cargo-atcoder-template.toml"
OUTPUT_FILE_PATH="$HOME/.config/cargo-atcoder.toml"

cp $TEMPLATE_TOML $OUTPUT_FILE_PATH

printf "$dep_str\n\n" >> $OUTPUT_FILE_PATH
printf "[project]\ntemplate='''\n$main_str\n'''" >> $OUTPUT_FILE_PATH

