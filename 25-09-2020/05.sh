#Make a backup of existing variable called PS1 to OLDPS1. Set PS1 to '$'. Reset your prompt using OLDPS1 variable.

OLDPS1=$PS1
PS1='$'

read

PS1=$OLDPS1

read
exit
