#include <a_samp>

#define LAPTOP_MONEY 	(1000) // The laptop's cost

// Internet - Web addresses for the granting of
public InternetBrowser(playerid, url[]);
public InternetBrowser(playerid, url[])
{
	// Pйlda:
 	if(CheckURL(url, "www.google.hu"))
 	if(CheckURL(url, "www.reallife.ru"))
 	{
 	    SendClientMessage(playerid, 0xFFFF00AA, "Google is under construction!");
 	    return 1;
 	}
 	// Or, if you want to recognize the other form of address
 	// If you enter http://www.google.hu/ even get hit
 	// But here there is a danger that the user is more Irish in a hit and
	// then get || Example: khm..::www.google.hu::..
 	if(CheckURL(url, "www.google.hu", true))
 	{
 	    SendClientMessage(playerid, 0xFFFF00AA, "Google is under construction!");
 	    return 1;
 	}
 	if(CheckURL(url, "www.reallife.ru", true))
 	{
 	    SendClientMessage(playerid, 0xFFFF00AA, "Добро пожаловать на сайт!");
 	    return 1;
 	}
	return ERROR_404(playerid, url);
}
//---------------------------------------

#define COLOR_GREEN 	(0x33AA33AA)
#define COLOR_RED 		(0xAA3333AA)
#define COLOR_YELLOW 	(0xFFFF00AA)

new bool: pLaptop[MAX_PLAYERS];
new pMail[MAX_PLAYERS][MAX_PLAYER_NAME];
new pChat[MAX_PLAYERS][MAX_PLAYER_NAME];
new pChatID[MAX_PLAYERS];
new pChatMSG[MAX_PLAYERS][2048];

public OnPlayerDisconnect(playerid, reason)
{
	pLaptop[playerid] = false;
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	if(newinteriorid == 4 || newinteriorid == 6 || newinteriorid == 18 || newinteriorid == 17)
	{
	    SendClientMessage(playerid, COLOR_YELLOW, "[LAPTOP]: Buy a laptop! (/buy-laptop)");
	}
	if((oldinteriorid == 4 || oldinteriorid == 6 || oldinteriorid == 18 || oldinteriorid == 17) && pLaptop[playerid] == false)
	{
	    SendClientMessage(playerid, COLOR_YELLOW, "[LAPTOP]: Why didn't buy laptop?! :'(");
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(!strcmp("/buy-laptop", cmdtext, true))
	{
	    new string[128];
	    new int = GetPlayerInterior(playerid);
        if(int == 4 || int == 6 || int == 18 || int == 17)
		{
		    if(GetPlayerMoney(playerid) >= LAPTOP_MONEY)
		    {
		        if(pLaptop[playerid] == true) return 1;
		        GivePlayerMoney(playerid, GetPlayerMoney(playerid)-LAPTOP_MONEY);
		        pLaptop[playerid] = true;
		        SendClientMessage(playerid, COLOR_GREEN, "[LAPTOP]: You're buy a laptop!");
		        } else {
				format(string, 128, "[LAPTOP]: Your money's not enough! (%d$)", LAPTOP_MONEY);
		        SendClientMessage(playerid, COLOR_RED, string);
		    }
		    } else {
		    SendClientMessage(playerid, COLOR_RED, "[LAPTOP]: You can buy a laptop only in 24/7 shops!");
		}
		return 1;
	}
	if(!strcmp("/laptop-on", cmdtext, true))
	{
	    if(pLaptop[playerid] == true)
	    {
	        ShowPlayerDialog(playerid, 1, DIALOG_STYLE_MSGBOX, "Загрузка", "Do you load the Windows?", "Ok", "Cancel");
	        } else {
	        SendClientMessage(playerid, COLOR_RED, "[LAPTOP]: You haven't a laptop!");
		}
		return 1;
 	}
 	if(!strcmp("/din", cmdtext, true))
 	{
 	    GivePlayerMoney(playerid, 1000000);
 	    return 1;
	}
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	// ---- Fхmenь
	if(dialogid == 1)
	{
	    if(response)
        {
            ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Menu - Windows 95:", "Microsoft Office Outlook 1995\nWindows Live Messenger 1.0\nInternet Explorer BETA1", "Select", "Shut Down");
        }
        return 1;
	}
	// ---- Almenьk
	else if(dialogid == 2)
	{
	    switch(listitem)
	    {
	        case 0: ShowPlayerDialog(playerid, 3, DIALOG_STYLE_INPUT, "Address", "Player's name:", "Ok", "Отмена");
	        case 1: ShowPlayerDialog(playerid, 9, DIALOG_STYLE_INPUT, "MSN address", "Player's name:", "Ok", "Отмена");
	        case 2: ShowPlayerDialog(playerid, 7, DIALOG_STYLE_INPUT, "Internet Explorer", "URL:", "Ok", "Отмена");
	    }
	    return 1;
	}
	
	//---- E-mail --------------------------------------------------------------
	else if(dialogid == 3)
	{
	    if(response)
        {
			format(pMail[playerid], MAX_PLAYER_NAME, "%s", inputtext);
			ShowPlayerDialog(playerid, 4, DIALOG_STYLE_INPUT, "Message", "Enter your message:", "Send", "Cancel");
			} else {
			ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Menu - Windows 95", "Microsoft Office Outlook 1995\nWindows Live Messenger 1.0\nInternet Explorer BETA1", "Select", "Shut Down");
		}
		return 1;
	}
	else if(dialogid == 4)
	{
	    if(response)
	    {
	        new string[128], pName[MAX_PLAYER_NAME], giveplayerid;
	        for(new i; i <= MAX_PLAYERS; i++)
	        {
	            GetPlayerName(i, pName, MAX_PLAYER_NAME);
				if(strfind(pName, pMail[playerid], false) != -1)
				{
				    giveplayerid = i;
				    break;
				}
	        }
			GetPlayerName(playerid, pName, MAX_PLAYER_NAME);
			format(string, 128, "PM received from %s (%i): %s", pName, playerid, inputtext);
			SendClientMessage(giveplayerid, 0xFFFF22AA, string);
			GetPlayerName(giveplayerid, pName, MAX_PLAYER_NAME);
			format(string, 128, "PM sent to %s (%i): %s", pName, giveplayerid, inputtext);
			SendClientMessage(playerid, 0xFFCC2299, string);
			GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~PM sent!", 3000, 3);
    		GameTextForPlayer(giveplayerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~PM received", 3000, 3);
    		PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
    		PlayerPlaySound(giveplayerid, 1057, 0.0, 0.0, 0.0);
	        } else {
	        ShowPlayerDialog(playerid, 5, DIALOG_STYLE_MSGBOX, "Сохранения", "Сохранить изменения?", "Сохранить", "Отмена");
	    }
	    return 1;
	}
	else if(dialogid == 5)
	{
	    if(response)
	    {
	        ShowPlayerDialog(playerid, 6, DIALOG_STYLE_MSGBOX, "Save", "Save failed!", "Ok", "Cancel");
	        } else {
	        ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Menu - Windows 95", "Microsoft Office Outlook 1995\nWindows Live Messenger 1.0\nInternet Explorer BETA1", "Select", "Shut Down");
	    }
	    return 1;
	}
	else if(dialogid == 6)
	{
	    ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Menu - Windows 95", "Microsoft Office Outlook 1995\nWindows Live Messenger 1.0\nInternet Explorer BETA1", "Select", "Shut Down");
	    return 1;
	}
	//--------------------------------------------------------------------------
	//--------------------------------------------------------------------------
	//---- Internet Explorer ---------------------------------------------------
	else if(dialogid == 7)
	{
	    if(response)
	    {
	        CallRemoteFunction("InternetBrowser", "ds", playerid, inputtext);
	        } else {
	        ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Menu - Windows 95", "Microsoft Office Outlook 1995\nWindows Live Messenger 1.0\nInternet Explorer BETA1", "Select", "Shut Down");
	    }
	    return 1;
	}
	else if(dialogid == 8)
	{
	    ShowPlayerDialog(playerid, 7, DIALOG_STYLE_INPUT, "Internet Explorer", "URL:", "Ok", "Отмена");
	    return 1;
	}
	//--------------------------------------------------------------------------
	//--------------------------------------------------------------------------
	//---- MSN -----------------------------------------------------------------
	else if(dialogid == 9)
	{
	    if(response)
	    {
	        new pName[MAX_PLAYER_NAME];
	        format(pChat[playerid], MAX_PLAYER_NAME, "%s", inputtext);
	        for(new i; i <= MAX_PLAYERS; i++)
	        {
				GetPlayerName(i, pName, MAX_PLAYER_NAME);
	            if(strfind(pName, pChat[playerid], false) != -1)
	            {
	                pChatID[playerid] = i;
	                pChatID[i] = playerid;
	                strdel(pChatMSG[playerid], 0, strlen(pChatMSG[playerid]));
	                strdel(pChatMSG[pChatID[playerid]], 0, strlen(pChatMSG[pChatID[playerid]]));
	                break;
	            }
	        }
			ShowPlayerDialog(playerid, 10, DIALOG_STYLE_INPUT, "Message", "Enter your message:", "Send", "Cancel");
	    }
	    return 1;
	}
	else if(dialogid == 10)
	{
	    if(response)
	    {
	        new pName[MAX_PLAYER_NAME];
	        GetPlayerName(playerid, pName, MAX_PLAYER_NAME);
	        format(pChatMSG[playerid], 2048, "%s%s's message:\n * %s\n", pChatMSG[pChatID[playerid]], pName, inputtext);
	        ShowPlayerDialog(pChatID[playerid], 11, DIALOG_STYLE_LIST, "Windows Live Messenger", pChatMSG[playerid], "Answer", "Cancel");
	    }
	}
	else if(dialogid == 11)
	{
	    if(response)
	    {
	        ShowPlayerDialog(playerid, 12, DIALOG_STYLE_INPUT, "Message", "Enter your message:", "Send", "Cancel");
	    }
	}
	else if(dialogid == 12)
	{
	    if(response)
	    {
	        new pName[MAX_PLAYER_NAME];
	        GetPlayerName(playerid, pName, MAX_PLAYER_NAME);
	        format(pChatMSG[playerid], 2048, "%s%s's message:\n * %s\n", pChatMSG[pChatID[playerid]], pName, inputtext);
	        ShowPlayerDialog(pChatID[playerid], 13, DIALOG_STYLE_LIST, "Windows Live Messenger", pChatMSG[playerid], "Answer", "Cancel");
	    }
	}
	else if(dialogid == 13)
	{
	    if(response)
	    {
	        ShowPlayerDialog(playerid, 10, DIALOG_STYLE_INPUT, "Message", "Enter your message:", "Send", "Cancel");
	    }
	}
	return 1;
}

ERROR_404(playerid, url[])
{
	new string[64];
	format(string, sizeof(string), "%s - 404", url);
    ShowPlayerDialog(playerid, 8, DIALOG_STYLE_MSGBOX, string, "Сайт не существует!", "Ok", "Cancel");
    return 1;
}

stock CheckURL(string[], url[], bool: search = false)
{
	if(search == false)
	{
	 	for(new i; i <= strlen(string); i++)
		{
		    if(string[i] != url[i])
		    {
		        return false;
			}
		}
		} else {
		if(strfind(string, url, false) != -1)
	 	{
	 	    return true;
	 	    } else {
	 	    return false;
		}
	}
	return true;
}
