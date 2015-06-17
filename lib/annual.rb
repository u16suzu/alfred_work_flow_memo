require 'Date'
require './lib/memo_path'
require './lib/memo_util'


class Annual

  def file_name
    DateTime.now.strftime("%Y") + '_annual.md'
  end

  def template_file_path
    MemoPath::MEMO_DIR_TEMPLATE + '/annual.md'
  end

  def make_file
    path_and_file_name = MemoPath::MEMO_DIR_ANNUAL + file_name

    MemoUtil::make_file_with_file_path( path_and_file_name, template_file_path )

    MemoUtil::open_file( path_and_file_name )
  end

end
