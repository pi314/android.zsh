arm () {
    _adb_send_command "cd $ANDROID_PWD; rm $@"
}
