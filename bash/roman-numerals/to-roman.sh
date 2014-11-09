#!/bin/bash
#
# Roman numerals code kata.
#
# $1     The arabic number to convert.
# Return Echos the Roman number string.
#
declare -ria values=(1000 900 500 400 100 90 50 40 10 9 5 4 1)

declare -rA symbols=([1000]="M" [900]="CM" [500]="D" [400]="CD"
                      [100]="C"  [90]="XC"  [50]="L"  [40]="XL"
                       [10]="X"   [9]="IX"   [5]="V"   [4]="IV"
                        [1]="I")

number=$1
result=""

for v in ${values[@]}; do
  while [ ${number} -ge ${v} ]; do
    number=$((${number} - ${v}))
    result="${result}${symbols[${v}]}"
  done
done

echo "${result}"
