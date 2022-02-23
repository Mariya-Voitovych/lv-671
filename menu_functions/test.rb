# frozen_string_literal: true

module MenuFunctions
  class Test
    class << self
      def call
        puts Shared::DIVIDER
        showin_files_names(PATH_TESTS)
        folder = get_input_string('choose_author')
        if valid_folder?(folder)
          show_owner_files(folder)
          test_number = get_input_number('run_author_task')

          if valid_number?(test_number, "#{PATH_TESTS}/#{folder}")
            puts Shared::DIVIDER
            path = get_path(folder, test_number)
            run(path)
          else
            warn("invalidNum")
          end
        else
          warn("invalidAut")
        end
        puts Shared::DIVIDER
      end

      def get_files(folder)
        dir_entr("#{PATH_TESTS}/#{folder}")
      end

      def show_owner_files(folder)
        tests = get_files(folder)
        tests.each_with_index { |file, index| puts "#{index + 1}. #{file}" }
      end

      

      def get_path(folder, test_number)
        tests = get_files(folder)
        "#{PATH_TESTS}/#{folder}/#{tests[test_number - 1]}"
      end

      def run(path)
        system('rspec', path)
      end
  end
    private_class_method :valid_folder?, :valid_number?, :warn, :run, :get_path, :show_owner_files, :get_files
  end
end
