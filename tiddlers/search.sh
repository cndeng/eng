function replace(){
    while read word ;do
    	if `echo ${word}|grep -q '|'`;then
            word=`echo ${word}|awk -F'\|' '{print $2}'`
        fi
        echo ${word}
    	if `grep -q 'tags: wor' ${word}.tid`;then
            sed -i 's/\(tags: .*\)/\1 生词/g' ${word}.tid
        fi
    done < words2
}
function list(){
    while read word ;do
        if `echo ${word}|grep -q '|'`;then
            word=`echo ${word}|awk -F'\|' '{print $2}'`
        fi
        grep tags ${word}.tid
    done < words2
}
list
