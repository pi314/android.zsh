===========
android.zsh
===========

I am a Mac user, I have a Android smartphone.  When I want to transfer files between them, I have to use Android File Transfer, and it is not stable enough for me.

GUI is convenient, but that app always lost connection to my phone, and keep pop out "Cannot found device" window of something like that, some of them cannot even being closed because there may be no "OK" button on them.

This project tries to leverage the zsh completion feature, to provice more friendly interface to user.

This project requires ``adb``, if you don't have one, install it first, and make sure it is in your ``$PATH``

Commands
---------

All commands starts with a prefix ``a``

* als
* arm
* atouch
* amv
* apwd
* acd [path]
* aget filepath [target-path]
* aput filepath [target-path]
