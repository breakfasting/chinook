require 'rails_helper'

RSpec.describe Employee, type: :model do
  subject(:employee) { Employee.find_by(email: 'jane@chinookcorp.com') }
  
  it "has customers under support" do
    expect(employee.customers.count).to eq(21)
  end

  it "reports to managers(also employees)" do
    expect(employee.manager.first_name).to eq('Nancy')
  end

end
