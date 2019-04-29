# Dotfiles



## installation
To install the dotfiles navigate to ```dotfiles``` and run the command below
```
./install.sh
```

to make command-t work for vim, first install dependencies, then call rake make inside plugin repo
```
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
sudo dnf install ruby-devel
ruby extconf.rb
make clean && make
```

## Shell
other useful programs for devoloping

* PEP8 to check styling for python files
* Tig for better visualization og git history for files
  * Tig blame can be used as an alternative to git blame
* Ack (grep -r) to search content in files 
* Meld to handle merging conflicts in git
