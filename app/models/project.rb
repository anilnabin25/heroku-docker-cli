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

class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: %i[slugged finders]

  acts_as_taggable_on :tags, :prefectures

  validates :title, :description, :start_date, :end_date, presence: true

  validate :start_and_end_date

  self.per_page = 5

  scope :by_end_date, -> { order("end_date ASC") }

  private
    def start_and_end_date
      return if end_date.blank? || start_date.blank?

      if end_date < start_date
        errors.add(:end_date, I18n.t("cannot_be_before_the_start_date"))
      end
    end

    def should_generate_new_friendly_id?
      slug.blank? || super
    end
end
