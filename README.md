# .vim
My Vim Modules

```
cd
git clone https://github.com/sebasgoldberg/.vim.git
cd .vim
git submodule init
git submodule update
```

##YouCompleteMe

```
git submodule update --init --recursive
cd bundle/YouCompleteMe
./install.py --js-completer
```

In the example is adde javascript support.

Check out the YouCompleteMe documentation for other languages support.

##vim-autoformat

Uses tools installed apart.

Examples for python, javascript and XML:

```
sudo apt-get install python-autopep8
sudo npm install -g js-beautify
sudo apt-get install tidy
```

For more details check out the vim-format documentation.

Enjoy!
