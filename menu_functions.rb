module MenuFunctions
  class Help
    def self.call(input = 'all_commands')
      f = File.open("./help_instructions/#{command_name}.txt")
      while line = f.gets do
        puts line
      end
      f.close
    end
  end

  class Tasks
    def self.call(input)

    end
  end

  class Tests
    def self.call(input)

    end
  end

  class Run
    def self.call(input)

    end
  end

  class Test
    def self.call(input)

    end
  end

  class Show
    def self.call(input)

    end
  end

  class Authors
    def self.call(input)

    end
  end
end
