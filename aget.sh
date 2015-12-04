aget () {
    # aget /dir/dir/filename [target-path]
    # aget dir/dir/filename [target-path]
    # aget filename [target-path]
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
