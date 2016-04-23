
require 'rails_helper'

RSpec.describe Copy, type: :model do
  it "has a valid factory" do
    expect(create(:copy)).to be_valid
  end
end
