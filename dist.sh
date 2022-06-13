#                        **WARNING**
#         TO RUN THE FOLLOWING SCRIPT ON AN ANDROID
#             YOU NEED TO INSTALL TERMUX AND ZIP
#
# Install Termux:
#   https://play.google.com/store/apps/details?id=com.termux
# Install zip:
#   Open termux: pkg install zip

if [[ ! -e ./dist ]]; then

    mkdir dist

fi

cd ./src

zip ../dist/lost-world.mcaddon ./RP ./BP -qr

cd ..
