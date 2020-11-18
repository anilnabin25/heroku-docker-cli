# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id                     :bigint           not null, primary key
#  title                  :string(255)      not null
#  description            :string(255)      not null
#  start_date             :datetime         not null
#  end_date               :datetime         not null
#
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require "rails_helper"

RSpec.describe Project, type: :model do
  let(:project) { FactoryBot.create(:project) }
  describe "validations" do
    context "with valid attributes" do
      it "is valid" do
        expect(project).to be_valid
      end
    end
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end

  describe "validation start_and_end_date" do
    it "should validate start and end date" do
      project.end_date = DateTime.now - 1.day
      expect { project.save! }.to raise_error(ActiveRecord::RecordInvalid,
                                            "Validation failed: End date cannot be before the start date")
    end
  end
end
