HAI 1.4

BTW ~~~ IMPORTS ~~~
BTW ---------------
CAN HAS STRING?

BTW ~~~ FUNCTIONS ~~~

BTW ------------------------ slice_string ---
HOW IZ I slice_string YR string AN YR start AN YR end

  I HAS A length ITZ I IZ STRING'Z LEN YR string MKAY

  DIFFRINT start AN SMALLR OF start AN length
  O RLY?
    YA RLY
      VISIBLE "Error, start is greater than string length"
      GTFO
    NO WAI
  OIC

  DIFFRINT end AN SMALLR OF end AN length
  O RLY?
    YA RLY
      VISIBLE "Error, end is greater than string length"
      GTFO
    NO WAI
  OIC

  DIFFRINT start AN SMALLR OF start AN end
  O RLY?
    YA RLY
      VISIBLE "Error, start is greater than end"
      GTFO
    NO WAI
  OIC

  I HAS A return_string ITZ ""

  IM IN YR forLoop UPPIN YR index TIL BOTH SAEM index AN SUM OF end AN 1
    I HAS A temp ITZ I IZ STRING'Z AT YR string AN YR index MKAY
    BOTH SAEM index AN BIGGR OF index AN start
    O RLY?
      YA RLY
        return_string R SMOOSH return_string temp MKAY
      NO WAI
    OIC
    
  IM OUTTA YR forLoop
  FOUND YR return_string
IF U SAY SO

BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: Slice String"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

VISIBLE "Enter a start position to slice from. (Beware, no input validation): "

I HAS A start
GIMMEH start
start IS NOW A NUMBR

VISIBLE "Enter an end position to slice to. (Beware, no input validation): "

I HAS A end
GIMMEH end
end IS NOW A NUMBR

I HAS A sliced_string ITZ I IZ slice_string YR string AN YR start AN YR end MKAY

VISIBLE "Input string: " string
VISIBLE "Start Position: " start
VISIBLE "End Position: " end
VISIBLE "Slice String Result: " sliced_string

KTHXBYE