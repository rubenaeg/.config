set fish_greeting

# fnm
set PATH /home/ruben/.fnm $PATH
fnm env | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ruben/apps/google-cloud-sdk/path.fish.inc' ]; . '/home/ruben/apps/google-cloud-sdk/path.fish.inc'; end

# Add flutter binary to path
set PATH /home/ruben/apps/flutter/bin $PATH

# Add python scripts to path
set PATH /home/ruben/.local/bin $PATH

set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -x ANDROID_HOME /home/ruben/apps/android
set -x ANDROID_SDK_ROOT /home/ruben/apps/android-sdk
set -x PATH /home/ruben/apps/android-sdk/cmdline-tools/latest/bin $PATH

# Add Gradle to path
set PATH /home/ruben/apps/gradle/gradle-7.0.2/bin $PATH

setenv EDITOR nvim
