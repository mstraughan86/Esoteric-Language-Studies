HAI 1.4

BTW ~~~ IMPORTS ~~~
BTW ---------------
CAN HAS STRING?

BTW ~~~ FUNCTIONS ~~~

BTW ------------------------ is_string_even ---
HOW IZ I is_string_even YR string
  I HAS A length, length R I IZ STRING'Z LEN YR string MKAY
  I HAS A result_boolean ITZ FAIL
  BOTH SAEM MOD OF length AN 2 AN 0
  O RLY?
    YA RLY
      result_boolean R WIN
    NO WAI
  OIC
  FOUND YR result_boolean
IF U SAY SO

BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: Is string even?"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

VISIBLE "Input string: " string
VISIBLE "Is string even? Result: " !

I IZ is_string_even YR string MKAY
O RLY?
  YA RLY
    VISIBLE "YES"
  NO WAI
    VISIBLE "NO"
OIC

KTHXBYE