Dir.entries('lib/tasks').drop(2).each do |dir|
  Dir.entries("lib/tasks/#{dir}").each do |file|
    require_relative "../lib/tasks/#{dir}/#{file}" if file.size > 2
  end
end
