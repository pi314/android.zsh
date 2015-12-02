aput () {
    # aput filepath
    # aput filepath /dir/dir/filename
    # aput filepath dir/dir/filename
    # aput filepath filename

    if [ -z "$1" ]; then
        echo "Usage: aput filepath [target-path]"
        false
        return
    fi

    case "$2" in
        "") adb push -p $1 $ANDROID_PWD/$(basename $1);;
        /*) adb push -p $1 $2 ;;
        *)  adb push -p $1 $ANDROID_PWD/$2 ;;
    esac
}
