require 'require_all'
for dir in Dir.entries('lib/tasks')
  require_all "#{dir}"
end
