require 'Date'
require './memo_path'

# 今月のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m") + '_monthly.md'
end

def make_file_with_file_path( file_path )
    # todo :
     # ファイルが存在する場合は作らないようにしたほうがよいかもしれないけれども。
     # 今のままでも上書きで新規作成されることはないので問題は無い。
  p system "touch #{ file_path }"
end

def open_file( path_and_file_name )
  p system "/Applications/SublimeText2.app/Contents/SharedSupport/bin/subl -a #{ path_and_file_name }"
end

p file_name
p MemoPath::MEMO_DIR_MONTHLY

path_and_file_name = MemoPath::MEMO_DIR_MONTHLY + file_name

make_file_with_file_path( path_and_file_name )

open_file( path_and_file_name )

