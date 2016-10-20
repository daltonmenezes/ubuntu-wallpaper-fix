# ubuntu-wallpaper-fix
A shell script fix for wallpaper bug when Ubuntu is started with two (or more) connected monitors with different display interfaces. In my case are two (HDMI and VGA with DVI adapter) where the HDMI monitor always start after login with blurred wallpaper. So, I've created this fix.

<img src="http://i.giphy.com/F3o0slBN5hUfm.gif" alt="" />

## Installation
If you have unzip installed, just copy and paste it on terminal and execute:
```shell
wget -O uwf https://git.io/vPQ4f && chmod +x uwf && ./uwf && rm uwf
```
If you don't have it, install it first.
```shell
sudo apt-get install unzip
```
## Uninstallation
Copy and paste it on terminal and execute:
```shell
wget -O uwf-rm https://git.io/vPQRL && chmod +x uwf-rm && ./uwf-rm && rm uwf-rm
```
