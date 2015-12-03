als () {
    _adb_send_command "cd $ANDROID_PWD; ls $@"
}
