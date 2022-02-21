require 'json'

module Shared 
    
#=============== PATH ====================================
PATH_TASKS = './lib/tasks'
PATH_TESTS = './spec/lib/tasks'
PATH_JSON = './help_instructions/text.json'
#=========================================================

#============== SHOW METHODS ==============================
      

    #=================TEXT ======================
    #shared method for geting static text from json file
    def self.show_text
        file = File.read(PATH_JSON)
        JSON.parse(file)
    end
    #object from text.json
    TEXT = Shared.show_text

    #greem text, from text.json object, method gets text key
    def text_format(key)
        puts (TEXT[key]).green
    end
    # ================================================



    def dir_entr(url)
       Dir.entries(url).drop(2)
        .select { |element| element.length > 3 } 
    end

    #shared method for showing files name in foulder (url) fot test and tasks
    def showin_files_names(url)
        dir_entr(url).each do |dir_name| 
            puts dir_name.blue
        end
    end

#============== GET METHODS ==============================
    #get user input data 
    def get_input(text)
        #to show text for user
        text_format(text)
        #catch user input
        gets.chomp
    end

    #get user input data string
    def get_input_string(text)
        #to show text for user
        text_format(text)
        #catch user input
        gets.chomp.downcase
    end

    def get_input_number(text)
        #to show text for user
        text_format(text)
        #catch user input
        gets.chomp.to_i
    end
#============== opening ==============================
    def opening_file(url)
        File.open(url)
    end
end
