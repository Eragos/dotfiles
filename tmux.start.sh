#!/bin/sh 
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0 

# startup a "default" session if none currently exists
tmux has-session -t _default || tmux new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "eragos.net" "BASH" "Raspberry Pi" "RPi X" "FHEM" "NEW SESSION")
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux new -s "$SESSION_NAME"
            break
            ;;
        "BASH")
            bash --login
            break;;
        "Raspberry Pi")
            ssh pi@192.168.178.38
            break;;
        "RPi X")
            ssh -X pi@raspberrypi "lxpanel &"
            break;;
        "FHEM")
            telnet 192.168.178.38 7072
            break;;
	"eragos.net")
	    ssh -t root@213.202.212.231 "tmux new-session -s main || tmux attach-session -t main"
	    #ssh root@213.202.212.231
	    break;;
#        "")
#            tmux attach-session -t _default
#            break;;
        *) 
            tmux attach-session -t $opt 
            break
            ;; 
    esac
done    
