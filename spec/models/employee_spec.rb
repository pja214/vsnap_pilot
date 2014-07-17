require 'rails_helper'

describe Employee do

  context "new" do

    let(:employee) { FactoryGirl.create(:employee) }

    it "should have a name" do
      employee.name = ""
      expect(employee.save).to be(false)
    end

    it "should have a valid company ID" do
      employee.company_id = -1
      expect(employee.save).to be(false)
    end
  end
end