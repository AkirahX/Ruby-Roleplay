#include <a_samp>
/*POWER FIRE by BaBaYkA*/
#define POWER_FIRE_ENABLED_TEXT "Mágia ativa"
#define ERROR_1 "Boom"
#define MESS_1 "Já foi"

#define FIRE_TIMER_INTERVAL 80
#define FIRE_POWER_SOUND 1039

#define FIRE_START_DIST 10.0
#define FIRE_FINAL_DIST 90.0
#define FIRE_NEXT_DIST 3.0

#define Explosion_Rad 5
#define Explosion_Type 1

#define FIRE_CMD "/fire"

#define PLAYER_DAMAGE_DIST 1.5
#define VEH_DAMAGE_DIST 4.0

/*Code*/
new S[MAX_PLAYERS] = -1;
new Fires[MAX_PLAYERS];
new Float: dist[MAX_PLAYERS]/* = 100.0*/;
new Timer[MAX_PLAYERS];
new Float: PEX[3][MAX_PLAYERS];
new Float: P[4][MAX_PLAYERS];
forward Fireman(playerid);

public OnFilterScriptInit()
{
	print("   Fire-Power by BRICS loaded.");
	for(new i; i < GetMaxPlayers(); i++)S[i] = -1;
	return 1;
}

public OnFilterScriptExit()
{
    for(new i; i < GetMaxPlayers(); i++)KillTimer(Timer[i]);
    print("   Fire-Power by BRICS unloaded.");
	return 1;
}

public OnPlayerConnect(playerid)
{
    S[playerid] = -1;
    Fires[playerid] = 0;
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp(FIRE_CMD, cmdtext, true, 10) == 0)
	{
		if(S[playerid] > -1)return SendClientMessage(playerid,-1,ERROR_1);
		S[playerid] = 1;
		Fires[playerid] = 5;
		SetPlayerChatBubble(playerid, "Akira Potter", 0xFF0000FF, 100.0, 10000);
		SetPlayerAttachedObject(playerid,0, 18693, 5, 1.983503, 1.558882, -0.129482, 86.705787, 308.978118, 268.198822, 1.500000, 1.500000, 1.500000);
		SetPlayerAttachedObject(playerid,1, 18693, 6, 1.983503, 1.558882, -0.129482, 86.705787, 308.978118, 268.198822, 1.500000, 1.500000, 1.500000);
		SendClientMessage(playerid,-1,POWER_FIRE_ENABLED_TEXT);
		return 1;
	}
	return 0;
}

public Fireman(playerid)
{

	if(dist[playerid] >= FIRE_FINAL_DIST)
	{
		KillTimer(Timer[playerid]);
		//dist[playerid] = 100.0;
		if(Fires[playerid] == 0)
		{
               S[playerid] = -1;
               SendClientMessage(playerid,-1,MESS_1);
               RemovePlayerAttachedObject(playerid, 0);
			   RemovePlayerAttachedObject(playerid, 1);
               return 1;
		}
		S[playerid] = 1;
		return 1;
	}
    GetXYInFrontOfPoint(P[0][playerid],P[1][playerid], PEX[0][playerid], PEX[1][playerid], P[3][playerid], dist[playerid]);
    CreateExplosion(PEX[0][playerid],PEX[1][playerid],P[2][playerid],Explosion_Type,Explosion_Rad);
    for(new i; i < GetMaxPlayers(); i ++)
    {
		if(!IsPlayerConnected(i))continue;
		if(GetPlayerDistanceFromPoint(i,PEX[0][playerid],PEX[1][playerid],P[2][playerid]) < PLAYER_DAMAGE_DIST)
		{
             new Float:hp;
			 GetPlayerHealth(i,hp);
			 if(hp <= 0)continue;
			 SetPlayerHealth(i,-1);

       }
    }
	for(new v; v < MAX_VEHICLES; v ++)
	{
	   if(GetVehicleDistanceFromPoint(v,PEX[0][playerid],PEX[1][playerid],P[2][playerid]) <= VEH_DAMAGE_DIST)SetVehicleHealth(v,0);
	   
	}
    dist[playerid] += FIRE_NEXT_DIST;
	return 1;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_FIRE)
	{
		            if(GetPlayerWeapon(playerid) != 0)return 1;
			        if(S[playerid] == -1 ||S[playerid] == 0)return 1;
				    if(IsPlayerInAnyVehicle(playerid))return 1;
            		dist[playerid] = FIRE_START_DIST;
            		GetPlayerPos(playerid,P[0][playerid],P[1][playerid],P[2][playerid]);
	                GetPlayerFacingAngle(playerid,P[3][playerid]);
            		Timer[playerid] = SetTimerEx("Fireman",FIRE_TIMER_INTERVAL,1,"d",playerid);
            		S[playerid] = 0;
            		Fires[playerid] --;
            		PlayerPlaySound(playerid,FIRE_POWER_SOUND,0,0,0);

	}
	return 1;
}
stock GetXYInFrontOfPoint(Float:x, Float:y, &Float:x2, &Float:y2, Float:A, Float:distance)
{
    x2 = x + (distance * floatsin(-A, degrees));
    y2 = y + (distance * floatcos(-A, degrees));
}
