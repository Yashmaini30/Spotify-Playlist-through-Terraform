resource "spotify_playlist" "bollywood" {
    name = "Bollywood Playlist"
    description = "Bollywood Songs"
    tracks = [ "78BWCd70D1X6LMkDZm1UoF" ]
  
}

data "spotify_search_track" "Honey" {
  artist = "Yo Yo Honey Singh"
}

resource "spotify_playlist" "yo-yo-honey-singh" {
  name = "Yo Yo Honey Singh"
  tracks = [data.spotify_search_track.Honey.tracks[0].id,
            data.spotify_search_track.Honey.tracks[1].id,
            data.spotify_search_track.Honey.tracks[2].id]
}