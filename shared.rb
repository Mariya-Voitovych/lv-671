require 'json'

module Shared 
    
#=============== PATH ====================================
PATH_TASKS = './lib/tasks'
PATH_TESTS = './spec/lib/tasks'
PATH_JSON = './help_instructions/text.json'

#============== SHOW METHODS ==============================
    #shared method for geting static text from help instructions foulder
    def show_text(name)
        file = File.read(PATH_JSON)
        data_hash = JSON.parse(file)
        puts data_hash[name].green
    end
    

    def dir_entr(url)
       Dir.entries(url).drop(2)
        .select { |element| element.length > 5 } 
    end

    #shared method for showing files name in foulder (url) fot test and tasks
    def showin_files_names(url)
        dir_entr(url).each do |dir_name| 
            puts dir_name.green
        end
    end

#============== GET METHODS ==============================
    #get user input data 
    def get_input(text)
    #to show text for user
        show_text(text)
        #catch user input
        gets.chomp
    end
    #get user input data string
    def get_input_string(text)
        #to show text for user
        show_text(text)
        #catch user input
        gets.chomp.downcase
    end

    def get_input_number(text)
        #to show text for user
        show_text(text)
        #catch user input
        gets.chomp.to_i
    end
#============== opening ==============================
    def opening_file(url)
        File.open(url)
    end
end
