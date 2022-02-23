module MenuFunctions
  require_relative '../shared'
  include Shared

  class Tests
    def self.call
      puts "-----------------------------------------"
      Dir.glob("#{Dir.pwd}/spec/lib/tasks/**/*.rb") do |i|
        puts i.split('/').last.split('.').first
      end
      puts "-----------------------------------------"
    end
  end
end
