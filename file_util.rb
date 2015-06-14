
module FileUtil
  def make_file_with_file_path( file_path )
      unless( File.exist? (file_path))
          system "touch #{ file_path }"
          system "cat template_monthly.md > #{ file_path }"
      end
  end

  def open_file( path_and_file_name )
      system "#{ MemoPath::EDITOR_PATH } #{ path_and_file_name }"
  end
end
