#InstallKeybdHook
#UseHook

List := ["ibe", "ama", "uju", "ba", "omo", "ulu", "zu", "ti", "go", "ke", "ki", "bi", "bo", "be", "ka", "bu", "ne", "aba", "ngu", "ngi", "nga", "zulul", "fu", "po", "ju", "me", "lo", "zu", "chi"]

numpad3::

Random, words, 2, 4

Send, {enter}
Send, /all{space}

Loop, %words%
	{
		Random, syllables, 1, 3
		Loop, %syllables%
		{
			Random, Ran, 1, % List.MaxIndex()
			Send, % List[Ran]
		}
		Send, {space}
	}

Send, {enter}

return