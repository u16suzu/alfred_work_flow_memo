require './memo_path'
require './memo_util'


def file_name
  name = ARGV[0]
  if File.extname( name ).empty?
    name + ".md"
  elsif File.extname( name ) != ".md"
    File.basename( name ) + ".md"
  else
    name
  end
end


path_and_file_name = MemoPath::MEMO_DIR_OTHER + file_name

MemoUtil::make_file_with_file_path( path_and_file_name, nil )

MemoUtil::open_file( path_and_file_name )
