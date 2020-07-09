# luamidi - Lua 5.3 bindings for RtMidi
### based on https://github.com/dwiel/luamidi

## Info
This version of _luamidi_ has only been tested on Ubuntu Studio 20.04 LTS with Lua 5.3.5.
As said above this is a fork of this [repository](https://github.com/dwiel/luamidi) that doesn't contain any license, even if [here](http://luaforge.net/projects/luamidi/) it says that uses a MIT license.
I got in contact with the original author to clarify this, and am currently waiting for a reply.
This is the only reason why this repository doesn't contain a LICENSE yet.


## More Info
I am not a C/C++ programmer!!!!!
Mine was quite an empirical approach to port this module to Lua 5.3 (ie a lot of trial and error!) and I'm sure a better work can be done. 
Even if it's my intention to learn more about C and C++ and in particular about writing Lua modules in C/C++, I'd like to highlight the fact that any help is more than welcome!
Thus, please feel free to contribute.


## How to install
At the moment I only tried this library on Linux (see **Info**) thus the _config_ file is setup to work with that.
For MacOS uncomment rows 14, 15 and 16 (not tested yet).
For Windows, no idea yet!

### INSTALL - Linux (and MacOS!?!?!):
Launch the terminal and run the following commands

> cd /path/to/luamidi
> sudo make

This will generate _luamidi.o_ (on MacOS it should be _luamidi.dylib_, if so change _.dylib_ to _.so_) in the /src folder.


## Run the test
Once _luamidi_ has been built, copy _luamidi.so_ to the /tests folder then launch the terminal and run the following commands:

> cd /path/to/luamidi/tests
> lua test.lua

