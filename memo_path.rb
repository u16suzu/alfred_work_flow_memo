require 'Date'

module MemoPath
  EDITOR_PATH = "/usr/local/bin/atom "
  MEMO_DIR = "/Users/u16suzu/workMemo/00_daily/#{ DateTime.now.strftime('%Y') }/"
  MEMO_DIR_DAILY        = MEMO_DIR + "daily/"
  MEMO_DIR_MONTHLY = MEMO_DIR + "monthly/"
  MEMO_DIR_ANNUAL    = MEMO_DIR + "annual/"
end
