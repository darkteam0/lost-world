#                        **WARNING**
#         TO RUN THE FOLLOWING SCRIPT ON AN ANDROID
#             YOU NEED TO INSTALL TERMUX AND ZIP
#
# Install Termux:
#   https://play.google.com/store/apps/details?id=com.termux
# Install zip:
#   Open termux: pkg install zip

ARTIFACT=$(head -n 1 ./artifact.txt)

if [[ ! -e ./dist ]]; then

    mkdir dist

else

    rm -rf dist/*

fi

cd ./src

zip ../dist/$ARTIFACT.mcaddon ./RP ./BP -qr

cd ..

unset ARTIFACT
