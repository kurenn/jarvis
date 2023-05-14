# Precompile assets before running tests to avoid timeouts.
# Do not precompile if webpack-dev-server is running (NOTE: MUST be launched
# with RAILS_ENV=test)
RSpec.configure do |config|
  config.before(:suite) do
    examples = RSpec.world.filtered_examples.values.flatten
    has_no_system_tests = examples.none? do |example|
      example.metadata[:type] == :system
    end

    if has_no_system_tests
      $stdout.puts "\n🚀️️  No system test selected. Skip assets compilation.\n"
      next
    end

    $stdout.puts "\n🐢  Precompiling assets.\n"
    original_stdout = $stdout.clone
    # Use test-prof now 'cause it couldn't be monkey-patched (e.g., by Timecop
    # or similar)
    start = Time.current
    begin
      # Silence Webpacker output
      $stdout.reopen(File.new('/dev/null', 'w'))
      # next 3 lines to compile webpacker before running our test suite
      require 'rake'
      Rails.application.load_tasks
      Rake::Task['assets:precompile'].execute
    ensure
      $stdout.reopen(original_stdout)
      $stdout.puts "Finished in #{(Time.current - start).round(2)} seconds"
    end
  end
end
