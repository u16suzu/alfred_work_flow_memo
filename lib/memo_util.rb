
module MemoUtil

  def self.open_file( path_and_file_name )
      system "#{ MemoPath::EDITOR_PATH } #{ path_and_file_name }"
  end

  def self.make_file_with_file_path( file_path, template_file_path )
      unless( File.exist? (file_path))
          system "touch #{ file_path }"
          system "cat #{ template_file_path } > #{ file_path }" if template_file_path
      end
  end
end
