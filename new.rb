require 'Date'
require './memo_path'

# 今日の日付のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m%d") + ARGV[0] + '.md'
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
p MemoPath::MEMO_DIR_DAILY

path_and_file_name = '~/memoWork/12_Memo/' + file_name

make_file_with_file_path( path_and_file_name )

open_file( path_and_file_name )

