# frozen_string_literal: true

module MenuFunctions
  class Run
    def self.call
      puts Shared::DIVIDER
      showin_files_names(PATH_TASKS)
      folder = get_input_string('choose_author')
      if valid_folder?(folder)
        katas_list = Dir.entries("#{PATH_TASKS}/#{folder}").sort.drop(2).map.with_index { |lastname, index| [(index + 1), lastname] }
        katas_list.each { |index, lastname| puts "#{index}: #{lastname}" }
        num_input = get_input_number('run_author_task')

        if valid_number?(num_input, "#{PATH_TASKS}/#{folder}")
          puts Shared::DIVIDER
          system('ruby', "#{PATH_TASKS}/#{folder}/#{katas_list.assoc(num_input).at(1)}")
        else
          warn(TEXT['invalidNum'])
        end
      else
        warn(TEXT['invalidAut'])
      end
      puts Shared::DIVIDER
    end
  end
end
