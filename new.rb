require 'Date'
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

def make_file_with_file_path( file_path )
    unless( File.exist? (file_path))
        system "touch #{ file_path }"
    end
end

path_and_file_name = MemoPath::MEMO_DIR_OTHER + file_name

make_file_with_file_path( path_and_file_name )

MemoUtil::open_file( path_and_file_name )
