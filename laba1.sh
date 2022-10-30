arg1=$1
if [[ -d $arg1 ]]
then
 cd $arg1
 numfiles=(*)
 numfiles=${#numfiles[@]}
 if [[ $(($numfiles%2)) -eq 0 ]]
 then
  ls -p -t | grep -v / > /c/users/vgavr/documents/rresult.txt
 else
  ls -p -rS | grep -v / > /c/users/vgavr/documents/rresult.txt
 fi
echo Файл создан
else
 echo "Данной папки нет"
fi
		