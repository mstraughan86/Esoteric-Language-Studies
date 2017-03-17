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
- [Horatio](http://mileszim.github.io/horatio/)

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
newline=10,
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

After tackling this, character representation through weird power of two maths, everything else should just be work to get done. The language has all other features that you can build off of I think.

Chech out the following implementations of stuff:
- [Display Charset](https://tio.run/##zZFBS8NAEIXPza8YbxVKfkAvUm2LBUExFSzSw2Q7aRa3u2F3VppfHzebWlMwHjx5WGbJvu/l8cZVqmnm0lUKaxAlWhRMFhxxmiTr0ltpJiC1Y@sFG5sm6zpHxZffkplgWE1hwGeUCdLUCp6eF8vVK4wzYl/BB1qJuaJwUZ4clGTpOshHb4sjec3beNWtT5cEUO@gC7DtxnRjPKAl0IZLqffpD2gUdmh02XZjGD0HDolvH@cbGD8YUwUJKLOX4k85s4rwHWrjLRyk3vV/NsyGt9GJh6@06CCX@3ZwSeD8AUwRfR2pIsIIAvmqz84CV7f8mUWwtPv1BI@bvseqaIuagCIG74KEvdXABtypq4tCvisMHWYvy7j1O0Woe3sPaagwIRsdJf@DxTfNPSll0k8 "Shakespeare Programming Language – Try It Online")
- [Echo](https://tio.run/##7VhNT9tAED2TXzHcQEL@AVyqUEKbQwVKKGpVcdg4k3iFvWvtroH8@nTWa8frYON8oBJQD5Ed78e8mXlvvGOdxsvlIIwkZBoVcJFmBhSfRwYmLHwAmZmg17uNMsXlGQ1ro7LQSBX0bhcTFpv6s96NVIazMwgjplhoaEdtaJug159KwfWZ@wsxirmJaH4/NDA8hx@oNZsjGAcj6B2NQxRoh25Gg6vhLzgZo8lSeGSKs0mMdBNnqCFChac0/ejP4BkzYe7zW2ENO8zAxBQc1Ht3Of8tM2AKQUgTcTEPGpbmE93SfJd7d2lfugJMiC@uL3/DySXXacwW5HA2m1mIlZlWgISgwEh3pS2mYcLn9mIiBJ0lIGfAIGQOYO2hnWh/5WD1ZP1HM4KjcYrsARYyU5BwMQ26rfqbv2q5cXCjCdv5ALv5sDGS94e7X7j/STQPI5KbZ347a/tY/O/04fHksxWIz1LLPkg0P4APuwnwQGrV28T3dYxvgY9tkqmGAyKdEMc/r/Iz7dcYmfBOtfogjrL5mZxQfkPjNQVNZ/JBkprFYaFfLXWdyE5WXa@yzdKXx/@bTEdFN0XtEU2mP9TdeA5pCq/rg9yQs7pxDGmsbBauUxQV647zERemESaYTGh9gs37drraKARrS2M8K3Rgue@Foj15HjLoJzC02@Ijj@2VwRNTXzyvYDizgT6jIFkegqIGUAnbIuoi1jWXNiANjDBkMVmjcCRSLbZJPXgB0Um@iwvJlM9m1ISKEGGC5gmLVLSHx6sDpY4uqCemMlAQxScFNxrkk3Bt82l3Dmv@rrJfAmqAcVcjbIHANek5gEJGmVD4iLTJtI2gVdDdkjzZ7vZl4P00d3LU29q56nO/NS/NVDWSFQIplvdpKc2xubO2TMREKe91MmrZzsW7NS666N5VpX6EVu/1DFtIIb0C1K7pbWFzUcEtwcicX8RLANWnnc6inhue7EXQ93kB7CWLVR0fPBv7Iav6oOV2TPPAEs@Sbp89PbQVovWTw3FdPF0CqWz5Ails7SqQsk53CMRZ7BTIsFEgtSrYIJF9JbFVBRw5zGufLp1WyBGp@JwLFq@ksVXmX62EK1YccqLLeR@oEi6X3zGOZfAX "Shakespeare Programming Language – Try It Online")
- [Reverse String](https://tio.run/##7VnNbuIwED6Xp5jeWgnxAL2saEtXHFatoIu2Wu3BBEOiJnZkO6Xsy7PjOD9OSEiAbqFVIyGCY3v@Pn8zE2Tor9cj@kKFpBBJKsBjYaRAKuGxRa/TeXQj4fEuDuNQ5Cguep3H1ZT4qjjWeeBCeaQLjksEcRTuJBVxnnud/owzT3bNT/ApWygX5/cdBcMr@EGlJAsKisfie52zsUMZ1Y8eRoO74S@4GFMVhfBChEemPsUbP6ISXCroJU4/@z14pRFTf@JbpgUb/YCwGRj1/5ivqyceAREUGFeuNi9bmklFsdf3t09wcevJ0Ccr1Dqaz7WcXEwqJd7TSIkFag3M3RXepbKIhKm30F/KpSCjAPgcCDjEKFgY1BP1J32Yj5Q/OKN3Ng4peYYVjwQEHpv1mqXam2@VXPmw1YTdbID9bGityfHVPczd7@LN0/Bk@8jvJu0QiV9Gnx5OPhtBfBYu@yDe/AA27HcAT4Sr3sa/23V8C/1Im0hVFIhYIY5/3sWF6Y1PCbNKU1lXj25UikmZWFuPHlLKxoU1avmdKquiryqsB0GoVqelfbbUtBN7STUNxy5LN8v/h0i6hVYIf2CLYhkk0b2mmTGPjNTWPsRnabNwH1KWo@48fmLcNKIBDaa4PqDV@zaaWnkQtCxJ/XlyDjT2LVfUB8/SDPoBDPW29MXz9TeBJRHfLKtgONeO7qKTNA5BYBcnmO7zZOLrgkktQAMj6hAfpaE7Ai5Wu4QeLIfIIN7FuGTmzefYSTKHwpSqJU1CUe8eiwfSc3SNjS3SQAIUGxSeksCXzPS@l80xLNibRT9VqEKNSQGwiQam044VSI5RxITp8WfNLbNZEgfb3G463g5zI0atrY2pNvZr41INVcVJckCS5X1cinN07LQs5RKWHu8yGCWvx@KkhEXj3UlO9SOqz3sxwlolB1OA2De8NWhOGHyofWtezKRvYxopPBYzPQiOx6H7gw5BxtqDV6XfPeXvoCTMBQ/a2mshv45yiqeiCfn51jbyk633RX5KwA3INxIbkV9iYcCrguEq4I/uhOTKlucDu0F/W5AtjTKyGy9JWH7RqG0i2gE4kL0rxLGE@MAnOLWF0hWpGqwrp70SMAqTMvRYCNlBcIqWqj33gU3VPlvxU7WgmUI3LLSIdAuSgCyIxw6lzxZEMcmIYmS0L0NomuCIC2/hMeLnQGJ8CUdMocckknbxnwyrU6jdL71/EtXAQ2lq868NE2veqjH6yqrlrKp3DGPHItCCN8ms5e77/LOn2rPWefZ/82KeWHflxZ0iv5UKqzLmB6XCk@om1usbQf6ukuRF/PN/ "Shakespeare Programming Language – Try It Online")
- [Is String Palindrome](https://tio.run/##7VnNbts4ED7HTzF7a4HAD9BLkbZp4cMiQdI1tljkQMsji6hECiSV1E@fHYqURSWUJdttY7c9BFLEn/lm5pvhDK3L/PFxpkEbxcUKSpZzsVSywOlk8jmrFJfnwAWNVomRajr5vF6w3Dz5ljGuWffb5Foqw@ljkjHFEoOKRLDk63RysZSC63P3L@QoViaj@ReJgdkb@Bu1ZisEI6HSSBud3SYo0A5d31x@nP0Lr27RVCXcM8XZIkd6ySvUkKHC1zT97L/Lb1gJc1e/CivY6QFMLMHBv3OPN19kBUwhCGky0n4aWVpPdEvrXe7co3/pBjAhfnf14Qu8@sB1mbM1KVylqYXYiukFSAg8RnprZDENC76yD5Mh6KoAmQKDhDmAnY92ov1rBtsvT/9oxvTstkT2FdayUlAQAabDUsPNt0qODo6asJsOsJ8Oo5G8PNzDzP1TrHkclhzv@d2kHSLxj9LHx5NfLUH8KrnsRKx5AjrsF4BHkqu@j323Y/we@NgYT0UKRKoQb//5WNe073NkIqhq9VGUsnVNTig/oamrcarwy8rEavLLojTr40K/Weo6kb2kul5ll6XPy//rSmfOcE2TxQV1N4FCmszr@iA35KSOtiGNNc3CVYmiZd1f9Ygz0w0WWCxove3sYvsOqhoNBCtLY576OLDcD0zR77wAGVwUMLPb4j3P7ZPBA1NvA61gllpDn5ORLA9BUQOohG0Rtbd1R6URpIEbTFhO0sgchVTrXVwPgUF0Ue/iTLLkaUpNqEgQFmge0Lui3zxBHmji6B31xJQGPFFCUnCjQT4I1za/HvZhR9@N9xtAERjzDmE9Atek1wB8GFVC4T3SJss@grZGd0tqZ7vX54YP3TzI0WBrp2rI/V6/xKlqJPMB4pdf0FKaY31nZZmMiSa8n5JRy34uzp9w0Vl33qb6G7Tx3vWwhZTQEaD2dW8PmydNDieKtZc8rHPNM5jMa4GLg4j5Monf3UvttfSgSNqk/stvxt59tXdgbsdElmvLzGLYWkEEbUld3IR5tWO4uzbw2uDyS9rjo2OwbUvchCHUYXB61PsGZ3NGDASnkzgYnLNocHYycCQ8Dw3HnbLvEGeArRgXI@Js46qdmeNJ53aI0SBgZUfwliWtlNNkTm9a38Ib56pNiadQV5TJFlLaYt/dW/9Aao1Pg21l11OizDcZ7b0sSrukOUloz6YcaL6RzZIMbdWQ0tkAVo3gvNmtqo0rHZzGW4Yax7faFfg2kBwzT@dsaqrOdYSAnmgdRU6Q1vN4Qpy3R9hVZWzn0jrQ03ivBLQBzVeraInl04cHvd5uImq7ZU6ViWL3CCkn3CnjCpLKIKykXAb9uWV1RIB@fp/yozCMWDNm5imotDvGGEdqaD@RJKPMPqxy/fHlffObUz6W0WY7tWD@aLPziHv11Vfz47b/xbk3A@7ddDxPnl7Tg/qV3tbw8ZEKTBpW/wM "Shakespeare Programming Language – Try It Online")
- [Sort String](https://tio.run/##7VrdbuI6EL6Gp3DvulLFA@zNqrvbXSH1iKp0UVdHvTDBEKuJHdlOWZ6@Zxw7xAnOH9ADrbZSFXBiz8w3/xNkEr2@3pMXIiRBqSQCUZakCkklKFuNhsOHMBWUX8EyLKWB4mI0fNjMcaQqayGmElfWaMxZeWk4DXEU8fXVYKBInHCBxQZJLjRF@LIiaMkFwkgC9YigFxylZASbNhEPnntuighbEFG/SSocPCPFkTDyA3d3cJ@CFEGIBQ4UwJE9NBpeLzij8srugZNXKoTnrwOFxp/RP0RKfSKcpTEcDQfTgDCib93d3/wYP6LLKVFpAqwJiuc5jxKFRJBP8Pjg35s/JGXqKfvINGEDPMJsgQzeT@by@TdPERYEMa5CrSPP1uxBszU75clc6rduGQaOv06@/0aX36lMIgyIqXS51CwWZGoZBA4sj/App4UlmtOVvqgQME9jxJegqwAbBkuL@kH9n98sVqr/8MRoME0IfkYbngoUU7YYtVN1D2@k7L3Z6YF@MqD9ZOjMyenZPQzu/wXN80Cyu@b7UTuE4l@hz89OPlqA@Cix7J2g@Q5k2M8BzyRWHQffZh6PwR/uoilPgQgV4vTXj6ym/RYRzJyqVp5FKZvV5MDlT6KcjsZXk9/EidqcF/fbraYT2Yuq6VX6bN0t/@9SGZZaQfgC3Y0jkAR4TR9kbhmqnTGEe3mzMEkIK6zuIrtjYLonMYnnsD8m/nNbRfU6gqYlSbS0fqBt34GiXnkOZ@g6RmN9LHmhkb5itMbiiyMVGi810FcAkrZDaDJVKphuEaXFuiRSB6NB9ySA5hlIASpcbPqoHjmAyDg7xUCyoMslNKEsIGhO1JpYVdTD48SB3I@@Qk8MYcAaimsUVEnE18y0zZ/adViSd6v9nCEPG7OSwVoOTJOeMWDdKGW2x1/UGWgButmSKdt83AXeVXOrjTpHG1Fd26/Vi99UFcfWQez2a9gKz2jdaVoqxCx376oxSl5vi7OKLRp0Z0Wovyfa38sa1iwFkALEvuqtsWYbwXWi0eMaXJ3GoPkmn/HsHdP1ZMrypOdWT@ZSqMNieOENkeWZDmUMTow4T3JgNK4lpCCuAeoctisaNyQazYNrKOZSMhInmnlcN96UHfeiORT3ln2bH261uCoUPF2Fxl6NwGrNC3WB1rX6tMztbtebmcL1gZUE/JvyVEZmxkcWLhdaN10YKIJ8xbsK3GPyxc0CzW4189N0UrudUWZE7Wd/tCkiUfdo48lafdOiu/e2b@ww2pmucZI5co0G7Gy3GnrtcjMavuA5riOTzZ13yWTLh5Lxi2MPL8uzjdh0tcojtrGqZmxKppIfZu1PtFmFK335ICt@y0F7yFf1mY8l3ZrrFyYtyjuMqzfAyWw2wUFnwHLcscds@scIXxVbJDO34q9E9y405jxaeAjZMDMuxZns/U7Ak40GA1NmqsEsM@l80DUVeOq02lSQ5@iWVDAenzYZOCI1VxXNySDfe1snZo2WnKrpFmrYvDBaCh6/WXMwc@qV/BWnKVXsez/9JeBCEKg3uQC42wszV0e5MXtUtI@ee7S6plSqcahebYTd3tZGdDZyv/7Hj07RjF9IqVA@autgCQK928nkDl3@nDxM0LZ6Ldfjbi1eUxrvG7N06d0rLh6jS@/cGLZ1gzVafBz7UEV0idYkr9Xz6ntDVNfWy8G4tZs1j7WwX2Y@ayZn2sFMBMh/2dDaOmY8zg8abZxmdHjQQGUbMW/@KN0/uX1Ua7R25HVq7LrxVb9UVhztZufdvqZf@LPDvKOEv6rbIPjzTMs8oxSAE9m/7fZioV8sbFKyw1G5P6tOWJRGGgCAhe1PVoofyqAIqyxZtjHtGfsi568YoVUMo/TQ1nocC@lBOLcW35n7mI3vnEb78W1oH8ftSOg01g2WhPAKyt5D82mn4qoorTLud4Z01o64oCvKcFQYEoOm6ITj2FMGko5zo4Yq@mQDWW13QEzt/krQqJp3esf2N6lWk6o@McmABTuLj5JYqy9yLz56ph10TrNvHRaLvNo3LPbSfGMk9CXMdxoJz@rF1OsrnoMu8UJf/gM "Shakespeare Programming Language – Try It Online")

## Theories

#### Function Calls through Gotos
I just don't know enough about using ```gotos``` to know about any pre-established patterns or paradigms, but just winging it...

I think there might be a way to simulate function calls using a master switch code block and function blocks, where every function block exits back to the switch, and the switch has access to enter into every function in the file.

You would need to associate every function block's parameters with specific variables, and make sure to clear those variables before use, set them when calling the function, and clearing them after transfering into whatever other recieving function.

You would also need "progress" variables, where you keep track of where you are in the master switch block, so that when you enter back into that block, you jump back to your original place. This progress variable can be kept in a key-value pair somehow tied to the Acts and Scenes in the program.

This way you could have a core group of functions you repeatedly set variables for, jump to and do some calculations, jump back out to where you left off through your progress variables, retrieve those calculationsi from your set variables, clear those, and move on forward! That was a mouthful, and it would probably look like a few page fulls of lines of code!

But I think, in theory, this would be a method to achieve modular code blocks through the use of  ```gotos```. I believe this proposed solutioni would work.

#### Does ```gotos``` follow Assembly coding techniques?
My gut says yes.

## Knowledge Base
- http://shakespearelang.sourceforge.net/report/shakespeare/
- https://github.com/zmbc/shakespearelang/blob/master/shakespearelang/shakespeare.ebnf
- https://github.com/drsam94/Spl/
- https://github.com/mileszim/horatio
- https://github.com/zmbc/shakespearelang
- https://pypi.python.org/pypi/shakespearelang/0.3.0
- http://search.cpan.org/dist/Lingua-Shakespeare/lib/Lingua/Shakespeare.pod
- http://tonyandrews.blogspot.com/2016/07/apex-ide-for-shakespeare-programming.html
- https://apex.oracle.com/pls/apex/f?p=25672:1::::::
- https://treskal.com/kha/spl/