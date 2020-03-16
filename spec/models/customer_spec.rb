require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "has invoice header"
  it "has invoice items through invoice header"
  it "has purchaced tracks through invoice items"
  it "has support representative"
end
