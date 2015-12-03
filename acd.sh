acd () {
    if [ -z "$1" ]; then
        relative_dir="/"
    else
        relative_dir="$1"
    fi
    _old_phone_pwd="$ANDROID_PWD"
    export ANDROID_PWD=$(_adb_send_command "cd $ANDROID_PWD && cd $relative_dir 2>/dev/null; pwd")
    echo $ANDROID_PWD
    if [ "$_old_phone_pwd" = "$ANDROID_PWD" ]; then
        false
    fi
}
