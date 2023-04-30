
expr=$(cat answers.txt | tail -n 1 | grep -oE "= .+ =" | cut -d= -f2)
ans=$(python -c "print($expr, end='')")
sed -i "$ s/$/$ans/" answers.txt
