-- This script will loop if Spotify is running, showing a notification each time a new 
-- track is playing
use framework "Foundation"
use scripting additions
on getCurrentlyPlayingTrack()
	tell application "Spotify"
		set currentArtist to artist of current track as string
		set currentTrack to name of current track as string
		set currentAlbum to album of current track as string
		set theText to currentArtist & " - " & ¬
			currentAlbum & " - " & ¬
			currentTrack
		return theText
	end tell
end getCurrentlyPlayingTrack

on run
	set currentTrackID to ""
	repeat
		if application "Spotify" is running then
			tell application "Spotify"
				if player state is stopped or player state is paused then
					current application's NSThread's sleepForTimeInterval:2
				else
					set tmpTrackID to id of current track
					if tmpTrackID = currentTrackID then
						current application's NSThread's sleepForTimeInterval:2
					else
						display notification my getCurrentlyPlayingTrack()
						set currentTrackID to tmpTrackID
					end if
				end if
			end tell
		end if
		current application's NSThread's sleepForTimeInterval:2
	end repeat
end run


