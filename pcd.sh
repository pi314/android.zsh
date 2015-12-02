pcd () {
    if [ -z "$1" ]; then
        relative_dir="/"
    else
        relative_dir="$1"
    fi
    _old_phone_pwd="$PHONE_PWD"
    export PHONE_PWD=$(adb shell "cd $PHONE_PWD && cd $relative_dir 2>/dev/null; pwd" | tr -d '\r')
    echo $PHONE_PWD
    if [ "$_old_phone_pwd" = "$PHONE_PWD" ]; then
        false
    fi
}
