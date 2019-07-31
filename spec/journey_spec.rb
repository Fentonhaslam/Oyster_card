require 'journey'

describe Journey do
  let(:station) {double :station, zone: 1}
  it 'knows if journey is not complete' do
    expect(subject).not_to be_complete
  end

  it 'has a penalty fare by default' do
    expect(subject.fare).to eq(Journey::PENALTY_FARE)
  end

  it 'returns itself when exiting the station' do
    expect(subject.finish(station)).to eq(subject)
  end

  context 'given an entry station' do
    subject {described_class.new(entry_station: station)}
  end
    it 'has an entry station' do
      expect(subject.entry_station(station)).to eq(station)
    end
end