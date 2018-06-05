#!/bin/sh

URL=http://beta.unity3d.com/download/e685bfa3c483/UnitySetup-2017.4.4f1
INSTALL_LOCATION=/opt/Unity
DOWNLOAD_LOCATION=/app/unity_download
UNITY_COMPONENTS="Unity,Mac,Windows,Linux"

echo "Start Unity3D installer download..."
curl -o /app/unity_setup -s "${URL}"
chmod +x /app/unity_setup
echo "Start Unity3D installer."
mkdir ${INSTALL_LOCATION}
mkdir ${DOWNLOAD_LOCATION}
printf 'y\n' | /app/unity_setup --unattended --components=${UNITY_COMPONENTS} --install-location ${INSTALL_LOCATION} --download-location ${DOWNLOAD_LOCATION}
rm -rf ${DOWNLOAD_LOCATION}
