

win_to_gitbash(path)
{
	quotes_position := InStr(path, """")	
	if(quotes_position = 1)
	{
		path:=StrReplace(path,"""")		
		path:= """" . "/" . path . """"
	}
	else
	{
		path:= "/" . path
	}	
	path:= StrReplace(path,":")	
	path:=StrReplace(path,"\", "/")
	path:=StrReplace(path,"^","\")
	path:="""" . path . """"
	return path
}


gitbash_to_win(path)
{
	path:=SubStr(path,2)
	path:=SubStr(path,1,1) . ":"  . SubStr(path,2)
	path:=StrReplace(path,"/", "\")
	return path
}

sanitized_clipboard()
{	
	text:=StrReplace(clipboard,"`r`n")
	text:=StrReplace(text,"`n")
	return text
}


print(str)
{
	FileAppend  %str%`n, *	
}
