require 'Date'
require './memo_path'

# 今日の日付のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m%d") + '.md'
end

def make_file_with_file_path( file_path )
    unless( File.exist? (file_path))
        system "touch #{ file_path }"
        system "cat template_daily.md > #{ file_path }"
    end
end

def open_file( path_and_file_name )
    system "#{ MemoPath::EDITOR_PATH } #{ path_and_file_name }"
end

path_and_file_name = MemoPath::MEMO_DIR_DAILY + file_name

make_file_with_file_path( path_and_file_name )

open_file( path_and_file_name )

