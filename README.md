# AutoMac v0.1

AutoMac is an executable script on linux written in bash language to automatically change the mac address currently in use. It takes advantage of the open source macchanger software, randomly changing the mac address at the start of your computer, ensuring a part of anonymity on the network.

## Installation

Before you start using the script, you need to follow a few steps:

1. Install macchanger from terminal;
   ```bash
   sudo apt-get install macchanger
   ```
   
2. Open the terminal and type: 
   ```bash
   ip link show
   ```
   
3. Copy the name of the network interface to which you want to use;

4. Open the autoMac.sh file with a text editor;

5. Replace "wlp10s0" with the name of the network interface you copied previously and save;

6. Make the script executable as a program by assigning it the necessary permissions
   a. If you use Ubuntu: right click on the AutoMac.sh file> Properties> Permissions> enable the tick on "Execute: Allow executing file as a program";
   b. If you use other linux distributions: 
   ```bash
   sudo chmod +x /path/file.sh
   ```
   
## Usage

7. You are now ready to use AutoMac! To use it you have to run it like a normal bash script: 
   ```bash
   sudo bash /path/autoMac.sh
   ```
## Automation
8. To make the script executable when the computer is started, it must be entered in the system startup list: 
   a. If you use Ubuntu: Search Startup Application> Add> Enter a name and this command by changing the file path: 
   ```bash
   gnome-terminal --tab -e 'sudo bash /your/path/autoMac.sh'
   ```
   b. If you use other linux distributions, use this command on the terminal: 
   ```bash
   sudo update-rc.d /etc/init.d/autoMac.sh defaults
   ```
   c. You can check if your mac address has been changed correctly by typing this command on the console:
   ```bash
   ip link show
   ```
9. Enjoy
  a. the script is not malicious, it has been tested on other machines with various distributions (Debian based), and following all the steps it will work;

## Support
If you need technical support or further information, write to this e-mail address: loreame@protonmail.com

## License
[MIT](http://ftp.gnu.org/gnu/bash/)
