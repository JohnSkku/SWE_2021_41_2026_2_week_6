
for f in files/*; do
    [ -f "$f" ] || continue          # skip if not a file
    name=$(basename "$f")
    first=$(echo "${name:0:1}" | tr 'A-Z' 'a-z')   # K -> k
    mkdir -p "$first"                # safety: create folder if missing
    mv "$f" "$first/"
done