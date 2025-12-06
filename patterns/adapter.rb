# Legacy player
class AudioPlayer
  def play(file)
    puts "Playing audio file: #{file}"
  end
end

# Target interface
class MediaPlayer
  def play_audio(file)
    raise NotImplementedError
  end
end

# Target adapter
class MediaAdapter < MediaPlayer
  def initialize(audio_player)
    @audio_player = audio_player
  end

  def play_audio(file)
    @audio_player.play(file)
  end
end

# Client
class MediaClient
  def initialize(media_player)
    @media_player = media_player
  end

  def play_media(file)
    @media_player.play_audio(file)
  end
end

audio_player = AudioPlayer.new
media_adapter = MediaAdapter.new(audio_player)
media_client = MediaClient.new(media_adapter)
media_client.play_media('sing_it.mp3')