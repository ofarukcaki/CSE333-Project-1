#!/bin/bash


regex='\w*i(be)t.';
f="Himalaya Dağları, dünyanın en büyük ve en yüksek sıradağları arasında zirveyi çeker. Asya'nın orta güney büyük kısmında, doğu batı doğrultusunda uzanır. Dünyanın en yüksek zirvesi Everest'i içine alır. Everest Tepesi, Nepal ile Tibet sınırında yer alır. Everest tepesi bek bak büyük Nepal'in sınırları içersindedir.";


if [[ "$f" =~ $regex ]]
    then
        echo "MATCHEDDD"
        name="${BASH_REMATCH[1]}"
        echo $name
    else
        echo "doesn't match" >&2 # this could get noisy if there are a lot of non-matching files
    fi