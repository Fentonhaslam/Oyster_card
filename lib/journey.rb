class Journey
  PENALTY_FARE = 1

  def initialize(journeyLog = JourneyLog.new)
    @complete_journey = false
    @journeyLog = journeyLog
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
