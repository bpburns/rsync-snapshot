# rsync-snapshot
rsync-based snapshots that leverage hard linking

Based on an example I found many years ago: http://www.mikerubel.org/computers/rsync_snapshots/

# Usage
With source files in the `source/` directory and a `backups/` folder, running `./make_snapshot.bash` will create a new, timestamped folder in `backups/` and copy all the source files from `source/` into the new folder, using hard links from the previous backup folder, if it exists, to save space.
