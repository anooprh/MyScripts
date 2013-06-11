To get started with these settings,
clone this git repo in your home directory

    git clone git://github.com/anooprh/MyScripts.git ~/MyScripts

Create a symblink .zshrc in your home directory to the one cloned from here

    ln -s ~/MyScripts/zshrc ~/.zshrc

Then scan through the files for changes in directory structure

For Adding xmonad configuration.. Look at http://vishwathmohan.com/blog/2013/05/02/xmonad-on-ubuntu-raring-ringtail/ and created the soft link as below
    mkdir ~/.xmonad && ln -s ~/MyScripts/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
