class Journey
  PENALTY_FARE = 1

  def initialize(station,zone)
    @complete_journey = false
  end

  def complete?
    @complete_journey
    end

  def fare(fare = PENALTY_FARE)
    fare
  end

  def finish(station)
    @complete_journey = true
    self
  end

  def entry_station(station)
    station
  end
end