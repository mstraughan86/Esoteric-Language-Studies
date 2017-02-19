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

BTW ------------------------ array_to_string ---
HOW IZ I array_to_string YR array AN YR array_length
  I HAS A loop_string ITZ ""

  IM IN YR for_loop UPPIN YR index TIL BOTH SAEM index AN array_length
    loop_string R SMOOSH loop_string array'Z SRS index MKAY
  IM OUTTA YR for_loop

  FOUND YR loop_string
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

VISIBLE "Command: Array to String"
VISIBLE "Enter 3 characters to process. Press enter after each character input. (Beware, no input validation): "

I HAS A first_char
GIMMEH first_char

I HAS A second_char
GIMMEH second_char

I HAS A third_char
GIMMEH third_char

I HAS A character_array ITZ A BUKKIT
I HAS A array_length, array_length R 3
character_array HAS A SRS 0 ITZ first_char
character_array HAS A SRS 1 ITZ second_char
character_array HAS A SRS 2 ITZ third_char

I HAS A string ITZ I IZ array_to_string YR character_array AN YR array_length MKAY

VISIBLE "Input Array: "
I IZ print_array YR character_array AN YR array_length MKAY
VISIBLE "Array to String Result: " string

KTHXBYE