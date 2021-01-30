#!/bin/bash

echo checking if NodeLink exists
if [ ! -e "/NodeLink/NodeLink.dll" ]; then
wget -O /NodeLink/NodeLink.dll http://automationshack.com/Files/NodeLink.dll 
fi

if [ ! -e "/NodeLink/NodeLink.runtimeconfig.json" ]; then
wget -O /NodeLink/NodeLink.runtimeconfig.json http://automationshack.com/Files/NodeLink.runtimeconfig.json
fi

if [ -e "/NodeLink/NodeLink.exe" ]; then
mv /NodeLink/NodeLink.exe /NodeLink/NodeLink.exe.migrated
fi

echo starting NodeLink
dotnet /NodeLink/NodeLink.dll

#hostip=$(hostname -I | awk '{print $1}')
#hostport="8090"
#echo
#echo "### Install complete. Login to NodeLink at http://$hostip:$hostport if you used docker bridge networking or http://dockerhostip:mappedport "
\ No newline at end of file
+#echo
