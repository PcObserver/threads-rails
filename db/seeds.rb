# frozen_string_literal: true

Dir[Rails.root.join('db', 'default', '*.rb')].sort.each do |file|
  puts "Seeding #{File.basename(file)}"
  require file
end