# coding: utf-8

require './local/user_rake.rb'
require './lib/libbutler.rb'

VERSION_FILE = "./VERSION"
SYMDEF_FILE_PATH = "./config/symlink.conf"
BUILD_DIR = "./build"
BUILD_CONFIG_DIR = BUILD_DIR + "/config"
TEMPLATE_DIR = "./template"
TEMPLATE_CONFIG_DIR = TEMPLATE_DIR + "/config"
LOCAL_DIR = "./local"
LOCAL_CONFIG_DIR = LOCAL_DIR + "/config"
PARAMETER_FILE_NAME = "parameter.conf"
PARAMETER_FILE_PATH = LOCAL_CONFIG_DIR + "/" + PARAMETER_FILE_NAME

def replace_template_file(src,dest)
  if File.exists?(PARAMETER_FILE_PATH) == true && \
     File.exists?(src) == true then
    File.open(PARAMETER_FILE_PATH,'r'){|f|
      options = ""
      f.each{|line|
        trimed_line = line.strip
        if trimed_line.size >= 1 then
          symbol = trimed_line[0]
          if symbol != "#" then
            columns = trimed_line.delete(" ").split(/=/)
            if options == "" then
              options = "-e s/\\$" + columns[0] + "/" + columns[1] + "/g"
              else
                options = options + " -e s/\\$" + columns[0] + "/" + columns[1] + "/g"
              end
          end
        end
      }
      command_line = "sed " + options + " " + src + " > " + dest
      if File.exists?(dest) == true then
        File.delete(dest)
      end
      sh command_line
    }
  end
end

file PARAMETER_FILE_NAME do
  if File.exists?(PARAMETER_FILE_PATH) == false then
    template_parameter_file_path = TEMPLATE_CONFIG_DIR + "/" + PARAMETER_FILE_NAME + ".tmp"
    cp template_parameter_file_path,PARAMETER_FILE_PATH
  end
end

file "gitconfig" => PARAMETER_FILE_NAME do
  replace_template_file(TEMPLATE_CONFIG_DIR + "/gitconfig.tmp",BUILD_CONFIG_DIR + "/gitconfig")
end

task :default => :version

desc "Build your cofiguration files and program files"
task :build => "gitconfig"

desc "Butler version"
task :version do
  File.open(VERSION_FILE){|f|
    f.each{|line|
      puts line
    }
  }
end

desc "update your symbolic link"
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
