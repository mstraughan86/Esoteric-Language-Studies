HAI 1.4

BTW ~~~ IMPORTS ~~~
BTW ---------------
CAN HAS STRING?

BTW ~~~ FUNCTIONS ~~~
BTW ------------------------ string_to_array ---
HOW IZ I string_to_array YR string
  I HAS A length, length R I IZ STRING'Z LEN YR string MKAY
  I HAS A result_array ITZ A BUKKIT

  IM IN YR forLoop UPPIN YR index TIL BOTH SAEM index AN length
    I HAS A test1 ITZ I IZ STRING'Z AT YR string AN YR index MKAY
    result_array HAS A SRS index ITZ test1
  IM OUTTA YR forLoop

  FOUND YR result_array
IF U SAY SO

BTW ------------------------ print_array ---
BTW @SEE: https://github.com/chuthagoras/lolcode/blob/master/quick_sort.lol
HOW IZ I print_array YR array AN YR length
  I HAS A string ITZ A YARN
  IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN length
    string R SMOOSH string AN index AN " = " AN array'Z SRS index AN ":)" MKAY
  IM OUTTA YR loop
  VISIBLE string
  GTFO
IF U SAY SO

BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: String to Array"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

I HAS A length, length R I IZ STRING'Z LEN YR string MKAY
I HAS A character_array ITZ I IZ string_to_array YR string MKAY

VISIBLE "Input string: " string
VISIBLE "String to Array Result by Index: "
I IZ print_array YR character_array AN YR length MKAY

KTHXBYE