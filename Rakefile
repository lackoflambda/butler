# coding: utf-8

require './local/user_rake.rb'

VERSION_FILE = "./VERSION"
SYMDEF_FILE_PATH = "./config/symlink.conf"

task :default => :version

desc "Butler version"
task :version do
  File.open(VERSION_FILE){|f|
    f.each{|line|
      puts line
    }
  }
end

desc "update symbolic link"
task :symlink do
  # シンボリックリンクの定義ファイルを読み込み
  File.open(SYMDEF_FILE_PATH){|f|
    f.each{|line|
      trimed_line = line.strip
      if trimed_line.size >= 1 then
        symbol = trimed_line[0]
        if symbol != "#" then
          columns = trimed_line.split(/\t/)
          if columns.size == 2 then
            src = File.expand_path(columns[0])
            dest = File.expand_path(columns[1])
            if File.exists?(src) == true && \
               File.exists?(dest) == false then
              command_line = "ln -s " + src + " " + dest
              sh command_line
            end
          end
        end
      end
    }
  }
end



### Local Variables:
### mode:ruby-mode
### coding:utf-8-unix
### End:
