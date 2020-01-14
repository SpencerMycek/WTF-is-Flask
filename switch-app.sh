#!/bin/bash
# This program changes the final line of .flaskenv so that the current flask
# application can be quickly changed

# Create a print string of each available chapter
read -r -d '' CHAPTERS <<- EOM
1. Hello, World!
2. Templates
3. Web Forms
EOM
# Create a limit on which chapters are avaiable
LASTCHAPTER=2
# Create an array of references to each chapter's flask app
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
CHAPTER_ARRAY=(
        $BASEDIR"/chapters/hello-world/hello-world.py"
        $BASEDIR"/chapters/templates/templates.py"
        $BASEDIR"/chapters/webforms/webforms.py"
)


Usage() {
    printf "USAGE: $0 [-h|--help]\n"
    printf "\n\tThis program will prompt the user to switch which flask"
    printf "\n\tapplication will run when the command \`flask run\`"
    printf " is given.\n"
    exit 0
}


change_app() {
    sed -i '$ d' $BASEDIR"/.flaskenv"
    echo "FLASK_APP=${CHAPTER_ARRAY[$1]}" >> $BASEDIR"/.flaskenv"
}


## Main
if [[ $# -ge 1 ]]; then
    if [[ $1 != "-h" ]] && [[ $1 != "--help" ]]; then
        printf "Unknown command; Try: \"-h\"\n"
        exit 1
    fi
    Usage
fi

echo "$CHAPTERS"
printf "Choose which chapter to make the flask_app (1-%s):\n>> " $LASTCHAPTER
read CHOICE
while true; do
    echo $CHOICE
    if [[ $CHOICE -gt $LASTCHAPTER ]] || [[ $CHOICE -lt 0 ]]; then
        printf "You must choose a number between 1 and %s\n>> " $LASTCHAPTER
        read CHOICE
    else
        change_app $((--CHOICE))
        break
    fi
done

