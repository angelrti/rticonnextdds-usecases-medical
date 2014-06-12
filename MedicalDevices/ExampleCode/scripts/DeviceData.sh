#!/bin/sh

filename=$0
script_dir=`dirname $filename`
executable_name="rtireplay"

if [ -f "$REPLAY_HOME/scripts/$executable_name" ]
then
    cd "$script_dir/../replay"
    gnome-terminal -x bash -c "$REPLAY_HOME/scripts/$executable_name \
        -cfgFile device_replay.xml \
        -cfgName replayECGDevice"
    gnome-terminal -x bash -c "$REPLAY_HOME/scripts/$executable_name \
        -cfgFile device_replay.xml \
        -cfgName replayPODevice"

else
    echo "*****************************************************************"
    echo "The REPLAY_HOME environment variable must be set to"
    echo "Connext_install_dir/RTI_Recording_Service_5.1.0 to run this example"
    echo "*****************************************************************"
fi

