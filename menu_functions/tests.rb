module MenuFunctions
  class Tests
    def self.call
      show_tests
    end

    def self.show_tests
      puts DIVIDER
      get_list("#{PATH_TESTS}/**/*.rb").each_with_index do |item, num|
        string = "#{num + 1}. #{item.split('/').last.split('.').first}"
        puts string
      end      
      puts DIVIDER
    end
  end
end
