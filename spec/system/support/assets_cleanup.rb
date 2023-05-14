RSpec.configure do |config|
  config.after(:suite) do
    $stdout.puts "\n🚮 Cleaning the assets. \n"
    FileUtils.rm_rf("#{Rails.root}/public/assets")
  end
end
