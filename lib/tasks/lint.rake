# frozen_string_literal: true

desc "lint erb files"
task lint: :environment do
  puts "Beautifying files"
  Rake::Task["lint:htmlbeautifier"].execute
  Rake::Task["lint:erblint"].execute
  puts "Beautified files"
end

namespace :lint do
  desc "beautifying using htmlbeautifier"
  task htmlbeautifier: :environment do
    puts "Running htmlbeautifier\n"
    `find app/views/ -type f -name *.html.erb | xargs htmlbeautifier`
  end

  desc "beautifying using erblint"
  task erblint: :environment do
    puts "\nRunning erblint\n"
    bundle exec "erblint --lint-all --autocorrect"
  end
end
