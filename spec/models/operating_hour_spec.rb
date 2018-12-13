require 'rails_helper'

RSpec.describe OperatingHour, type: :model do
  it 'ensure open presence' do
    operating_hour = OperatingHour.new(day: '1', close: '22:00').save
    expect(operating_hour).to eq(false)
  end
  it 'ensure day presence' do
    operating_hour = OperatingHour.new(open: '10:00', close: '23:00').save
    expect(operating_hour).to eq(false)
  end
  it 'ensure close presence' do
    operating_hour = OperatingHour.new(open: '10:00', day: '3').save
    expect(operating_hour).to eq(false)
  end
end
