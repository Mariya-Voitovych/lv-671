class Authors
    def self.call
      @retry_counter = 1
      show_authors
    end
  
    def self.authors_list
      authors_list = get_list("#{PATH_TASKS}/*")
      authors_list.map! { |el| el.split('/').last }
    end
  
    def self.show_authors
      puts DIVIDER
      authors_list.each_with_index do |item, num|
        string = "#{num + 1}. #{item.capitalize}"
        puts string.blue
      end
      puts DIVIDER
      show_file_count
    end
  
    def self.show_file_count
      puts TEXT['to_exit']
      puts 'Enter author from the list:'
      redirect_message = TEXT['author_redirect']
      user_input = gets.chomp.downcase
      if user_input == 0.to_s
        redirect_message = 'You are redirected to the main menu'
        exit_to_main
      end
      if authors_list.include? user_input
        @retry_counter = 0
        count_tasks(user_input)
      else
        puts @retry_counter > 2 ? redirect_message.red : "#{user_input.red} #{TEXT['author_retry'].yellow}"
        while @retry_counter < 3
          @retry_counter += 1
          show_file_count
        end
      end
    end
  
    def self.count_tasks(author)
      katas_foolder = get_list("#{PATH_TASKS}/#{author}/*.rb")
      tests_foolder = get_list("#{PATH_TESTS}/#{author}/*.rb")
      if katas_foolder.empty? && tests_foolder.empty?
        puts "#{author.blue} havent any tasks or spec_tests yet"
      else
        puts "#{author.blue} have #{katas_foolder.length.to_s.green} katas and #{tests_foolder.length.to_s.green} spec_tests"
      end
      puts DIVIDER
    end
  
    def self.exit_to_main
      @retry_counter = 4
    end
  end