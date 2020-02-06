# coding: utf-8
# Home butler

# Configuration
directories = {
  # Root directory
  "root" => "work",
  "subdirs" => subdirs = [
    # Local directory
    local = {
      "root" => "local",
    },
    archives = {
      "root" => "archives",
    },
    config = {
      "root" => "config",
    },
    inbox = {
      "root" => "inbox",
    },
    logs = {
      "root" => "logs",
    },
    share = {
      "root" => "share",
    },
    scripts = {
      "root" => "scripts",
    },
    tmp = {
      "root" => "tmp",
    }
  ]
}

# mkdir(ifnotexists)
def mkdir_ifnotexists(dir_path)
  if Dir::exist?(dir_path) != true
    mkdir_p dir_path
  end
end

# mkdir(hash)
def mkdir_hash_tables(parent_dir,dirs_hash)
  if Dir::exist?(parent_dir) == false
    # parentディレクトリが存在しないため、これ以上ディレクトリの作成が出来ない
    puts "Parent directory is not exists.: " + parent_dir
  else
    root_dir = dirs_hash["root"]
    if root_dir == nil || root_dir == "" || root_dir.kind_of?(String) == false
      # rootディレクトリ指定なしのためこれ以上ディレクトリの作成が出来ない
      puts "No root directory name."
      exit
    else
      root_dir_path = parent_dir + "/" + root_dir
      mkdir_ifnotexists(root_dir_path)
      
      dirs_hash.each{|key,value|
        if key != "root"
          if value == nil || value == "" || value.kind_of?(String) == false
            if value.kind_of?(Array) == true
              value.each{|member|
                if member.kind_of?(Hash) == true
                  mkdir_hash_tables(root_dir_path,member)
                else
                  puts "Unkown data: " + member
                end
              }
            else
              puts "Unkown data: " + value
            end
          end
        end
      }
    end
  end
end

task :default => :mkdir

task :mkdir do
  parent_dir = "."
  mkdir_hash_tables(parent_dir,directories)
end
