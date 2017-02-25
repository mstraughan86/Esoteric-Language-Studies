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

BTW ------------------------ sort_array ---
HOW IZ I sort_array YR array AN YR array_length
  I HAS A keys ITZ A BUKKIT
  I HAS A values ITZ A BUKKIT

  keys HAS A SRS  0 ITZ "0", values HAS A SRS  0 ITZ  0
  keys HAS A SRS  1 ITZ "1", values HAS A SRS  1 ITZ  -1
  keys HAS A SRS  2 ITZ "2", values HAS A SRS  2 ITZ  -2
  keys HAS A SRS  3 ITZ "3", values HAS A SRS  3 ITZ  -3
  keys HAS A SRS  4 ITZ "4", values HAS A SRS  4 ITZ  -4
  keys HAS A SRS  5 ITZ "5", values HAS A SRS  5 ITZ  -5
  keys HAS A SRS  6 ITZ "6", values HAS A SRS  6 ITZ  -6
  keys HAS A SRS  7 ITZ "7", values HAS A SRS  7 ITZ  -7
  keys HAS A SRS  8 ITZ "8", values HAS A SRS  8 ITZ  -8
  keys HAS A SRS  9 ITZ "9", values HAS A SRS  9 ITZ  -9
  keys HAS A SRS 10 ITZ "A", values HAS A SRS 10 ITZ -10
  keys HAS A SRS 11 ITZ "B", values HAS A SRS 11 ITZ -11
  keys HAS A SRS 12 ITZ "C", values HAS A SRS 12 ITZ -12
  keys HAS A SRS 13 ITZ "D", values HAS A SRS 13 ITZ -13
  keys HAS A SRS 14 ITZ "E", values HAS A SRS 14 ITZ -14
  keys HAS A SRS 15 ITZ "F", values HAS A SRS 15 ITZ -15
  keys HAS A SRS 16 ITZ "G", values HAS A SRS 16 ITZ -16
  keys HAS A SRS 17 ITZ "H", values HAS A SRS 17 ITZ -17
  keys HAS A SRS 18 ITZ "I", values HAS A SRS 18 ITZ -18
  keys HAS A SRS 19 ITZ "J", values HAS A SRS 19 ITZ -19
  keys HAS A SRS 20 ITZ "K", values HAS A SRS 20 ITZ -20
  keys HAS A SRS 21 ITZ "L", values HAS A SRS 21 ITZ -21
  keys HAS A SRS 22 ITZ "M", values HAS A SRS 22 ITZ -22
  keys HAS A SRS 23 ITZ "N", values HAS A SRS 23 ITZ -23
  keys HAS A SRS 24 ITZ "O", values HAS A SRS 24 ITZ -24
  keys HAS A SRS 25 ITZ "P", values HAS A SRS 25 ITZ -25
  keys HAS A SRS 26 ITZ "Q", values HAS A SRS 26 ITZ -26
  keys HAS A SRS 27 ITZ "R", values HAS A SRS 27 ITZ -27
  keys HAS A SRS 28 ITZ "S", values HAS A SRS 28 ITZ -28
  keys HAS A SRS 29 ITZ "T", values HAS A SRS 29 ITZ -29
  keys HAS A SRS 30 ITZ "U", values HAS A SRS 30 ITZ -30
  keys HAS A SRS 31 ITZ "V", values HAS A SRS 31 ITZ -31
  keys HAS A SRS 32 ITZ "W", values HAS A SRS 32 ITZ -32
  keys HAS A SRS 33 ITZ "X", values HAS A SRS 33 ITZ -33
  keys HAS A SRS 34 ITZ "Y", values HAS A SRS 34 ITZ -34
  keys HAS A SRS 35 ITZ "Z", values HAS A SRS 35 ITZ -35
  keys HAS A SRS 36 ITZ "a", values HAS A SRS 36 ITZ -36
  keys HAS A SRS 37 ITZ "b", values HAS A SRS 37 ITZ -37
  keys HAS A SRS 38 ITZ "c", values HAS A SRS 38 ITZ -38
  keys HAS A SRS 39 ITZ "d", values HAS A SRS 39 ITZ -39
  keys HAS A SRS 40 ITZ "e", values HAS A SRS 40 ITZ -40
  keys HAS A SRS 41 ITZ "f", values HAS A SRS 41 ITZ -41
  keys HAS A SRS 42 ITZ "g", values HAS A SRS 42 ITZ -42
  keys HAS A SRS 43 ITZ "h", values HAS A SRS 43 ITZ -43
  keys HAS A SRS 44 ITZ "i", values HAS A SRS 44 ITZ -44
  keys HAS A SRS 45 ITZ "j", values HAS A SRS 45 ITZ -45
  keys HAS A SRS 46 ITZ "k", values HAS A SRS 46 ITZ -46
  keys HAS A SRS 47 ITZ "l", values HAS A SRS 47 ITZ -47
  keys HAS A SRS 48 ITZ "m", values HAS A SRS 48 ITZ -48
  keys HAS A SRS 49 ITZ "n", values HAS A SRS 49 ITZ -49
  keys HAS A SRS 50 ITZ "o", values HAS A SRS 50 ITZ -50
  keys HAS A SRS 51 ITZ "p", values HAS A SRS 51 ITZ -51
  keys HAS A SRS 52 ITZ "q", values HAS A SRS 52 ITZ -52
  keys HAS A SRS 53 ITZ "r", values HAS A SRS 53 ITZ -53
  keys HAS A SRS 54 ITZ "s", values HAS A SRS 54 ITZ -54
  keys HAS A SRS 55 ITZ "t", values HAS A SRS 55 ITZ -55
  keys HAS A SRS 56 ITZ "u", values HAS A SRS 56 ITZ -56
  keys HAS A SRS 57 ITZ "v", values HAS A SRS 57 ITZ -57
  keys HAS A SRS 58 ITZ "w", values HAS A SRS 58 ITZ -58
  keys HAS A SRS 59 ITZ "x", values HAS A SRS 59 ITZ -59
  keys HAS A SRS 60 ITZ "y", values HAS A SRS 60 ITZ -60
  keys HAS A SRS 61 ITZ "z", values HAS A SRS 61 ITZ -61
  keys HAS A SRS 62 ITZ " ", values HAS A SRS 62 ITZ -62

  HOW IZ I translate_array_with_dictionary YR array AN YR array_length AN YR boolean_switch

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

    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN array_length
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

  I HAS A translated_array ITZ I IZ translate_array_with_dictionary YR array AN YR array_length AN YR WIN MKAY

  I HAS A sorted_array ITZ I IZ quick_sort YR translated_array AN YR 0 AN YR DIFF OF array_length AN 1 MKAY

  I HAS A result_array ITZ I IZ translate_array_with_dictionary YR sorted_array AN YR array_length AN YR FAIL MKAY

  FOUND YR result_array
IF U SAY SO

BTW ------------------------ swap ---
BTW @SEE: https://github.com/chuthagoras/lolcode/blob/master/quick_sort.lol
HOW IZ I swap YR array AN YR i AN YR j
   I HAS A cat ITZ array'Z SRS i
   array'Z SRS i R array'Z SRS j
   array'Z SRS j R cat
   GTFO
IF U SAY SO

BTW ------------------------ partition ---
BTW @SEE: https://github.com/chuthagoras/lolcode/blob/master/quick_sort.lol
HOW IZ I partition YR array AN YR p AN YR r
  I HAS A x ITZ array'Z SRS r
  I HAS A i ITZ DIFF OF p AN 1
  IM IN YR DANK
    BOTH SAEM p AN BIGGR OF p AN r, O RLY?, YA RLY, GTFO, OIC
    BOTH SAEM x AN BIGGR OF x AN array'Z SRS p, O RLY?
      YA RLY, i R SUM OF i AN 1
              I IZ swap YR array AN YR i AN YR p MKAY
    OIC
    p R SUM OF p AN 1
  IM OUTTA YR DANK
  I IZ swap YR array AN YR SUM OF i AN 1 AN YR r MKAY
  FOUND YR SUM OF i AN 1
IF U SAY SO

BTW ------------------------ quick_sort ---
BTW @SEE: https://github.com/chuthagoras/lolcode/blob/master/quick_sort.lol
HOW IZ I quick_sort YR array AN YR p AN YR r
  BOTH SAEM r AN BIGGR OF p AN r, O RLY? BTW r = max(r,p) -> r > p
    YA RLY, I HAS A q ITZ I IZ partition YR array AN YR p AN YR r MKAY
            I IZ quick_sort YR array AN YR p AN YR DIFF OF q AN 1 MKAY
            I IZ quick_sort YR array AN YR SUM OF q AN 1 AN YR r MKAY
    NO WAI, GTFO
  OIC
  FOUND YR array
IF U SAY SO

BTW    ~~~~~//~~~~~ ~~~~~//~~~~~    Main    ~~~~~//~~~~~ ~~~~~//~~~~~

VISIBLE "Command: Sort Array"
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

I HAS A sorted_array ITZ I IZ sort_array YR character_array AN YR array_length MKAY

VISIBLE "Input Array: "
I IZ print_array YR character_array AN YR array_length MKAY
VISIBLE "Sorted Array: "
I IZ print_array YR sorted_array AN YR array_length MKAY

KTHXBYE