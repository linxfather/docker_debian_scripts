#!/usr/bin/env bash

# config
DOWNLOAD_URL="https://go.dev/dl/go1.27.4.linux-amd64.tar.gz"

# script
if [ "$EUID" -eq 0 ]; then
    echo "OK: Root user"
else
    echo "Please run script as root"
    exit 1
fi

set -e
curl -LO "$DOWNLOAD_URL"
TARFILE=$(basename $DOWNLOAD_URL)
set +e
if [ -f $TARFILE ]; then
    rm -rf /usr/local/go 2>/dev/null
    tar -C /usr/local -xzf $TARFILE
    rm $TARFILE
else
    echo "ERR: tarfile not exists"
    exit 1
fi

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

# Verify installation
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
echo "----------------------------------------"
echo "Successfully installed: $(go version)"
echo "Run 'source ~/.bashrc' or restart your terminal to apply PATH changes."


