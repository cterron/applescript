# Summary #


## Spotify Notification / EN ##

* spotify-notification.scpt: Generate a notification each time a new song starts to play in Spotify
* local.spotify.nexttrack.plist: launchd file to start the spotify-notification.scpt when the user logs

Open de Script Editor and copy the content of the file spotify-notification.scpt on it. Save the compile script in ~/Library/Scripts/spotify-notification.scpt. Copy the  local.spotify.nexttrack.plist file in ~/Library/LaunchAgents/ and load it with launchctl load local.spotify.nexttrack.plist 

## Spotify Notification / ES ##

* spotify-notification.scpt: Genera una notificación cada vez que Spotify comienza a reproducir una canción nueva.
* local.spotify.nexttrack.plist: Fichero de control de launchd, encargado de arrancar  spotify-notification.scpt cuando un usuario entra en el sistema.
