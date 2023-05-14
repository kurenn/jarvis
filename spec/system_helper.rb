require 'rails_helper'

# Load configuration files and helpers
Dir[File.join(__dir__, 'system/support/**/*.rb')].sort.each do |file|
  require file
end
