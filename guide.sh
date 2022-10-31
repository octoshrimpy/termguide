#!/usr/bin/sudo sh

# version 0.0.2

# elevate
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

echo "
 _______      __                  _______       __    __       
|   _   |────|  |_.─────.─────.  |   _   |──.──|__.──|  |─────.
|.  |   |  __|   _|  _  |__ --|  |.  |___|  |  |  |  _  |  -__|
|.  |   |____|____|_____|_____|  |.  |   |_____|__|_____|_____|
|:. 1   |                        |:. 1   |                                         
\`───────'                        \`───────'                     
      
"



#create file
cat > ./guide << EOF

#!/usr/bin/sh


# check for args here
#
# if arg is -h h --help help
# print smol help menu
#
# if arg is -r r --recc recc
# grab recommendations from github with curl, and print
#
# if arg is -l l --latest latest
# grab latest blog/snippet/idea/whatever/figure this out when I'm not sick
#
# if arg us -u u --update update
# curl url and self-update
#

echo "
			welcome to Octo's help menu

usage:
  ◑ up/down arrows to navigate
  ◑ q to quit


update this utility:    
  ┌────────────────────────────────────────────────────────────────────┐
  │    curl https://octoshrimpy.github.io/termguide/guide.sh | bash    │
  └────────────────────────────────────────────────────────────────────┘




● yay - the package manager

  -s  ◑ search for apps
  -S  ◑ install aplication by wildcard name
  -R  ◑ remove application by exact name

  yay ◑ update entire system with just yay, no arguments



get system info

  ● neofetch - get simple system info


  ● inxi - get very specific info
      has lots of flags. use inxi --help or search online on
      how to get the specific output you are looking for



directories

  ● ls - list files (within current directory)

      -l  ◑ see extra info 
      -a  ◑ view all files, including hidden ones
      -R  ◑ recursive. view folders within folders within fold...
      -h  ◑ human readable output for any ls command


  ● cd - change directories

      cd ../      ◑ move up one directory. ./foo/bar/ -> ./foo/
      cd bar      ◑ move into the bar directory within current folder
      cd /bar     ◑ move into the bar folder at root of system
      cd /bar/foo ◑ foo within /bar
      cd ../foo   ◑ move up a dir and into sibling folder foo


  ● ranger - visually traverse the filetree

      q           ◑ quit
      up/down     ◑ traverse files
      left/right  ◑ move in and out of folders
      backspace   ◑ toggle hidden files/folders
      shortcuts   ◑ https://gist.github.com/heroheman/aba73e47443340c35526755ef79647eb
      shift-s     ◑ opens shell within selected left-most directory

	
  ● pwd - print working directory


  ● mkdir - create directory
      mkdir <folder name>


  ● rm - remove directory/file
      rm <filename>
    
      if you need to remove all traces (scary):
      rm -rf <file or folder path>



file shenanigans

  ●cp - copy file
      cp <filename copy from> <filename copy to>

      -r ◑ recursive. copy folder & contents


  ● mv - move file/folder
      mv <filename move from> <filename move to>


  ● nano - simple terminal-based text editor
      nano <filename>

      there is a bottom bar with hotkeys.
      ^ means 'ctrl+'. ^G = ctrl-g


  ● micro - terminal-based text editor with lots of features
      micro <filename>
    
      ctrl-q       ◑ quit
      ctrl-x/c/v/s ◑ default cut/copy/paste/save
      alt-g        ◑ hotkeys
      ctrl-g       ◑ help menu
      alt-up/down  ◑ move selected lines up/down


  ● touch - create file at current folder
      touch <filename>



misc cmd

  ● clear - clears the terminal
      previously used cmds still accessible with up arrow


  ● sudo - run commands as superuser
      some commands require sudo
      if a cmd fails and you are 100% sure, try again with sudo


  ● ping - check to see if an IP is accessible
      ping <ip>
      testing internet to outside localnet
        1.1.1.1 ◑ cloudflare DNS
        8.8.8.8 ◑ google DNS
        8.8.4.4 ◑ gooogle DNS alt


  ● htop - monitor resources and programs
      shift-d  ◑ collapse child processes (more tidy)
      there is a bottom bar with controls


  ● | pipe - send output from one cmd into another cmd
      great for less (below) or writing cmd output into a file


  ● less - navigate output if there is a lot of it. 
      use pipe: <cmd> | less
      this help menu is opened with less :)


  ● tee - write command output to terminal and file
      use pipe: <cmd> | tee <file output>
      file does not have to exist
  

  ● ctrl-C - exit any command that has taken over terminal

  ● --help - works on almost every command










" | less
EOF

# @todo add version checking and updating

echo "created,"

# mark executable
sudo chmod +x ./guide
printf " +x'd,"

# move file
sudo mv ./guide /usr/bin/guide
printf " and moved file! guide installed. use with 'guide' in your terminal."
