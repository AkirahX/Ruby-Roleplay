
#include <a_samp>
#include <fly>


public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" The Trusted Company by BaBaYkA");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}
public OnPlayerConnect(playerid)
{
	InitFly(playerid);
	return 1;
}

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}
public OnPlayerCommandText(playerid, cmdtext[])
{
	if(!strcmp(cmdtext,"/pet",true))
	{
	    StartFly(playerid);
	    SetPlayerAttachedObject(playerid, 0, 19078, 1,  -0.723000, 0.276999, 0.000000,  0.000000, 0.000000, 0.000000,  5.103001, 6.017002, 4.027001); // 115
	    return 1;
	}
	if(!strcmp(cmdtext,"/stoppet",true))
	{
	    RemovePlayerAttachedObject(playerid,0);
	    StopFly(playerid);
	    return 1;
	}

	return 0;
}
