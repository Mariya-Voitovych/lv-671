module MenuFunctions
    class UserTests

        def self.call()
            text_format('choose_author')
            showin_files_names(PATH_TESTS)
            autor = get_input_string('run_author_tests')
            system('rspec', dir_entr("#{PATH_TESTS}/#{autor}").join(" "))
        end

    end
end