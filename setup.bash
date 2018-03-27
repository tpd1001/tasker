# you can download the busybox app and run this script from within there
# this was the original usage and required the following
# PATH and LD_LIBRARY_PATH modifications
#export PATH=$PATH:/data/data/burrows.apps.busybox/app_busybox; export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/data/data/burrows.apps.busybox/app_busybox

Verbose()  { if [ "$VERBOSE" = "1" ]; then echo -e "$@" ; fi; }
Debug(){ case "$DEBUG" in
 1)test -n "$1"&&echo "+++ $@";;
 2)test -n "$1"&&echo "+++ $@" >&2;;
 3)test -n "$1" && echo "+++ $@" >&2 ; return 1;;
 x)set -x;DEBUG=;;
esac; }

SETTINGS=$(echo $SETTINGS|sed 's/ /-/g' 2>/dev/null)
DEVICE=$(echo $SETTINGS|cut -d, -f2)
thing=" - "
test -n "$1" && thing=$1
for x in $(grep -i "$thing" $0 2>/dev/null | \
           sed 's/ //g;s/\*/file/' 2>/dev/null | \
           cut -d- -f2 2>/dev/null | \
           grep "^ *\/" 2>/dev/null)
do
d=$(dirname $x 2>/dev/null|sed "s|DEVICE|$DEVICE|")
test -d $d && Verbose "dir exists:  $d" >&2 || {
              Verbose "created dir: $d";$FAKE mkdir -p $d; }
done

exit

# The path (second hyphen separated field) must begin with
# a forward slash and end with a file name or forward slash

AutoRemote Groups - /storage/emulated/0/AutoRemoteLite/channels/
Barcode Bank - /sdcard/barcodebank.xml
Drivesync - /storage/emulated/0/Drivesync/backup/DrivesyncSettings.bkp
Dropsync - /storage/emulated/0/Dropsync/backup/DropsyncSettings.bkp
ES File Explorer - /sdcard/ESSettings.zip - (configurable)
Fing - /storage/emulated/0/overlook/fing/backup/
FolderSync - /sdcard/Android/data/dk.tacit.android.foldersync.full/files/backup/DEVICE/variable_file_name
gReader - /sdcard/gReader/backup/
Informant - /sdcard/PocketInformant/
Jump - /storage/emulated/0/Download/* - (Export, use ES save to, changeable)
LightFlow - /sdcard/lightflow/<date> - (configurable)
List My Apps - /sdcard/AppList/DEVICE/configurable - (Export, use ES save to, changeable)
Metam - /sdcard/Download/MetamBackup.zip - (Share with ES Save to... Download)
Minimalistic Text - /sdcard/MinimalisticTextPreferences/* - (have to backup each widget individually, spaces in names get squashed, no global settings backup)
MyBackup Pro - /sdcard/rerware/* - backup data, select all, deselect APNs
Notification Toggle - /sdcard/Android/data/de.j4velin.notificationToggle/files/backup/* - (backup some settings, but should be handled by Google)
Nova Launcher - /sdcard/data/com.teslacoilsw.launcher/backup/DEVICE/variable_file_name
Ovuview - /sdcard/ovuview/backup/backup*.ovu
Ping HostMonitor - /sdcard/Android/data/se.ping.android.hostmonitor/files/hosts.ser
Podkicker Pro - /storage/emulated/0/podkicker_backup.opml
Port Knocker - /storage/emulated/0/PortKnocker/hosts-<date>-<time>.json
Serverauditor - /storage/emulated/0/Serverauditor/SshKeys/*
Tasker - /storage/emulated/0/Tasker/userbackup.xml
Tasker profiles - /storage/emulated/0/Tasker/profiles/*
Tasker tasks - /storage/emulated/0/Tasker/tasks/*
Trigger - /sdcard/Trigger/Backup.json
WiFi Analyser - /storage/emulated/0/WifiAnalyzer_Alias.txt
WiFi Analyser - /storage/emulated/0/WifiAnalyzer/WifiAnalyzer_Alias.txt - (synced here by FolderSync)

WoL Wake On LAN WAN - /sdcard/WoLANWAN/WoLANWAN.csv
/storage/emulated/0/AppConfigsFromIntStorageRoot/* - (synced here by FolderSync)
