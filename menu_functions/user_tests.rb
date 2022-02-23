module MenuFunctions
  class UserTests
    def self.call()
        text_format('choose_author')
        showin_files_names(PATH_TESTS)
        autor = get_input_string('run_author_tests')
        if valid_folder?(autor)
          list = dir_entr("#{PATH_TESTS}/#{autor}").map{ |name| "#{PATH_TESTS}/#{autor}/#{name}"}
          system('rspec', *list)
        else
          warn("invalidAut")
        end 
    end
  end
end