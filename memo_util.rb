
module MemoUtil

  def self.open_file( path_and_file_name )
      system "#{ MemoPath::EDITOR_PATH } #{ path_and_file_name }"
  end

end
