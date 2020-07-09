local luamidi = require("luamidi")


----------------------
-- PRINT MIDI PORTS --
----------------------

io.write("INPUT PORTS\n---\n")
for k, v in ipairs(luamidi.enumerateinports()) do
   io.write(string.format("%d\t%s\n",k, v))
end
io.write("---\n")

io.write("\nOUTPUT PORTS\n---\n")
for k, v in ipairs(luamidi.enumerateoutports()) do
   io.write(string.format("%d\t%s\n",k, v))
end
io.write("---\n")



---------------
-- SEND MIDI --
---------------

local inport = 4
local outport = 4
local midiout = luamidi.openout(outport)

-- pitch, vel, channel (0 index)
midiout:noteOn(100, 127, 0)

-- same as above but using raw MIDI bytes
--midiout:sendMessage(144, 100, 127)

-- yet another way to send the same message
--luamidi.noteOn(outport, 100, 127, 0)



------------------
-- RECEIVE MIDI --
------------------

-- listen to incoming msg
io.write("\n\nListen to incoming msg (for few seconds)\n---\n")
local i = 0
while i < 1000 do
   local b1, b2, b3, delta = luamidi.getMessage(inport)
   if b1 ~= nil then
      io.write(string.format("byte1: %d\tbyte2: %d\tbyte3: %d\tdelta: %.3f\n", b1, b2, b3, delta))
   end
   i = i + 1
   
   -- this won't work on Windows
   os.execute("sleep 0.01")
end
io.write("\n")



--------------
-- CLEAN UP --
--------------

luamidi.__gc()
