require './lib/memo_path'
require './lib/memo_util'


class New

  def file_name( arg )
    name = arg
    if File.extname( name ).empty?
      name + ".md"
    elsif File.extname( name ) != ".md"
      File.basename( name ) + ".md"
    else
      name
    end
  end

  def make_file( arg )
    path_and_file_name = MemoPath::MEMO_DIR_OTHER + file_name( arg )

    MemoUtil::make_file_with_file_path( path_and_file_name, nil )

    MemoUtil::open_file( path_and_file_name )
  end
end
