require 'rails_helper'

describe Company do

  context "new" do

    context "has valid parameters" do
      let(:company) { FactoryGirl.create(:company) }

      it "should have a name" do
        company.name = ""
        expect(company.save).to be(false)
      end

      it "should not be a duplicate" do
        company_duplicate = company.dup
        company.save
        expect(company_duplicate.save).to be(false)
      end
    end
  end
end
