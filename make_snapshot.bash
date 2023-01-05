last_archive_folder=$(ls -1 backups | sort -r | head -n1)
new_archive_folder=$(date +'%F %H.%M.%S')

if [ -z "${last_archive_folder}" ]; then
	# There is no last archive folder.
	echo No existing folder.
	echo Archiving to backups/$new_archive_folder
	rsync -a source/ "backups/$new_archive_folder"
else
	# There is an existing folder to link against.
	echo Linking against $last_archive_folder
	rsync -a --link-dest="$PWD/backups/$last_archive_folder" source/ "backups/$new_archive_folder"
fi
