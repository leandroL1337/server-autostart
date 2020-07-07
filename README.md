# Server Autostarter

Server Autostarter is a BASH (Bourne Again Shell) script which helps you organize and ease your servers, launching everything you need all in one. You need one dependency (which you might already have.)

  - screen 
# How to install screen?

It's pretty easy: 
```sh
$ sudo apt-get install screen | (ubuntu/debian)
```
```sh
$ yum -y install screen | (centos/fedora)
```


# How to install/edit the script itself?

You can install the script by typing on your terminal - 
```sh 
$ git clone https://github.com/brxnter/server-autostart.git | (make sure to download it on an easy accessible path, such as /home/)
```
Or you can just download it by going to Releases and selecting the newest version available.


So, you will need to edit some things on the script itself, which are:

  - srv_dir - path of where the server is located at
  - srv_name - will be needed to monitor if the screen instance has started by typing ```screen -ls``` on the terminal or console.
  - srv_mem - this will be used only if your server requires memory allocation sizes (can be kept uncommented if not needed.)
 
The rest of the script can be edited if you're running a network of servers, such as Minecraft Networks with Bungee, etc, etc.
To do this, you'll need to add these lines of code onto the appropriate blocks, such as start), stop), restart), info).
Starting with start), if you need to add a new server to the network, it will be firstly added to srv_dir, adding a screen name to srv_name, and adding the memory allocation size at srv_mem.

on the start) block:
- cd $srv_dir && screen -AmdS $srv_name (adding the server arguments which you'd type without screen.)

on the stop) block:
- screen -XS $srv_name -p 0 quit

on the restart) block:

- 	screen -XS $srv_name -p 0 quit
-	cd $srv_dir && screen -AmdS $srv_name (copy args from line 34)




License
----

This project is lincensed under MIT License.



   [server-autostart]: <https://github.com/brxnter/server-autostart>
   [git-repo-url]: <https://github.com/brxnter/server-autostart.git>
