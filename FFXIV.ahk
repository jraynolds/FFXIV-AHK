#IfWinActive FINAL FANTASY XIV

;;Key Press function
SendPress(modifier, output) {
	If (modifier = "") {
		Send {%output% Down}
		Sleep, 10
		Send {%output% Up}
	} Else {
		Send {%modifier% Down}{%output% Down}
		Sleep, 10
		Send {%output% Up}{%modifier% Up}
	}
}

NewKeyPress(key, keyModifier1, keyOutput1, keyModifier2, keyOutput2) {
	If (pressed) {
		Return
	}
	pressed := true
	KeyWait, %key%, T0.4
		If (ErrorLevel) {
			SendPress(keyModifier2, keyOutput2)
		} Else {
			SendPress(keyModifier1, keyOutput1)
		}
	KeyWait, %key%
	pressed := false
	Return
}

;;mb1 is for attacks: click once to cycle, click and hold to cycle automatically
;;macro + mb1 is for heavy attacks: click once to cycle, click and hold to cycle automatically

;;mb2 is for interrupts: click once for shield thing and hold for bash
End::NewKeyPress("End","",6,"",7)

;;macro + lclick marks enemy, hold is for not going for that enemy
^LButton::NewKeyPress("LButton","","]","","\")

;;macro + rclick is too much my dude

;;downbutton is for pulling: 1x is flash, hold is for shield toss
Del::NewKeyPress("Del","",0,"",9)

;;macro + downbutton is for provoke, hold is for shield buff
^Del::NewKeyPress("Del","",9,"",0)

;;upbutton is for attacks: 1x is hp/dmg, hold is aoe
Ins::NewKeyPress("Ins","Ctrl",5,"Ctrl",6)

;;macro + upbutton is for sword buff, hold is for swordbuff2
^Ins::NewKeyPress("Ins","Ctrl",4,"Alt",9)

;;backbutton is for running, hold is for companion
PgDn::NewKeyPress("PgDn","Alt",7,"Alt",6)

;;macro backbutton is for tping, hold is for Return
^PgDn::NewKeyPress("PgDn","Alt",2,"Alt",1)

;;leftnudge is for shield1, hold is for shield2
NumpadHome::NewKeyPress("NumpadHome","Shift",3,"Shift",4)

;;macro+leftnudge is for heal+, hold is for crit-
^NumpadHome::NewKeyPress("NumpadHome","Shift",5,"Shift",6)

;;rightnudge is for protect1, hold is for protect2
NumpadPgUp::NewKeyPress("NumpadPgup","Shift",8,"Shift",9)

;;macro+rightnudge is for protect3, hold is for pot
^NumpadPgUp::NewKeyPress("NumpadPgup","Shift",0,"Shift","-")

;;forwardbutton is for allyshield, hold is for heal
PgUp::NewKeyPress("PgUp","Ctrl",8,"Ctrl",9)

;;macro+forwardbutton is for cover, hold is for raise 
^PgUp::NewKeyPress("PgUp","Ctrl","-","Ctrl","=")

;;middleclick is for

;;macro + middle is for

#IfWinActive 
;;;;;BASICS;;;;

NumpadDiv::Suspend,Toggle

NumpadMult::Reload
