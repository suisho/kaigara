require "kaigara/version"

module Kaigara
  # encoding: utf-8
  class Shell
    def create_path_array(paths)
      [].concat(paths).concat(["$PATH"])
    end
  end

  class Bash < Shell
    def add_path(paths)
      value = create_path_array(paths).join(":")
      export("PATH", value)
    end
    
    def export(key, value)
      if /\s/ =~ value
        value = '"' + value + '"'
      end
      "export #{key}=#{value}"
    end
  end

  class Zsh < Bash
  end

  class Fish < Shell

    def add_path(paths)
      value = create_path_array(paths).join(" ")
      export("PATH", value)
    end

    def export(key, value)
      "SET #{key} #{value}"
    end
  end
end
