require 'Date'
require './lib/memo_path'
require './lib/memo_util'


class Monthly

  def file_name
    DateTime.now.strftime("%Y%m") + '_monthly.md'
  end

  def template_file_path
    MemoPath::MEMO_DIR_TEMPLATE + '/monthly.md'
  end

  def make_file
    path_and_file_name = MemoPath::MEMO_DIR_MONTHLY + file_name

    MemoUtil::make_file_with_file_path( path_and_file_name, template_file_path )

    MemoUtil::open_file( path_and_file_name )
  end

end
