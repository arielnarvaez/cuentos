for i in *.png
do
convert $i -colorspace RGB +sigmoidal-contrast 7.0 $i
done