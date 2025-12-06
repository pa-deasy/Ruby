class Amplifier
  def on
    puts 'Amplifier is on'
  end
end

class BluRayPlayer
  def on
    puts 'Blu Ray Player is on'
  end
end

class Projector
  def on
    puts 'Projector is on'
  end
end

class HomeTheaterFacade
  def initialize(amplifier, blu_ray_player, projector)
    @amplifier = amplifier
    @blu_ray_player = blu_ray_player
    @projector = projector
  end

  def watch_movie
    @amplifier.on
    @blu_ray_player.on
    @projector.on
    puts "Enjoy the movie!"
  end
end

home_theater = HomeTheaterFacade.new(Amplifier.new, BluRayPlayer.new, Projector.new)
home_theater.watch_movie