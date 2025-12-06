class Observer
  def update(state)
    raise NotImplementedError
  end
end


class Subject
  def add_observer(observer)
    raise NotImplementedError
  end

  def remove_observer(observer)
    raise NotImplementedError
  end

  def notify_observers
    raise NotImplementedError
  end
end


class WeatherStation < Subject
  attr_accessor :temperature
  def initialize
    @observers = []
    @temperature = 0
  end

  def add_observer(observer)
    @observers << observer unless @observers.include?(observer)
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each { |observer| observer.update(@temperature) }
  end

  def set_temperature(temperature)
    @temperature = temperature
    notify_observers
  end
end


class TemperatureDisplay < Observer
  def update(temperature)
    puts "Current temperature: #{temperature}°C"
  end
end

weather_station = WeatherStation.new
temperature_display = TemperatureDisplay.new
weather_station.add_observer(temperature_display)
weather_station.set_temperature(20)
weather_station.set_temperature(25)
