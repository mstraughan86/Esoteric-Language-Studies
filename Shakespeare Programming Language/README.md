# Shakespeare Programming Language
## Introduction
I first encountered this language applying for ```The Influential Network```, as a bonus language to use in their coding challenge interview pre-screen. This was the second esoteric language in that challenge, so I had a little momentum built up from learning ```LOLCODE```. This language however was a bit more limiting, but that much more rewarding when I cracked it.

## Description
## Installation
I spent a lot of time attempting to get both this and ```LOLCODE``` interpreter/compiler working, but it took so much time to get setup, that I utilized online compilers instead.

## Execution

## Online Compilers
Online compilers if you do not want to deal with having to compile on your local machine.

- [Try It Online](https://tio.run/#spl)
- [Apex Oracle](https://apex.oracle.com/pls/apex/f?p=25672:1:111706453446673:::::)

## Development

This development was my first look into the craziness that esoteric languages can embody. Read over the language specification documentation [here](http://shakespearelang.sourceforge.net/report/shakespeare/).

1. No functions, no loops, only gotos. Ive never done this...
2. Maximum of 2 variables on "stage", passing instructions to each other. Ok, weird, but not impossible to work with.
3. Syntax is flexible! Grammer is more important than actual nouns and adjectives. There is the connotation of negative, positive and neutral words, which change values. I used [this](https://github.com/zmbc/shakespearelang/blob/master/shakespearelang/shakespeare.ebnf) to help me out.
4. Strings do not exist. Characters are represented by values. A value can be itself and also displayed as its character value.
5. Stacks are possible, but destructive to read from!
6. No comments make keeping track of things difficult.
7. If-else statements appear to only execute a single command (the code inbetween the ```,``` and the ```.```). But a workaround is to repeat the if-else statement for additional commands to be executed. This will work u ntil you make another conditional statement to if-else upon.
8. So you have to manually keep track of every character you get, and it has a double meaning, its numerical value, and its display representation of 0-255 whatever ascii character it is.

What I want to do first is create a universal block structure with the Acts and Scenes, and with the character stage instructions. With some creative use of these, we can give a bunch of structure to our code and aid in human readability.

Here is the syntax I defined:
```
Act I: Code Block Name.
	Scene I: PREFIX (Setup variable values here).
		[Exeunt]
		...
	Scene II: BODY (Looping logic here).
		[Exeunt]
		...
		[Enter ... and ...]
			...: You are as small as the sum of yourself and a toad!
			...: Are you ...?
			...: If so, let us return to scene II.
		[Exeunt]

	Scene III: PREFIX (Setup variable values again).
		[Exeunt]
		...

	Scene IV: BODY (Another loop here).
		[Exeunt]
		...
		[Enter ... and ...]
			...: You are as small as the sum of yourself and a toad!
			...: Are you ...?
			...: If so, let us return to scene IV.
		[Exeunt]

	Scene V: SUFFIX (Cleanup variables before exit).
		[Exeunt]
		...
```

After that, lets tackle how to output things onto our screen.

All 256 characters from index 0 - 255. You use these with ```Open your heart.``` and ```Speak your mind.``` commands.
```


 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ
```

A few important ones' key and value:
```
.=46,
:=58,
 =160,
A=65,
B=66,
C=67,
D=68,
E=69,
F=70,
G=71,
H=72,
I=73,
J=74,
K=75,
L=76,
M=77,
N=78,
O=79,
P=80,
Q=81,
R=82,
S=83,
T=84,
U=85,
V=86,
W=87,
X=88,
Y=89,
Z=90,
[=91,
\=92,
]=93,
^=94,
_=95,
`=96,
a=97,
b=98,
c=99,
d=100,
e=101,
f=102,
g=103,
h=104,
i=105,
j=106,
k=107,
l=108,
m=109,
n=110,
o=111,
p=112,
q=113,
r=114,
s=115,
t=116,
u=117,
v=118,
w=119,
x=120,
y=121,
z=122
```

A quick script to convert these numbers into a valid SPL constant:
```javascript
const getBits = (val, factor) => {
    factor = factor || 1;
    if(val) {
        return (val % 2 ? [factor] : []).concat(getBits(val>>1, factor*2))
    }
    return [];
}
const convertToLanguageArray = array => {
	for(i = 0; i < array.length; i++) {
		let phrase = '';
		let adj = Math.log(array[i])/Math.log(2);
		for(j = 0; j < adj; j++) {
			phrase = phrase + 'big '
		}
		phrase = phrase + 'cat'
		array[i] = phrase;
	}
	return array;
}
const combineLanguageArray = array => {
	let result = '';
	for(i = 0; i < array.length; i++) {
		if(array.length-i>1) {
			result = result + "the sum of a " + array[i] + " and ";
		}
		else {
			result = result + "a " + array[i];
		}
	}
	return result;
}

const convert = key => {
	return combineLanguageArray(convertToLanguageArray(getBits(key)));
}
//convert(102)
//"the sum of a big cat and the sum of a big big cat and the sum of a big big big big big cat and a big big big big big big cat"
```

Just getting the correct characters for you to print out is difficult enough, but managable with the above references!















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