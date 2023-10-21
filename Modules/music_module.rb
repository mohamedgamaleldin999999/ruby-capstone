require_relative '../classes/Music/music_album'

module MusicModule
  def create_music_album(release_date, label, genre)
    music_album = MusicAlbum.new(release_date, label)
    music_album.genre = genre  # Set the genre for the music album
    @music_albums << music_album
    save_music_album_to_file(@music_albums)
  end
  

  def list_musicalbums
    if @songs.empty?
      puts 'There are no music album'
    else
      @songs.each_with_index do |song, i|
        puts "#{i + 1}) Is it on spotify?: #{song.on_spotify}, Publish Date: #{song.publish_date}"
      end
    end
  end

  def save_music_album_to_file(songs)
    @music_album_data.save_music_album(songs)
  end
end
