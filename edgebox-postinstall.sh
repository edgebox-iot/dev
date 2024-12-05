# mkdir -p ./appdata/hello-ws
echo "📦 Edgebox Dev Environment postinstall script"
echo "- Running in $(pwd)"
echo "- Installing Code Server"
curl -fsSL https://code-server.dev/install.sh | sh
echo "- Replacing Service Config File"
cp $(pwd)/src/install/code-server@.service /lib/systemd/system/code-server@.service
systemctl daemon-reload
echo "- Starting Code Server Service"
systemctl restart code-server@root
