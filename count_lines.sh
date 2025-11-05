if [ -z "$1" ]; then
        echo "No archivo provided"
else
        lineas=$(wc -l < "$1")
        echo "$lineas"
fi
