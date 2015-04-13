require 'Date'
require './memo_path'

# 今月のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m") + '_monthly.md'
end

def make_file_with_file_path( file_path )
    unless( File.exist? (file_path))
        system "touch #{ file_path }"
    end
end

def open_file( path_and_file_name )
    system "#{ MemoPath::EDITOR_PATH } #{ path_and_file_name }"
end

path_and_file_name = MemoPath::MEMO_DIR_MONTHLY + file_name

make_file_with_file_path( path_and_file_name )

open_file( path_and_file_name )

