require_relative 'display_string' # credit to Pat Shaughnessy

debug = Debug.new

str = ('a'..'z').to_a.join
str2 = str[1..-1]
str[1] = '&'

debug.display_string(str)
  DEBUG: RString = 0x7fa2a304fbf8
  DEBUG: ptr     = 0x7fa2a2f1f170 -> "a&cdefghijklmnopqrstuvwxyz"
  DEBUG: len     = 26

debug.display_string(str2)
  DEBUG: RString = 0x7fa2a304fae0
  DEBUG: ptr     = 0x7fa2a2f50b11 -> "bcdefghijklmnopqrstuvwxyz"
  DEBUG: len     = 25
