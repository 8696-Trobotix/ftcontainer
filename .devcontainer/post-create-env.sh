# echo 'export ANDROID_HOME="/opt/android-sdk/"' >> $HOME/.bashrc
# echo 'export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"' >> $HOME/.bashrc
git clone --depth 1 https://github.com/FIRST-Tech-Challenge/FtcRobotController.git "/workspaces/$(ls /workspaces | head -n 1)/FtcRobotController/"
rm -rf FtcRobotController/.git
