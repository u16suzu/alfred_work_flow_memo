require 'Date'
require './memo_path'

# 今日の日付のファイルを指定ディレクトリに作成する.

def file_name
  DateTime.now.strftime("%Y%m%d") + '.md'
end

def make_file_with_file_path( file_path )
    # todo :
     # ファイルが存在する場合は作らないようにしたほうがよいかもしれないけれども。
     # 今のままでも上書きで新規作成されることはないので問題は無い。

     p 'file exist?'
     p file_path
    p File.exist? file_path
     p '----pfile exist?'


    unless( File.exist? (file_path))
        p system "touch #{ file_path }"
        p system "cat template_daily.md > #{ file_path }"
    end
end

def open_file( path_and_file_name )
  p system "/Applications/SublimeText2.app/Contents/SharedSupport/bin/subl -a #{ path_and_file_name }"
end

p file_name
p MemoPath::MEMO_DIR_DAILY

path_and_file_name = MemoPath::MEMO_DIR_DAILY + file_name

make_file_with_file_path( path_and_file_name )

open_file( path_and_file_name )

