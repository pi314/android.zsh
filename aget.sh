aget () {
    # aget /dir/dir/filename
    # aget dir/dir/filename
    # aget filename
    if [ -z "$1" ]; then
        echo "Usage: aget filepath [target-path]"
        false
        return
    fi

    case "$1" in
        /*) adb pull -p $1 $2 ;;
        *)  adb pull -p $ANDROID_PWD/$1 $2 ;;
    esac
}
