cd /files
for file in /files/*.pdf; do
    name=$(basename "$file" .pdf)
    echo $name
    pdftoppm -png "${file}" "${name}"
done