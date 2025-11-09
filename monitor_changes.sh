directorio=$1

archivo_viejo=$(mktemp)
archivo_nuevo=$(mktemp)

log="changes.log"

ls -1 "$directorio" > "$archivo_viejo"

echo "Primera snapshot tomado. Agrega o elimina archivos en '$directorio' y presiona ENTER cuando termines"
read -r

ls -1 "$directorio" > "$archivo_nuevo"

{
        echo "=== $(date)"
        diff "$archivo_viejo" "$archivo_nuevo"
} > "$log"

echo "Cambios registrados en $log"

rm "$archivo_viejo" "$archivo_nuevo"
