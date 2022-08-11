path="/etc/shells"

cat $path | awk '/usr/ {print}' | awk -F/ '{print $NF}'

 
