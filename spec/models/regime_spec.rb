require 'rails_helper'

RSpec.describe Regime, type: :model do
	let(:regimen) { Regime.new }
  # pending "add some examples to (or delete) #{__FILE__}"


  it 'should have a start date for your daily regimen' do
  	date = Date.new(2001,2,3)
  	regimen.start_date = date

  	expect(regimen.start_date).to eq date
  end
  it 'should have an end date for your daily regimen' do
  	date = Date.new(2001,2,3)
  	regimen.end_date = date
  	
  	expect(regimen.end_date).to eq date

  end
  it 'should have a daily practice time' do
  	time = Time.new
  	regimen.daily_practice_time = time
  	expect(regimen.daily_practice_time).to eq time
  end
end
