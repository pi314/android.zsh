pcd () {
    if [ -z "$1" ]; then
        relative_dir="/"
    else
        relative_dir="$1"
    fi
    export PHONE_PWD=$(adb shell "cd $PHONE_PWD; cd $relative_dir; pwd" | tr -d '\r')
    echo $PHONE_PWD
}
