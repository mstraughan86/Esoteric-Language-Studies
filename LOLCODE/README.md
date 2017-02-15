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
- File IO, but I can't get it to work reliably.

## Knowledge Base
- http://lolcode.org/
- https://github.com/justinmeza/lci