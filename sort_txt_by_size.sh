for f in *.txt; do
        [ -f "$f" ] && [ "$f" != "sort_output.txt" ] && echo "$f - $(stat -c%s "$f") bytes"
done | sort -k3 -n > "sort_output.txt"
