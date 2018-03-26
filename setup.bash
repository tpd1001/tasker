export PATH=$PATH:/data/data/burrows.apps.busybox/app_busybox; export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/data/data/burrows.apps.busybox/app_busybox

thing="-"
test -n "$1" && thing=$1
for x in `grep -i "$thing" $0|sed 's/ //g'|cut -d- -f2|grep "^ *\/"`
do
d=`dirname $x`
test -d $d || $FAKE mkdir -p $d
done

exit

AutoRemote Groups - /storage/emulated/0/AutoRemoteLite/channels/
Barcode Bank - /sdcard/barcodebank.xml
Drivesync - /storage/emulated/0/Drivesync/backup/DrivesyncSettings.bkp
Dropsync - /storage/emulated/0/Dropsync/backup/DropsyncSettings.bkp
ES File Explorer - /sdcard/ESSettings.zip - (configurable)
Fing - /storage/emulated/0/overlook/fing/backup/
FolderSync - /sdcard/Android/data/dk.tacit.android.foldersync/files/backup/
gReader - /sdcard/gReader/backup/
Informant - /sdcard/PocketInformant/
Jump - /storage/emulated/0/Download/* - (Export, use ES save to, changeable)
LightFlow - /sdcard/lightflow/<date> - (configurable)
Metam - /sdcard/Download/MetamBackup.zip - (Share with ES Save to... Download)
Minimalistic Text - /sdcard/MinimalisticTextPreferences/* - (have to backup each widget individually, spaces in names get squashed, no global settings backup)
MyBackup Pro - /sdcard/rerware/* - backup data, select all, deselect APNs
Notification Toggle - /sdcard/Android/data/de.j4velin.notificationToggle/files/backup/* - (backup some settings, but should be handled by Google)
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
