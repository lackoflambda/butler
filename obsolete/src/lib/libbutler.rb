def mkdir_ifnotexists(dir_path)
  if Dir::exist?(dir_path) != true
    mkdir_p dir_path
  end
end

def mkdir_dirdefs(parent_dir,dir_def)
  current_dir = ""
  dir_def.each{|member|
    if member.kind_of?(String) == true
      current_dir = parent_dir + "/" + member
      #puts "mkdir: " + current_dir
      mkdir_ifnotexists(current_dir)
    elsif member.kind_of?(Array) == true
      if current_dir == ""
        current_dir = parent_dir
      end
      mkdir_dirdefs(current_dir,member)
    else
      puts "Unkown data: " + member
    end
  }
end
