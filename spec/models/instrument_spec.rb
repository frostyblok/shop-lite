require 'rails_helper'

RSpec.describe Instrument, type: :model do
	let(:user) { index(:user) }
	let(:instrument) { index(:instrument, user: user) }
	it 'has a valid instrument' do
	  expect(instrument).to be_valid
	end
	# it { should belong_to(:user) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:brand) }
	it { should validate_presence_of(:price) }
	it { should validate_presence_of(:model) }
end
