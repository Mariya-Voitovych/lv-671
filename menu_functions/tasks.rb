module MenuFunctions
  class Tasks
    def self.call
      tasks_list = Dir.glob("./lib/tasks/**/*.rb").drop(2)
      tasks_list.each do |task_name| task_name.gsub(/\w+\.\w+$/) {|task| puts task.green}
      end
    end
  end
end
