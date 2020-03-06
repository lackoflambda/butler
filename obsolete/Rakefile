# coding: utf-8

PREFIX_DIR = "~/atelier"
SRC_DIR = "./src"
BUILD_DIR = "./build"
LIB_DIR = "lib"
BUILD_LIB_DIR = BUILD_DIR + "/" + LIB_DIR
RAKEFILE_NAME = "Rakefile"
RAKEFILE_EXT = ".rb"
RAKEFILE_SRC = RAKEFILE_NAME + RAKEFILE_EXT
LIBBUTLER = "lib/libbutler.rb"
DIRECTORIES_DEFFILE = "directories.yaml"

def copy_src_to_dist(src_filename,dist_filename)
  src_path = File::expand_path(SRC_DIR + "/" + src_filename)
  dist_path = File::expand_path(BUILD_DIR + "/" + dist_filename)
  
  dist_dir_path = File::dirname(dist_path)
  if Dir::exists?(dist_dir_path) == false
    mkdir_p dist_dir_path
  end
  
  cp_r src_path,dist_path
end

def copy_compiled_file_to_install_file(compiled_filename,install_filename)
  src_path = File::expand_path(BUILD_DIR + "/" + compiled_filename)
  dist_path = File::expand_path(PREFIX_DIR + "/" + install_filename)
  
  dist_dir_path = File::dirname(dist_path)
  if Dir::exists?(dist_dir_path) == false
    mkdir_p dist_dir_path
  end
  
  cp_r src_path,dist_path
end

task :default => :compile

directory BUILD_DIR
directory BUILD_LIB_DIR
directory PREFIX_DIR

task :clean do
  # build directory and compiled files
  if Dir::exists?(BUILD_DIR) == true
    rm_rf BUILD_DIR
  end
end

file RAKEFILE_SRC => BUILD_DIR do
  copy_src_to_dist(RAKEFILE_SRC,RAKEFILE_NAME)
end

file LIBBUTLER => [BUILD_LIB_DIR,BUILD_DIR] do
  copy_src_to_dist(LIBBUTLER,LIBBUTLER)
end

file DIRECTORIES_DEFFILE => BUILD_DIR do
  copy_src_to_dist(DIRECTORIES_DEFFILE,DIRECTORIES_DEFFILE)
end

task :compile => [:clean,RAKEFILE_SRC,DIRECTORIES_DEFFILE,LIBBUTLER]

task :install => [:compile,PREFIX_DIR] do
  # Rakefile
  copy_compiled_file_to_install_file(RAKEFILE_NAME,RAKEFILE_NAME)

  # directories.yaml
  copy_compiled_file_to_install_file(DIRECTORIES_DEFFILE,DIRECTORIES_DEFFILE)

  # libbutler.rb
  copy_compiled_file_to_install_file(LIBBUTLER,LIBBUTLER)
end
