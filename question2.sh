#/bin/sh -e
idx=$(grep -o $2 $1 | wc -l)
echo "the quantity replaced is $idx"
sed -i "s/$2/$3/g" $1
cat $1
