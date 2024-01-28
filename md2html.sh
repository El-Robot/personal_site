# pandoc md/resume.md -f markdown -T html -o resume.html
elements=$(ls $1)
for file in $elements
do
    if test -d $1/$file
    then
        . md2html.sh $1/$file
    else
        pwd=$(pwd)
        old_name=$pwd/$1/$file
        new_name=$pwd/generated/${file%.md}.html
        cat $old_name
        echo $new_name
        pandoc $oldname -f markdown -T html  #-o $new_name
    fi
done