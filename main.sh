export ANDROID_PWD='/'

_adb_ls_folder_only () {
    if [ -z "$1" ]; then
        cd_for_prefix="true"
    else
        case $1 in
            */*) relative_dir="${1%/*}/" ;;
            *)   relative_dir="." ;;
        esac
        cd_for_prefix="cd $relative_dir"
    fi
    _adb_send_command "cd $ANDROID_PWD && $cd_for_prefix && ls -l" | grep '^[dl]' | grep -v 'Permission denied' | awk '{print $6"/"}'
}

_adb_ls_with_slash () {
    if [ -z "$1" ]; then
        cd_for_prefix="true"
    else
        case $1 in
            */*) relative_dir="${1%/*}/" ;;
            *)   relative_dir="." ;;
        esac
        cd_for_prefix="cd $relative_dir"
    fi
    _adb_send_command "cd $ANDROID_PWD && $cd_for_prefix && ls -l" | grep -v 'Permission denied' | awk '{ c=substr($0, 0, 1); if (c == "d" || c == "l") {print $6"/"} else {print $7} }'
}

_adb_send_command () {
    adb shell "$@" | tr -d '\r'
}
