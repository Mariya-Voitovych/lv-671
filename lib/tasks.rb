Dir.entries('lib/tasks').sort.drop(2).each do |dir|
  if File.directory?("lib/tasks/#{dir}")
    Dir.entries("lib/tasks/#{dir}").each do |file|
      require_relative "../lib/tasks/#{dir}/#{file}" if file.size > 2
    end
  end
end