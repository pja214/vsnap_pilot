require 'rails_helper'

describe Interaction do

  context "new" do
    let(:interaction) { FactoryGirl.create(:interaction) }

    it "should have a valid employee ID" do
      interaction.employee_id = -1
      expect(interaction.save).to be(false)
    end

    it "should have a task" do
      interaction.task = ""
      expect(interaction.save).to be(false)
    end
  end
end