require 'rails_helper'

RSpec.describe User, type: :modeel do
  it { should have_many(:instruments) }
end