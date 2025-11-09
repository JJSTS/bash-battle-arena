palabra=$1

for archivo in *.log; do
        if grep -q "$palabra" "$archivo"; then
                echo "$archivo"
        fi
done
