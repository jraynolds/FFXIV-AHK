# FFXIV-AHK
Autohotkey file for FFXIV (and a Logitech 502)

This takes a keypress and waits until release to see if it's held for [.4 seconds]; if it is, the program sends one keypress. Otherwise it sends the other.

The format for adding a key is:

[KeyPressed>::NewKeyPress([KeyPressed-MinusModifier],[KeyMod1],[KeyResult1],[KeyMod2],[KeyResult2])

And an example is:

^NumpadPgUp::NewKeyPress("NumpadPgup","",0,"Shift","-")

Numbers should be written without quotations, but all else should be in quotes. For outputs without a modifier (like Ctrl), simply leave empty.

Of course, this requires https://autohotkey.com/
