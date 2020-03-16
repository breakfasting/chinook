require 'rails_helper'

RSpec.describe Invoice, type: :model do
  subject(:invoice) { Invoice.first }
  it "has invoice items" do
    expect(invoice.items.first.unit_price).to eq(0.99)
  end

  it "has a customer" do
    expect(invoice.customer.email).to eq('leonekohler@surfeu.de')
  end

  it "has tracks through items" do
    expect(invoice.tracks.second.name).to eq('Restless and Wild')
  end
end
