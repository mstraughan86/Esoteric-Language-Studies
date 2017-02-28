# LOLCODE
## Introduction
I first encountered this language applying for ```The Influential Network```, as a bonus language to use in their coding challenge interview pre-screen. It was silly but didn't appear to be impossible to use at first glance. It looked like it offered all the basic tools to create applications with, and the biggest hurdle was lack of support and flowery syntax. Maybe not so bad!

## Description

## Installation
Installation instructions originally found [here](https://github.com/justinmeza/lci).
```
cd ~
mkdir dev
cd dev
git clone https://github.com/justinmeza/lci.git
cd lci
git checkout future
python /install.py --prefix="/home/dev/lci"
```

#### Possible dependencies:
When installing on Ubuntu 16.04, I found that I was missing the following dependencies:
```
apt-get install libreadline-dev
apt-get install lib32ncurses5-dev
```

## Execution
```
./lci example.lol
```

#### Commands to Try
- ```./lci array_to_string.lol```
- ```./lci is_string_even.lol```
- ```./lci is_string_palindrome.lol```
- ```./lci reverse_string.lol```
- ```./lci slice_string.lol```
- ```./lci sort_array.lol```
- ```./lci string_to_array.lol```
- ```./lci string_to_lowercase.lol```

#### CLI Arguments
Command-line arguments appear to be impossible to pass through to the compiled code. As a work around, we can use the terminal ```<``` function to pass in what appears to be an argument!

Try this:
```
./lci example.lol < file.txt
```

## Online Compilers
Online compilers if you do not want to deal with having to compile on your local machine. Please note that at the time of this writing, all available online compilers only support ```LOLCODE master 1.2```, and not the ```LOLCODE future 1.4```.

- [repl.it](https://repl.it/languages/LOLCODE)
- [Try It Online](https://tio.run/#lolcode)
- [TutorialsPoint](https://www.tutorialspoint.com/execute_lolcode_online.php)

## Development

This was hard! But not that hard. Firstly, what do we have to work with? How can we understand this language in a way that I can take bite-sized chunks out of it and digest it?

Lets see what this language can [do](https://github.com/justinmeza/lolcode-spec/blob/master/v1.2/lolcode-spec-v1.2.md). (This is an out-dated spec, as the ```future``` branch does not have very much official documentation gathered in a single place.)

LOLCODE has:
- Variables, Types and Type Casting
- All the math operators
- All the boolean operators
- All the compoarison operators
- Functions
- Conditionals, Cases, Iterative and While Loops
- Arrays with index retrieval
- String Concatination

LOLCODE says it has:
- File IO, but I can't get it to work reliably. I use the cli argument workaround above.

This seems like a very functional and capable language to work with. Infact, from the language specifications, it just looks like a "reskin" of a statically typed language with a few quirks.

My development direction was focused on tackling the challenge problem, which was to basically:
- Accept input string.
- Determine if string is a palindrome.
- Sort string.
- Output a message to the user.

To bring it all together, put the input strings into a file, and mass output a message with each line processed like the above.

For working examples, try out:
```
./lci app1.lol
```

```
./lci app2.lol < list.txt
```

- Once I figured out how to use arrays to better store my data, everything else kind of clicked together.
- I determined my own personal style guide as I went.
- Condensing variable declaration, assignment and if applicable, one-time use in a function call into a single line with LOLCODE's ability to combine lines with the ```,``` operator was a very useful, cookie-cutter-ish way of approaching syntax.
- Also, use lowercase everything to distinguise your code from the very loud syntax.
- Regarding loops, I found that you are either iterating from 0 to some number N, or you are iterating until a condition is met and escape out. I didn't have too much luck iterating from a value V to some number N, but this might be possible.
- It will help to keep your string lengths handy, because they are used all over. I don't know how to get around this.
- This is doubly true for arrays I believe. I don't know of a way to get array length, unless it was something like ```array'Z LEN```, which I don't remember if I tried or not.
- And use functions! And organize your function declaration area in your file! Be neat!

```
I HAS A input_string ITZ A YARN, GIMMEH input_string
I HAS A input_int, GIMMEH input_string, input_string IS NOW A YARN
I HAS A string_length, string_length R I IZ STRING'Z LEN YR string MKAY

I HAS A character_array ITZ A BUKKIT
I HAS A array_length, array_length R 3
```

## Knowledge Base
- http://lolcode.org/
- https://github.com/justinmeza/lci
- https://github.com/LoganKelly/LOLTracer/blob/master/LOLTracer.lol
- https://github.com/chuthagoras/lolcode/blob/master/final.lol
- https://esolangs.org/wiki/LOLCODE