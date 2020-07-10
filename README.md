# luamidi - Lua 5.3 binding for RtMidi
### based on https://github.com/dwiel/luamidi

## Info
This version of _luamidi_ has only been tested on Ubuntu Studio 20.04 LTS and MacOS High Sierra 10.13.6 with Lua 5.3.5.<br/>
As said above this is a fork of this [repository](https://github.com/dwiel/luamidi) that doesn't contain any license, even if [here](http://luaforge.net/projects/luamidi/) it says that uses a MIT license.<br/>
I got in contact with the original author to clarify this, and am currently waiting for a reply.<br/>
This is the only reason why this repository doesn't contain a LICENSE yet.<br/>


## More Info
I am not a C/C++ programmer!!!!!<br/>
Mine was quite an empirical approach to port this module to Lua 5.3 (ie a lot of trial and error!) and I'm sure a better work can be done.<br/>
Even if it's my intention to learn more about C and C++ and in particular about writing Lua modules in C/C++, I'd like to highlight the fact that any help is more than welcome!<br/>
Thus, please feel free to contribute.<br/>


## How to install
At the moment I only tried this library on Linux and MacOS (see **Info**) thus the _config_ file is setup to work with them only.<br/>
For Windows, no idea yet!<br/>

### UNIX:
Launch the terminal and run the following commands<br/>

> cd /path/to/luamidi<br/>
> sudo make<br/>

This will generate _luamidi.o_ in the /src folder.<br/>


## Run the test
Once _luamidi_ has been built, copy _luamidi.so_ to the /tests folder then launch the terminal and run the following commands:<br/>
<br/>
> cd /path/to/luamidi/tests<br/>
> lua test.lua<br/>


## About RtMidi
At the moment this is a binding to a quite old version of RtMidi (1.0.6, the latest is 4.x!). The idea is for me to slowly bring _luamidi_ up to speed with RtMidi, more because it would be a good excuse to better learn C/C++ and writing modules for Lua.  