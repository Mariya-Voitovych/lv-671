require_relative 'shared'
include Shared
dir = 'menu_functions'
dir_entr(dir).each do |file|
  require_relative "#{dir}/#{file}"
end

module MenuFunctions
  include Shared
end
