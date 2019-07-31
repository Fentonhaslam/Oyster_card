class Oystercard
  attr_reader :balance, :entry_station, :exit_station, :journeys, :journey

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  MINIMUM_CHARGE = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @journeys = []
    @journey = {}
  end

  def top_up(amount)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @entry_station
  end

  def touch_in(station)
    fail "Insufficient balance to touch in" if @balance < MINIMUM_BALANCE
    @entry_station = station
  end

  def touch_out(station)
    deduct(MINIMUM_CHARGE)
    @exit_station = station
    @journeys << { entry_station: entry_station, exit_station: exit_station }
    @entry_station = nil
  end
end
