# frozen_string_literal: true

namespace :project do
    desc "Update the project slug"
    task update_slug: :environment do
      Project.find_each(&:save)
    end
  end
