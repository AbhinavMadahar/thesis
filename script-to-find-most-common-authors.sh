bibliography_file="$1"
sed 's/“.*//' <bibliography_file | sed 's/et al\.//' | sed 's/, /\n/g' | sed 's/and //' | grep -v '^$' | sort | uniq -c | sort -n -r
