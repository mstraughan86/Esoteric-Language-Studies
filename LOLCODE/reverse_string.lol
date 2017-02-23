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


BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: Reverse String"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

I HAS A reversed_string ITZ I IZ reverse_string YR string MKAY

VISIBLE "Input string: " string
VISIBLE "Reverse String Result: " reversed_string

KTHXBYE