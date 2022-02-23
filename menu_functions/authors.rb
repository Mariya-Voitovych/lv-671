module MenuFunctions

  class Authors
    def self.call
      show_authors
    end

    def self.show_authors
      puts DIVIDER
      get_list("#{PATH_TASKS}/*").each_with_index do |item, num|
        string = "#{num + 1}. #{item.split('/').last.capitalize}"
        puts string.blue
      end
      puts DIVIDER
    end
  end
end
