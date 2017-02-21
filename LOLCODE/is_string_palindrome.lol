HAI 1.4

BTW ~~~ IMPORTS ~~~
BTW ---------------
CAN HAS STRING?

BTW ~~~ FUNCTIONS ~~~
BTW ------------------------ reverse_string ---
HOW IZ I reverse_string YR string
  I HAS A length, length R I IZ STRING'Z LEN YR string MKAY
  I HAS A return_string ITZ ""

  IM IN YR forLoop UPPIN YR index TIL BOTH SAEM index AN length
    I IZ STRING'Z AT YR string AN YR index MKAY
    return_string R SMOOSH IT return_string MKAY
  IM OUTTA YR forLoop
  FOUND YR return_string
IF U SAY SO

BTW ------------------------ is_string_palindrome ---
HOW IZ I is_string_palindrome YR string
  I HAS A reversed_string ITZ I IZ reverse_string YR string MKAY
  I HAS A result_boolean ITZ WIN

  BOTH SAEM string AN reversed_string
  O RLY?
    YA RLY
      result_boolean R WIN
    NO WAI
      result_boolean R FAIL
  OIC
  FOUND YR result_boolean
IF U SAY SO

BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: Is string a palindrome?"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

VISIBLE "Input string: " string
VISIBLE "Is string a palindrome? Result: " !

I IZ is_string_palindrome YR string MKAY
O RLY?
  YA RLY
    VISIBLE "YES"
  NO WAI
    VISIBLE "NO"
OIC

KTHXBYE