Script to replace a string from all the sub directories and files

gci -r *.* |
foreach-object { $a = $_.fullname; ( get-content $a ) |
foreach-object { $_ -replace "original","replace" }  | 
set-content $a }