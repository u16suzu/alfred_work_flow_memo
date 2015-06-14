require 'Date'
require './memo_path'
require './memo_util'

# 今月のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m") + '_monthly.md'
end

def make_file_with_file_path( file_path )
    unless( File.exist? (file_path))
        system "touch #{ file_path }"
        system "cat template_monthly.md > #{ file_path }"
    end
end

path_and_file_name = MemoPath::MEMO_DIR_MONTHLY + file_name

make_file_with_file_path( path_and_file_name )

MemoUtil::open_file( path_and_file_name )
