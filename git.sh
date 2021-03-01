git status

time=$(date "+%Y-%m-%d %H:%M:%S")

commits="
update ${time}
"

echo $commits

read -p "输入y继续，否则退出: " flag

y="y"

if [[ "$flag" == "$y" ]]
then
  git add --all
  git commit -m "$commits"
  echo -e '++++++++++++++++++++++++++++++++\n\n\n\n\n\n'
  git status
echo -e '\n\n\n\n\n\n++++++++++++++++++++++++++++++++'
else
  echo -e '\n\n\n\n\n\n没有做任何操作\n\n\n\n\n\n'
fi