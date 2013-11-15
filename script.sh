begin=0
end=73

for i in {1..36}
do

rem=$(( $i % 2 ))

if [ $rem -eq 0 ]
then
page=$(($begin + $i))
echo ``includepdf[pages=$page]{cuentos.pdf}''
page=$(($end - $i))
echo ``includepdf[pages=$page]{cuentos.pdf}''
echo ""

else

page=$(($end - $i))
echo ``\includepdf[pages=$page]{cuentos.pdf}''

page=$(($begin + $i))
echo ``\includepdf[pages=$page]{cuentos.pdf}''

echo ""

fi
           
done > tmp