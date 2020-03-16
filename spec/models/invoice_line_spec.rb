require 'rails_helper'

RSpec.describe InvoiceLine, type: :model do
  subject(:invoice_item) { InvoiceLine.first }

  it "has a track" do
    expect(invoice_item.track.name).to eq('Balls to the Wall')
  end

  it "has a header" do
    expect(invoice_item.header.total).to eq(1.98)
  end
end
