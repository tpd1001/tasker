#export FAKE=echo
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

# fixup the Tasker array passed in by the Run Script action
SETTINGS=$(echo $SETTINGS|sed 's/ /-/g' 2>/dev/null)
# extract the device name from cell two of the settings array
DEVICE=$(echo $SETTINGS|cut -d, -f2)
# we don't really want to exit with a non-zero code as this bombs
# the Tasker task to error which is more tricky to handle
test -n "$DEVICE" || { echo '$DEVICE not set' >&2;exit 0;  }
# define the thing to match on to extract the paths
thing=" - "
test -n "$1" && thing=$1
# turn all the app backup paths/files into consistent dir names
for x in $(grep -i "$thing" $0 2>/dev/null | \
           sed 's/ //g;s/\*/file/;s|\/$|/file|' 2>/dev/null | \
           cut -d- -f2 2>/dev/null | \
           grep "^ *\/" 2>/dev/null)
do
# substitute the DEVICE tag for the device specific name
d=$(dirname $x 2>/dev/null|sed "s|DEVICE|$DEVICE|")
test -d $d && Verbose "dir exists:  $d" >&2 || {
              Verbose "created dir: $d";$FAKE mkdir -p $d; }
done

exit

# The path (second hyphen separated field) must begin with
# a forward slash and end with a file name or forward slash

App Configs From Internal Storage Root - /storage/emulated/0/AppConfigsFromIntStorageRoot/
AutoBarcode - /storage/emulated/0/AutoBarcode/
AutoNotification - /storage/emulated/0/AutoNotification/BlockFilterForDB
AutoRemote Groups - /storage/emulated/0/AutoRemote/channels
AutoShare Intents - /storage/emulated/0/AutoShare/intentinfo.db
AutoWeb Services - /storage/emulated/0/AutoWeb/Api
Barcode Bank - /sdcard/barcodebank.xml
Drivesync - /storage/emulated/0/Drivesync/backup/DrivesyncSettings.bkp
Dropsync - /storage/emulated/0/Dropsync/backup/DropsyncSettings.bkp
ES File Explorer - /sdcard/ESSettings.zip - (configurable)
Fing - /storage/emulated/0/overlook/fing/backup/
FolderSync - /sdcard/Android/data/dk.tacit.android.foldersync.full/files/backup/DEVICE/variable_file_name
gReader - /sdcard/gReader/backup/
Informant - /sdcard/PocketInformant/
Jump - /storage/emulated/0/Jump/JumpDesktopServers.jdz - (Export, use ES save to, /sdcard/Jump, changeable)
KLWP - /storage/emulated/0/Kustom/wallpapers/*
LightFlow - /sdcard/lightflow/<date> - (configurable)
List My Apps - /sdcard/AppList/DEVICE/configurable - (Export, use ES save to, changeable)
Lithium Pro - /storage/emulated/0/LithiumBackups/
Metam - /sdcard/Download/MetamBackup.zip - (Share with ES Save to... Download)
Minimalistic Text - /sdcard/MinimalisticTextPreferences/* - (have to backup each widget individually, spaces in names get squashed, no global settings backup)
MyBackup Pro - /sdcard/rerware/* - backup data, select all, deselect APNs & Alarms
Notification Toggle - /sdcard/Android/data/de.j4velin.notificationToggle/files/backup/* - (backup some settings, but should be handled by Google)
Nova Launcher - /sdcard/data/com.teslacoilsw.launcher/backup/DEVICE/variable_file_name
Ovuview - /sdcard/ovuview/backup/backup*.ovu - (Hamburger > Export, untick chart images, not ES Save To, use FileManager+, Download, ovuview-data.csv)
Ping HostMonitor - /sdcard/Android/data/se.ping.android.hostmonitor/files/hosts.ser
PodcastAddict - /storage/emulated/0/Android/data/com.bambuna.podcastaddict/files/podcast/backup/
Pocket Informant - /storage/emulated/0/PocketInformant/
Podkicker Pro - /storage/emulated/0/Android/data/com.podkicker/files/podkicker_backup.opml
Port Knocker - /storage/emulated/0/PortKnocker/hosts-<date>-<time>.json
Sesame Shortcuts - /storage/emulated/0/data/ninja.sesame.app.edge/backups/YYYY-MM-DD_hh.mm.ss.sesamebak
Tasker - /storage/emulated/0/Tasker/userbackup.xml
Tasker scenes - /storage/emulated/0/Tasker/scenes/*
Tasker shared - /storage/emulated/0/Tasker/shared/*
Tasker profiles - /storage/emulated/0/Tasker/profiles/*
Tasker projects - /storage/emulated/0/Tasker/projects/*
Tasker tasks - /storage/emulated/0/Tasker/tasks/*
Termius - /storage/emulated/0/Termius/SshKeys/*
Trigger - /sdcard/Trigger/Backup.json
WiFi Analyser - /storage/emulated/0/WifiAnalyzer/WifiAnalyzer_Alias.txt - (app saves to /storage/emulated/0/WifiAnalyzer_Alias.txt, synced here by FolderSync)
WoL Wake On LAN WAN - /sdcard/WoLANWAN/WoLANWAN.csv
