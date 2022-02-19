module MenuFunctions
    class AllTests

        def self.call()
            show_text('choose_author')
            showin_files_names(PATH_TESTS)
            autor = get_input_string('run_author_tests')
            system('rspec', dir_entr("#{PATH_TESTS}/#{autor}").join(" "))
        end

    end
end