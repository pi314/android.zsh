basic_utils=(ls rm touch)

for cmd in $basic_utils; do
    eval "a${cmd} () { _adb_send_command \"cd \$ANDROID_PWD; ${cmd} \$@\" }"
done
