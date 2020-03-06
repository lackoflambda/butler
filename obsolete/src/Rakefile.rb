# coding: utf-8
# House butler

require 'yaml'
require './lib/libbutler.rb'

task :default => :mkdir

desc "ディレクトリ定義ファイル(directories.yaml)を読み込んで任意のファイル構造を作成"
task :mkdir do
  dir_def = YAML::load_file("./directories.yaml",'r')
  parent_dir = "."
  mkdir_dirdefs(parent_dir,dir_def)
end

desc "HOMEディレクトリの設定ファイルをシンボリックリンクで作成する"
task :symlink do
  sh "ln -s config/emacs.d/init.el ~/.emacs.d/init.el"
end
