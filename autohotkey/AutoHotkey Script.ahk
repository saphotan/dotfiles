#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!Space::Send, {vkF3sc029}	;Alt+Spaceで全角/半角キー


#IfWinNotActive, Minecraft
Space::Send, {Blind}{Space}		;Spaceを有効にする
Space & Enter::Send, {Blind}{Space}	;Space+EnterでSpace
Space & b::Send, {Blind}{Space}		;Space+bでSpace
Space & h::Send, {Blind}{left}		;Space+hで←
Space & j::Send, {Blind}{down}		;Space+jで↓
Space & k::Send, {Blind}{up}		;Space+kで↑
Space & l::Send, {Blind}{right}		;Space+lで→
Space & u::Send, {Blind}{PgUp}		;Space+uでPageUp
Space & n::Send, {Blind}{PgDn}		;Space+nでPageDown
Space & i::Send, {Blind}{Home}		;Space+iでHome
Space & o::Send, {Blind}{End}		;Space+oでEnd
Space & BS::Send, {Blind}{Del}		;Space+BSでDelete
Space & ,::Send, {Blind}{WheelUp}	;Space+,でホイール上
Space & .::Send, {Blind}{WheelDown}	;Space+.でホイール下
^Space::Send, ^{Space} ; 方向キーの設定で他アプリでのspaceのショートカットが出来ないので組み合わせを定義しておく
#IfWinNotActive


^h::Send, {BS}
