HAI 1.4

BTW ~~~ IMPORTS ~~~
BTW ---------------
CAN HAS STRING?

BTW ~~~ FUNCTIONS ~~~

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

BTW ------------------------ convert_string_to_lower_case ---
HOW IZ I convert_string_to_lower_case YR string
  I HAS A keys ITZ A BUKKIT
  I HAS A values ITZ A BUKKIT

  keys HAS A SRS 0 ITZ "A",  values HAS A SRS  0 ITZ "a"
  keys HAS A SRS 1 ITZ "B",  values HAS A SRS  1 ITZ "b"
  keys HAS A SRS 2 ITZ "C",  values HAS A SRS  2 ITZ "c"
  keys HAS A SRS 3 ITZ "D",  values HAS A SRS  3 ITZ "d"
  keys HAS A SRS 4 ITZ "E",  values HAS A SRS  4 ITZ "e"
  keys HAS A SRS 5 ITZ "F",  values HAS A SRS  5 ITZ "f"
  keys HAS A SRS 6 ITZ "G",  values HAS A SRS  6 ITZ "g"
  keys HAS A SRS 7 ITZ "H",  values HAS A SRS  7 ITZ "h"
  keys HAS A SRS 8 ITZ "I",  values HAS A SRS  8 ITZ "i"
  keys HAS A SRS 9 ITZ "J",  values HAS A SRS  9 ITZ "j"
  keys HAS A SRS 10 ITZ "K", values HAS A SRS 10 ITZ "k"
  keys HAS A SRS 11 ITZ "L", values HAS A SRS 11 ITZ "l"
  keys HAS A SRS 12 ITZ "M", values HAS A SRS 12 ITZ "m"
  keys HAS A SRS 13 ITZ "N", values HAS A SRS 13 ITZ "n"
  keys HAS A SRS 14 ITZ "O", values HAS A SRS 14 ITZ "o"
  keys HAS A SRS 15 ITZ "P", values HAS A SRS 15 ITZ "p"
  keys HAS A SRS 16 ITZ "Q", values HAS A SRS 16 ITZ "q"
  keys HAS A SRS 17 ITZ "R", values HAS A SRS 17 ITZ "r"
  keys HAS A SRS 18 ITZ "S", values HAS A SRS 18 ITZ "s"
  keys HAS A SRS 19 ITZ "T", values HAS A SRS 19 ITZ "t"
  keys HAS A SRS 20 ITZ "U", values HAS A SRS 20 ITZ "u"
  keys HAS A SRS 21 ITZ "V", values HAS A SRS 21 ITZ "v"
  keys HAS A SRS 22 ITZ "W", values HAS A SRS 22 ITZ "w"
  keys HAS A SRS 23 ITZ "X", values HAS A SRS 23 ITZ "x"
  keys HAS A SRS 24 ITZ "Y", values HAS A SRS 24 ITZ "y"
  keys HAS A SRS 25 ITZ "Z", values HAS A SRS 25 ITZ "z"
  keys HAS A SRS 26 ITZ "a", values HAS A SRS 26 ITZ "a"
  keys HAS A SRS 27 ITZ "b", values HAS A SRS 27 ITZ "b"
  keys HAS A SRS 28 ITZ "c", values HAS A SRS 28 ITZ "c"
  keys HAS A SRS 29 ITZ "d", values HAS A SRS 29 ITZ "d"
  keys HAS A SRS 30 ITZ "e", values HAS A SRS 30 ITZ "e"
  keys HAS A SRS 31 ITZ "f", values HAS A SRS 31 ITZ "f"
  keys HAS A SRS 32 ITZ "g", values HAS A SRS 32 ITZ "g"
  keys HAS A SRS 33 ITZ "h", values HAS A SRS 33 ITZ "h"
  keys HAS A SRS 34 ITZ "i", values HAS A SRS 34 ITZ "i"
  keys HAS A SRS 35 ITZ "j", values HAS A SRS 35 ITZ "j"
  keys HAS A SRS 36 ITZ "k", values HAS A SRS 36 ITZ "k"
  keys HAS A SRS 37 ITZ "l", values HAS A SRS 37 ITZ "l"
  keys HAS A SRS 38 ITZ "m", values HAS A SRS 38 ITZ "m"
  keys HAS A SRS 39 ITZ "n", values HAS A SRS 39 ITZ "n"
  keys HAS A SRS 40 ITZ "o", values HAS A SRS 40 ITZ "o"
  keys HAS A SRS 41 ITZ "p", values HAS A SRS 41 ITZ "p"
  keys HAS A SRS 42 ITZ "q", values HAS A SRS 42 ITZ "q"
  keys HAS A SRS 43 ITZ "r", values HAS A SRS 43 ITZ "r"
  keys HAS A SRS 44 ITZ "s", values HAS A SRS 44 ITZ "s"
  keys HAS A SRS 45 ITZ "t", values HAS A SRS 45 ITZ "t"
  keys HAS A SRS 46 ITZ "u", values HAS A SRS 46 ITZ "u"
  keys HAS A SRS 47 ITZ "v", values HAS A SRS 47 ITZ "v"
  keys HAS A SRS 48 ITZ "w", values HAS A SRS 48 ITZ "w"
  keys HAS A SRS 49 ITZ "x", values HAS A SRS 49 ITZ "x"
  keys HAS A SRS 50 ITZ "y", values HAS A SRS 50 ITZ "y"
  keys HAS A SRS 51 ITZ "z", values HAS A SRS 51 ITZ "z"
  keys HAS A SRS 52 ITZ "0", values HAS A SRS 52 ITZ "0"
  keys HAS A SRS 53 ITZ "1", values HAS A SRS 53 ITZ "1"
  keys HAS A SRS 54 ITZ "2", values HAS A SRS 54 ITZ "2"
  keys HAS A SRS 55 ITZ "3", values HAS A SRS 55 ITZ "3"
  keys HAS A SRS 56 ITZ "4", values HAS A SRS 56 ITZ "4"
  keys HAS A SRS 57 ITZ "5", values HAS A SRS 57 ITZ "5"
  keys HAS A SRS 58 ITZ "6", values HAS A SRS 58 ITZ "6"
  keys HAS A SRS 59 ITZ "7", values HAS A SRS 59 ITZ "7"
  keys HAS A SRS 60 ITZ "8", values HAS A SRS 60 ITZ "8"
  keys HAS A SRS 61 ITZ "9", values HAS A SRS 61 ITZ "9"
  keys HAS A SRS 62 ITZ " ", values HAS A SRS 62 ITZ " "

  I HAS A array             ITZ I IZ string_to_array YR string MKAY
  I HAS A length            ITZ I IZ STRING'Z LEN YR string MKAY

  HOW IZ I translate_array_with_dictionary YR array AN YR length AN YR boolean_switch

    I HAS A comparisons
    I HAS A swaps

    boolean_switch
    O RLY?
      YA RLY BTW chars to ints
        comparisons R keys
        swaps R values
      NO WAI BTW ints to chars
        comparisons R values
        swaps R keys
    OIC

    I HAS A arrays_converted ITZ A BUKKIT
    I HAS A arrays_convert_length ITZ 0



    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN length
      I HAS A this_index ITZ array'Z SRS index

      IM IN YR inner_loop UPPIN YR jindex TIL BOTH SAEM jindex AN 63
        I HAS A this_key ITZ comparisons'Z SRS jindex
        I HAS A this_value ITZ swaps'Z SRS jindex

        BOTH SAEM this_index AN this_key
        O RLY?
          YA RLY
            arrays_converted HAS A SRS arrays_convert_length ITZ this_value
            arrays_convert_length R SUM OF arrays_convert_length AN 1
          NO WAI
        OIC
      IM OUTTA YR inner_loop

    IM OUTTA YR loop

    FOUND YR arrays_converted
  IF U SAY SO

  I HAS A translated_array ITZ I IZ translate_array_with_dictionary YR array AN YR length AN YR WIN MKAY

  I HAS A translated_string ITZ I IZ array_to_string YR translated_array AN YR length MKAY

  FOUND YR translated_string
IF U SAY SO
BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: String to Lowercase"
VISIBLE "Enter a string to process. (Beware, no input validation): "

I HAS A string
GIMMEH string

I HAS A reversed_string ITZ I IZ convert_string_to_lower_case YR string MKAY

VISIBLE "Input string: " string
VISIBLE "Lowercase String Result: " reversed_string

KTHXBYE