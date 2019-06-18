# Dotfiles



## Install
Clone the directory and install with the command below
```
(cd dotfiles/; ./install.sh)
```

## Shell
other useful programs for devoloping

* PEP8 to check styling for python files
* Tig for better visualization og git history for files
  * Tig blame can be used as an alternative to git blame
* Ack (grep -r) to search content in files 
* Meld to handle merging conflicts in git

## I3
my dotfiles are mainly made for i3, so here is some tricks for using I3

## network
 
nmtui // for graphical network interface
 
nmcli dev wifi // show wifi list in terminal
nmcli device wifi connect (wifi-name) // to connect to a wifi
 
##¤ to be able to connect to eduroam
curl 'https://cat.eduroam.org/user/API.php?action=downloadInstaller&devise=linux&profile=430' | pytho    n
