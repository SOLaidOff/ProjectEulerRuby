# Documentation for rakefiles: https://ruby.github.io/rake/

task default: %w[test_all]

task :test_all do
  test_files = FileList['test/test_problem*.rb']
    
  test_files.each do |file|
    ruby "#{file}"
  end
end