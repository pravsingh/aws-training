ls 0*.md | tr '-' ' ' | awk '{print "p=`ls 0"($1-1)"*.md`;n=`ls 0"($1+1)"*.md`; echo \""$1"-"$2":$p:$n\"";}'  | sh | awk -F ":" '{print "echo \"\n##\n## [<<Prev]("$2") [Next>>]("$3")\" >> "$1;}'
