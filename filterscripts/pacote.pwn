#include <a_samp>
#include <Pawn.CMD>
#include <streamer>
#include <sscanf2>

#if defined FILTERSCRIPT



public OnFilterScriptInit()
{
	print("Drone By: Akirah");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}
#endif
/*
enum dInfo
{
	bool:DroneOO
};
new DroneInfo[MAX_PLAYERS][dInfo];

new DroneID;
new Float:X, Float:Y, Float:Z, Float:R;
new DroneUpTimer, DroneDownTimer, ControlDrone, DroneRotateRTimer, DroneRotateLTimer;
new TrID;

#define HOLDING(%0) \
    ((newkeys & (%0)) == (%0))
#define PRESSED(%0) \
    (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define PRESSING(%0,%1) \
    (%0 & (%1))
#define RELEASED(%0) \
    (((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))


*/
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
/*
    if(PRESSED(newkeys, KEY_JUMP ))
    {
		if(DroneInfo[playerid][DroneOO] == true)
		{
		    DroneUp(playerid);
			DroneUpTimer = SetTimerEx("DroneUT", 150, true, "i", playerid);
		    return 1;
		}
		return 1;
    }
    if(RELEASED(newkeys, KEY_JUMP))
    {
		if(DroneInfo[playerid][DroneOO] == true)
		{
		    KillTimer(DroneUpTimer);
		    return 1;
		}
		return 1;
    }
    if(PRESSED(newkeys, KEY_FIRE))
    {
        if(DroneInfo[playerid][DroneOO] == true)
		{
		    DroneDown(playerid);
		    DroneDownTimer = SetTimerEx("DroneDT", 150, true, "i", playerid);
		    return 1;
		}
		return 1;
    }
    if(RELEASED(newkeys, KEY_FIRE))
    {
		if(DroneInfo[playerid][DroneOO] ==  true)
		{
		    KillTimer(DroneDownTimer);
		    return 1;
		}
		return 1;
    }
    if(PRESSED(newkeys, KEY_NO))
    {
        if(DroneInfo[playerid][DroneOO] == true)
		{
		    DroneRotateLeft(playerid);
		    DroneRotateLTimer = SetTimerEx("DroneRL", 150, true, "i", playerid);
		    return 1;
		}
		return 1;
    }
    if(RELEASED(newkeys, KEY_NO))
    {
		if(DroneInfo[playerid][DroneOO] ==  true)
		{
		    KillTimer(DroneRotateLTimer);
		    return 1;
		}
		return 1;
    }
    if(PRESSED(newkeys, KEY_CTRL_BACK))
    {
        if(DroneInfo[playerid][DroneOO] == true)
		{
		    DroneRotateRight(playerid);
		    DroneRotateRTimer = SetTimerEx("DroneRR", 150, true, "i", playerid);
		    return 1;
		}
		return 1;
    }
    if(RELEASED(newkeys, KEY_CTRL_BACK ))
    {
		if(DroneInfo[playerid][DroneOO] ==  true)
		{
		    KillTimer(DroneRotateRTimer);
		    return 1;
		}
		return 1;
    }
	return 1;
}
forward DroneUT (playerid);
public DroneUT (playerid)
{
	DroneUp(playerid);
	return 1;
}
forward DroneDT (playerid);
public DroneDT (playerid)
{
	DroneDown(playerid);
	return 1;
}
forward DroneRL(playerid);
public DroneRL(playerid)
{
	DroneRotateLeft(playerid);
	return 1;
}
forward DroneRR(playerid);
public DroneRR(playerid)
{
	DroneRotateRight(playerid);
	return 1;
}
DroneFront(playerid)
{
    Y = Y + 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}

DroneBack(playerid)
{
    Y = Y - 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}
DroneLeft(playerid)
{
    X = X - 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}
DroneRight(playerid)
{
    X = X + 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}
DroneUp(playerid)
{
    Z = Z + 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}
DroneDown(playerid)
{
    Z = Z - 1.5;
	MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, 0.0);
	return 1;
}
DroneRotateLeft(playerid)
{
	R = R - 0.5;
	SendClientMessage(playerid, -1, "Rodou left");
    MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, R);
}
DroneRotateRight(playerid)
{
    SendClientMessage(playerid, -1, "Rodou right");
    R = R + 0.5;
    MoveDynamicObject(DroneID, X, Y, Z, 8.0, 0.0, 0.0, R);
}
IniciarDrone(playerid)
{
    DroneInfo[playerid][DroneOO] = true;
	GetPlayerPos(playerid, X, Y, Z);
	R = 0.0;
	DroneID = CreateDynamicObject(1718, X, Y + 3, Z, R, R, R, 0, 0);
	AttachCameraToDynamicObject(playerid, DroneID);
	ApplyAnimation(playerid, "BOMBER", "BOM_PLANT", 4.0, 1, 0, 0, 1200, 0);
 	SetTimerEx("AnimIniciarDrone", 1200, false, "i", playerid);
  	ControlDrone = SetTimerEx("ControleDrone", 200, true, "i", playerid);
  	return 1;
}
FinalizarDrone(playerid)
{
    DroneInfo[playerid][DroneOO] = false;
	DestroyDynamicObject(DroneID);
 	SetCameraBehindPlayer(playerid);
  	ClearAnimations(playerid);
   	KillTimer(DroneUpTimer);
    KillTimer(DroneDownTimer);
    KillTimer(ControlDrone);
    return 1;
}
*/

/*
forward ControleDrone(playerid);
public ControleDrone(playerid)
{
    if(DroneInfo[playerid][DroneOO] == true)
	{
	    new Keys, ud, lr;
	    GetPlayerKeys(playerid, Keys, ud, lr);

	    if (ud == KEY_UP)
	    {
			DroneFront(playerid);
	    }
	    else if (ud == KEY_DOWN)
	    {
	        DroneBack(playerid);
	    }
	    if (lr == KEY_LEFT)
	    {
			DroneLeft(playerid);
	    }
	    else if (lr == KEY_RIGHT)
	    {
	       DroneRight(playerid);
	    }
	    return 1;
	}
	
	return 1;
}

CMD:drone(playerid, params[])
{
	if(DroneInfo[playerid][DroneOO] == false)
	{
		IniciarDrone(playerid);
 	}
 	if(DroneInfo[playerid][DroneOO] == true)
 	{
 	    SendClientMessage(playerid, -1, "Você já tem um drone ativo, utilize /sdrone para desligar");
	}
	return 1;
 	
}
CMD:sdrone(playerid, params[])
{
    if(DroneInfo[playerid][DroneOO] == true)
	{
	   FinalizarDrone(playerid);
 	}
 	if(DroneInfo[playerid][DroneOO] == false)
 	{
 	    SendClientMessage(playerid, -1, "Você não possuí um drone ativo, utilize /drone.");
	}
    return 1;
}
forward AnimIniciarDrone(playerid);
public AnimIniciarDrone(playerid)
{
    ApplyAnimation(playerid, "CAMERA", "CAMCRCH_TO_CAMSTND", 4.0, 1, 0, 0, 0, 0);
    SetTimerEx("AnimIniciarDrone2", 1000, false, "i", playerid);
    return 1;
}
forward AnimIniciarDrone2(playerid);
public AnimIniciarDrone2(playerid)
{
    ApplyAnimation(playerid, "CAMERA", "CAMSTND_IDLELOOP", 4.0, 1, 0, 0, 0, 0);
    return 1;
}
CMD:tr(playerid, params[])
{
    TrID = CreateDynamicObject(11690, X, Y, Z + 1, 0.0, 0.0, 0.0, 0, 0);
    SendClientMessage(playerid, -1, "tr");
    return 1;
}
CMD:tr2(playerid, params[])
{
	MoveDynamicObject(TrID, X, Y, Z, 0.5, 0.0, 0.0);
	SendClientMessage(playerid, -1, "tr2");
	return 1;
}
* /































CMD:pacote(playerid, params[])
{
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	new PacoteID = CreateDynamicObject(2903, X, Y, Z - 4, 0.0, 0.0, 0.0, 0, 0);
	MoveDynamicObject(PacoteID, X, Y, Z - 500, 4.0, 0.0, 0.0, 0.0);
	return 1;
}
*/
