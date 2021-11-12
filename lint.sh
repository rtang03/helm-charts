for d in charts/*; do
 helm lint $d
done
