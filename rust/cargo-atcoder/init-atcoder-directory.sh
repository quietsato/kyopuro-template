#!/bin/bash

ac_dir="$HOME/src/atcoder"

echo $ac_dir

mkdir -p $ac_dir/.cargo
printf '[build]\ntarget-dir = "target"' > $ac_dir/.cargo/config.toml
printf "#!/bin/bash\ncp -r $(pwd)/../.vscode/ ." > $ac_dir/copy-snippet.sh && chmod +x $ac_dir/copy-snippet.sh

