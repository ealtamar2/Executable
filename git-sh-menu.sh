#!/bin/sh

choice=""

while [ "$choice" != "q" ]
do
        echo
        echo "Please make a selection!"
        echo "1) Pull origin develop"
        echo "2) git add ALL"
        echo "3) git commit"
        echo "4) git status"
        echo "5) git push"
		echo "6) clean"
        echo "q) Quit"
        echo

        read choice

        case $choice in
            '1') 
			echo " Enter origin name [ENTER]:"
			read name
				cd "/c/workspaces/eclipse/perseo"
				git pull origin "$name"
				cd "/c/workspaces/eclipse/poseidon"
				git pull origin "$name"
				cd "/c/workspaces/eclipse/jackson"
				git pull origin "$name"
				cd "/c/workspaces/eclipse/Controller"
				git pull origin "$name"
				cd "/c/workspaces/eclipse/myLibraries"
				git pull origin "$name" ;;
            '2') 
			echo "item 2 ADD..."
				cd "/c/workspaces/eclipse/perseo"
				git add -A
				cd "/c/workspaces/eclipse/poseidon"
				git add -A
				cd "/c/workspaces/eclipse/jackson"
				git add -A
				cd "/c/workspaces/eclipse/Controller"
				git add -A
				cd "/c/workspaces/eclipse/myLibraries"
				git add -A;;
			
            '3') echo "item 3 selected...";;
			
            '4') 
				echo "item 4 Status..."
				echo "-- perseo --"
				cd "/c/workspaces/eclipse/perseo"
				git status
				echo "-- poseidon --"
				cd "/c/workspaces/eclipse/poseidon"
				git status
				echo "-- jackson --"
				cd "/c/workspaces/eclipse/jackson"
				git status
				echo "-- CONTROLLER --"
				cd "/c/workspaces/eclipse/Controller"
				git status
				echo "-- SHAREDLIBRERIES --"
				cd "/c/workspaces/eclipse/myLibraries"
				git status;;
			
    		'5')
				echo "item 4 COMMIT..."
				echo " Enter origin name [ENTER]:"
				read name
				cd "/c/workspaces/eclipse/perseo"
				git push origin "$name"
				cd "/c/workspaces/eclipse/poseidon"
				git push origin "$name"
				cd "/c/workspaces/eclipse/jackson"
				git push origin "$name"
				cd "/c/workspaces/eclipse/Controller"
				git push origin "$name"
				cd "/c/workspaces/eclipse/myLibraries"
				git push origin "$name" ;;
				
			'6') clear;;
            'q') echo "quiting!";;
             *)  echo "menu item is not available; try again!";;
        esac
done

echo Press Enter...
read
