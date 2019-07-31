class Journey
  PENALTY_FARE = 5
  def complete?
    false
  end

  def fare(fare = PENALTY_FARE)
    fare
  end

  def finish(station)
    self
  end

  def entry_station(station)
    station
  end
end