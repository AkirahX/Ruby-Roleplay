#include <a_samp>
#include <streamer>

new playerobject[MAX_PLAYERS][2];
new meatsp;
new vhod[2];
enum
{
    D_WORK,
    D_WORK_INFO
};

public OnFilterScriptInit()
{
	new tmpobjid = CreateDynamicObject(1439, 944.436828, 2127.660644, 1010.021179, 0.000000, 0.000000, -90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 2803, "cj_meaty", "CJ_FLESH_2", 0x00000000);
	CreatePickup(1275, 23, 960.7062,2099.4375,1011.0248,0);
	meatsp = CreateDynamicSphere(960.7062,2099.4375,1011.0248, 2.0);
	vhod[0] = CreatePickup(1318, 23, 1374.1469,405.0240,19.9555,0);
	vhod[1] = CreatePickup(1318, 23, 965.3796,2107.9758,1011.0303,0);
	CreateDynamic3DTextLabel("Начать работу: {f7ae11}H",0xFFFFFFFF,940.8611,2122.4094,1011.0303,5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0, 0);
	return 1;
}
public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(pickupid == vhod[0])
	{
	    SetPlayerPos(playerid,962.1105,2107.3452,1011.0303);
	    SetPlayerFacingAngle(playerid,91.9221);
	    SetPlayerInterior(playerid,1);
	}
	if(pickupid == vhod[1])
	{
	    SetPlayerPos(playerid,1371.3191,406.1893,19.7578);
	    SetPlayerFacingAngle(playerid,69.9652);
	    SetPlayerInterior(playerid,0);
	    if(GetPVarInt(playerid,"OnWork"))
	    {
		    if(IsValidDynamicObject(playerobject[playerid][0])) DestroyDynamicObject(playerobject[playerid][0]);
		    else if(IsValidDynamicObject(playerobject[playerid][1])) DestroyDynamicObject(playerobject[playerid][1]);
		    SetPlayerSkin(playerid,GetPVarInt(playerid,"OldSkin"));
			new str[144];
		    format(str,sizeof(str),"Вы отобрали %i испорченных кусков. Ваш заработок: $%i",GetPVarInt(playerid,"BadMeatDel"),GetPVarInt(playerid,"BadMeatDel")*30);
		    SendClientMessage(playerid,-1,str);
		    GivePlayerMoney(playerid,GetPVarInt(playerid,"BadMeatDel")*30);
		    DeletePVar(playerid,"MeatCheck");
			DeletePVar(playerid,"InWork");
			DeletePVar(playerid,"MeatCheck");
			DeletePVar(playerid,"BadMeatDel");
			DeletePVar(playerid,"BadMeat");
			DeletePVar(playerid,"OldSkin");
			DeletePVar(playerid,"OnWork");
	    }
	}
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	if(GetPVarInt(playerid,"OnWork"))  DisablePlayerCheckpoint(playerid);
	return 1;
}

public OnPlayerEnterDynamicArea(playerid, areaid)
{
	if(areaid == meatsp)
	{
	    if(!GetPVarInt(playerid,"OnWork")) ShowPlayerDialog(playerid,D_WORK,DIALOG_STYLE_MSGBOX,"Переодевалка","{ffffff}Вы действительно хотите начать работу на конвеере?","Далее","Назад");
	    else ShowPlayerDialog(playerid,D_WORK,DIALOG_STYLE_MSGBOX,"Переодевалка","{ffffff}Вы действительно хотите закончить работу на конвеере?","Далее","Назад");
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(GetPVarInt(playerid,"InWork"))
	{
	    if(IsValidDynamicObject(playerobject[playerid][0])) DestroyDynamicObject(playerobject[playerid][0]);
	    else if(IsValidDynamicObject(playerobject[playerid][1])) DestroyDynamicObject(playerobject[playerid][1]);
	}
	return 1;
}

public OnPlayerSpawn(playerid)
{
    if(GetPVarInt(playerid,"InWork"))
	{
	    if(IsValidDynamicObject(playerobject[playerid][0])) DestroyDynamicObject(playerobject[playerid][0]);
	    else if(IsValidDynamicObject(playerobject[playerid][1])) DestroyDynamicObject(playerobject[playerid][1]);
	    DeletePVar(playerid,"InWork");
	}
	return 1;
}

stock GoObject(playerid)
{
    playerobject[playerid][0] = CreateDynamicObject(2806, 942.3492, 2131.815185, 1011.226501, 0.000000, 0.000000, 0.000000, playerid+1, -1, -1, 300.00, 300.00);
	if(random(2))
	{
	    SetPVarInt(playerid,"BadMeat",1);
		SetDynamicObjectMaterial(playerobject[playerid][0], 0, 5421, "laesmokecnthus", "greenwall4", 0x00000000);
	}
	else DeletePVar(playerid,"BadMeat");
	MoveDynamicObject(playerobject[playerid][0],942.3492, 2123.890380, 1011.226501,2);
	Streamer_SetIntData(STREAMER_TYPE_OBJECT,playerobject[playerid][0],E_STREAMER_EXTRA_ID,playerid);
	Streamer_Update(playerid);
	
	return 1;
}

public OnDynamicObjectMoved(objectid)
{
    new playerid = Streamer_GetIntData(STREAMER_TYPE_OBJECT,objectid,E_STREAMER_EXTRA_ID);
    if(playerid != INVALID_PLAYER_ID)
    {
		new Float:x,Float:y,Float:z;
		GetDynamicObjectPos(objectid,x,y,z);
        if(GetPVarInt(playerid,"MeatCheck"))
        {
			if(x == 944.204345)
			{
				DestroyDynamicObject(objectid);
			    GoObject(playerid);
				DeletePVar(playerid,"MeatCheck");
				GameTextForPlayer(playerid,"~g~GOOD JOB",500,5);
				SetPVarInt(playerid,"BadMeatDel",GetPVarInt(playerid,"BadMeatDel")+1);
			}
        }
        else
        {
            if(y == 2123.890380)
            {
                if(GetPVarInt(playerid,"BadMeat")) GameTextForPlayer(playerid,"~r~BAD JOB",500,5);
                else GameTextForPlayer(playerid,"~g~GOOD JOB",500,5);
                DestroyDynamicObject(objectid);
			    GoObject(playerid);
				
            }
        }
    }
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_CTRL_BACK && !GetPVarInt(playerid,"InWork") && GetPVarInt(playerid,"OnWork"))
	{
	    if(IsPlayerInRangeOfPoint(playerid,2.0,940.8611,2122.4094,1011.0303))
	    {
	        ShowPlayerDialog(playerid,D_WORK_INFO,DIALOG_STYLE_MSGBOX,"Инфромация","{ffffff}Сейчас Вам предстоит отбирать мясо.\nЗеленое мясо - это испорченное.\nКак оно будет на красном квадрате нажимайте {f7ae11}Y{ffffff}\nДля завершения работы нажимате {f7ae11}N","Далее","");
	    }
	}
	if(newkeys & KEY_NO && !GetPVarInt(playerid,"MeatCheck"))
	{
		if(IsValidDynamicObject(playerobject[playerid][0])) DestroyDynamicObject(playerobject[playerid][0]);
		else if(IsValidDynamicObject(playerobject[playerid][1])) DestroyDynamicObject(playerobject[playerid][1]);
		SetPlayerVirtualWorld(playerid,0);
	    TogglePlayerControllable(playerid, 1);
	    SetCameraBehindPlayer(playerid);
	    DeletePVar(playerid,"InWork");
	}
	if(newkeys & KEY_YES && !GetPVarInt(playerid,"MeatCheck"))
	{
	    if(GetPVarInt(playerid,"BadMeat"))
	    {
			new Float:x,Float:y,Float:z;
			GetDynamicObjectPos(playerobject[playerid][0],x,y,z);
			if(floatround(y) == 2127)
			{
			    StopDynamicObject(playerobject[playerid][0]);
			    MoveDynamicObject(playerobject[playerid][0],944.204345, y, z,2);
			    SetPVarInt(playerid,"MeatCheck",1);
			    
			}
			else
			{
				DestroyDynamicObject(playerobject[playerid][0]);
			    GoObject(playerid);
				GameTextForPlayer(playerid,"~r~BAD JOB",500,5);
			}

		}
		else GameTextForPlayer(playerid,"~r~BAD JOB",500,5);
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case D_WORK:
		{
		    if(!GetPVarInt(playerid,"OnWork"))
		    {
		        SendClientMessage(playerid,-1,"Вы начали работу на конвейере. Направляйтесь к конвейеру!");
		        SetPVarInt(playerid,"OnWork",1);
		        SetPVarInt(playerid,"OldSkin",GetPlayerSkin(playerid));
		        SetPlayerCheckpoint(playerid, 940.8611,2122.4094,1011.0303, 1.0);
		        SetPlayerSkin(playerid,168);

		    }
		    else
		    {
			    if(IsValidDynamicObject(playerobject[playerid][0])) DestroyDynamicObject(playerobject[playerid][0]);
			    else if(IsValidDynamicObject(playerobject[playerid][1])) DestroyDynamicObject(playerobject[playerid][1]);
			    SetPlayerSkin(playerid,GetPVarInt(playerid,"OldSkin"));
				new str[144];
			    format(str,sizeof(str),"Вы отобрали %i испорченных кусков. Ваш заработок: $%i",GetPVarInt(playerid,"BadMeatDel"),GetPVarInt(playerid,"BadMeatDel")*30);
			    SendClientMessage(playerid,-1,str);
			    GivePlayerMoney(playerid,GetPVarInt(playerid,"BadMeatDel")*30);
			    DeletePVar(playerid,"MeatCheck");
				DeletePVar(playerid,"InWork");
				DeletePVar(playerid,"MeatCheck");
				DeletePVar(playerid,"BadMeatDel");
				DeletePVar(playerid,"BadMeat");
				DeletePVar(playerid,"OldSkin");
				DeletePVar(playerid,"OnWork");
		    }
		}
		case D_WORK_INFO:
		{
		    SetPVarInt(playerid,"InWork",1);
			SetPlayerInterior(playerid,1);
			SetPlayerVirtualWorld(playerid,playerid+1);
			SetPlayerPos(playerid,940.8642,2122.3950,1011.0303);
			SetPlayerCameraPos(playerid,942.328796,2125.278076,1015.023559);
			SetPlayerCameraLookAt(playerid,942.355163,2125.811279,1014.177917);
			GoObject(playerid);
			playerobject[playerid][1] = CreateDynamicObject(1271, 942.3492, 2127.549072, 1010.819091, 0.000000, 0.000000, 0.000000, playerid+1, -1, -1, 300.00, 300.00);
			SetDynamicObjectMaterial(playerobject[playerid][1], 0, 2702, "pick_up", "CJ_red_FELT", 0x00000000);
			TogglePlayerControllable(playerid, 0);
		}
	}
	return 1;
}
