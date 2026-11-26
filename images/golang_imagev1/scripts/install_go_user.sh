if [ "$EUID" -eq 0 ]; then
    echo "Please run script as user"
    exit 1
else
    echo "OK: Normal user"
fi

if [ -d /usr/local/go/bin ]; then
    set -e
    GO_PATH_EXPORT='export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin'
    for FILE in "$HOME/.profile" "$HOME/.bashrc"; do
        if [ -f "$FILE" ] && ! grep -q "/usr/local/go/bin" "$FILE"; then
            echo "" >> "$FILE"
            echo "# Go programming language" >> "$FILE"
            echo "$GO_PATH_EXPORT" >> "$FILE"
            echo "Updated $FILE"
        fi
    done
    export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
    echo "----------------------------------------"
    echo "Successfully installed: $(go version)"
    echo "Run 'source ~/.bashrc' or restart your terminal to apply PATH changes."
else
    echo "ERR: /usr/local/go/bin not exists"
    exit 1
fi


