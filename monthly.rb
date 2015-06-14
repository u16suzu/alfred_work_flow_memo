require 'Date'
require './memo_path'
require './memo_util'


def file_name
  DateTime.now.strftime("%Y%m") + '_monthly.md'
end

def template_file_path
  MemoPath::MEMO_DIR_TEMPLATE + '/template_monthly.md'
end

def make_file_with_file_path( file_path, template_file_path )
    unless( File.exist? (file_path))
        system "touch #{ file_path }"
        system "cat #{ template_file_path } > #{ file_path }"
    end
end

path_and_file_name = MemoPath::MEMO_DIR_MONTHLY + file_name

make_file_with_file_path( path_and_file_name, template_file_path )

MemoUtil::open_file( path_and_file_name )
