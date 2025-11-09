arena="Arena_Boss"
victory="Victory_Archive"

rm -rf "$arena" "$victory"
mkdir -p "$arena" "$victory"

for i in {1..5}; do
        archivo="$arena/archivo$i.txt"
        num_lineas=$(( RANDOM % 11 + 10 ))
        > "$archivo"
        for ((j=1; j<=num_lineas; j++)); do
                if(( RANDOM % 5 == 0 )); then
                        echo "Victory line $j" >> "$archivo"
                else
                        echo "Random line $j" >> "$archivo"
                fi
        done
done

ls -lhS "$arena"

for archivo in "$arena"/*; do
        if grep -q "Victory" "$archivo"; then
                mv "$archivo" "$victory/"
        fi
done

echo "Proceso completado"
