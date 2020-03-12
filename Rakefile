# coding: utf-8

require './local/user_rake.rb'

VERSION_FILE = "./VERSION"

task :default => :version

desc "Butler version"
task :version do
  File.open(VERSION_FILE){|f|
    f.each{|line|
      puts line
    }
  }
end



### Local Variables:
### mode:ruby-mode
### coding:utf-8-unix
### End:
