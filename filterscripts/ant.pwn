#include <a_samp>
//Собрал Roka_Kuroki
#define COLOR_WHITE 0xFFFFFFAA
#define MAX_SPEED 100// Максимально допустимая скорсть (ещё можно создать переменной для изменения в процессе игры)
/*нужно изменить в моде GivePlayerWeapon на GiveWeapon для оружия
GivePlayerMoney на GivePlayerCash для денег
ResetPlayerMoney на ResetPlayerCash для денег
GetPlayerMoney на GetPlayerCash//если сразу идёт GetPlayerCash, не трогаем её*/
new Float:VehPos[MAX_VEHICLES][4];
new bool: BanCar[MAX_VEHICLES];
bool: UseCar(carid);
new TimeUpdate[MAX_PLAYERS];
new player_NoCheckTimeVeh[MAX_PLAYERS];//починка авто
new Float:player_VehHealth[MAX_PLAYERS];//починка авто
new Float:HealthVeh[MAX_PLAYERS];//починка авто
new timer2[MAX_PLAYERS];//починка авто
new IDVEH[MAX_PLAYERS];
new Weapons[MAX_PLAYERS][47];
new bool:UseEnter[MAX_PLAYERS];
new Cash[MAX_PLAYERS];
forward onCheckAirBreak( playerid );
forward t_SetPlayerPos( playerid, Float:x, Float:y, Float:z );
forward UpdateVehiclePos(vehicleid, type);
forward onCheckAirBreak( playerid );
forward CheckForCheater(playerid); //починка авто
enum pinfo
{
	Float: pPos_x,
	Float: pPos_y,
	Float: pPos_z,
	bool:pTeleport,
	airbrake,
	pCurrentCar,
	pInt
}new PlayerInfo[ MAX_PLAYERS ][ pinfo ];

public OnFilterScriptInit( )
{
	print( "[FS] Anticheat" );
	SetTimer("CheckCar",1000,1);//если в мод вшивать будете, то в public OnGameModeInit()
	SetTimer("UpdatePlayersSpeed",1000,true);//Создадим таймер на 1 секунду, работающий с повторением
	return 1;
}
public OnPlayerDisconnect(playerid,reason)
{
	ResetCarInfo(playerid);
	return 1;
}
public OnPlayerConnect( playerid )
{
	ResetCarInfo(playerid);
	for(new i=0;i<47;i++) Weapons[playerid][i]=0;//обнуление
	SetTimerEx( "onCheckAirBreak", 1000, false, "i", playerid );//таймер на аирбрик
	Cash[playerid]=0;//money
	return 1;
}
public OnPlayerSpawn( playerid )
{
	PlayerInfo[ playerid ][ pTeleport ] = true;
	PlayerInfo[ playerid ][ airbrake ] = 0;
	ResetPlayerMoney(playerid);//Визуально забираем все деньги
	GivePlayerMoney(playerid,Cash[playerid]);//Устанавливаем визуально настоящую сумму
	return 1;
}

public OnPlayerInteriorChange( playerid, newinteriorid, oldinteriorid )
{
	PlayerInfo[ playerid ][ pTeleport ] = true;
	PlayerInfo[ playerid ][ airbrake ] = 0;
	printf( "%i,%i,%i, %b",playerid, newinteriorid, oldinteriorid, PlayerInfo[ playerid ][ pTeleport ] );
	return 1;
}

public t_SetPlayerPos( playerid, Float:x, Float:y, Float:z )
{
	SetPlayerPos( playerid, x, y, z );
	PlayerInfo[ playerid ][ airbrake ] = 0;
	PlayerInfo[ playerid ][ pTeleport ] = true;
	return 1;
}
public onCheckAirBreak( playerid )
{
	if( IsPlayerConnected( playerid ) )
	{
		new string[ 128 ],
		speed = GetPlayerSpeed( playerid, true ),
		Float:currentPos[ 3 ],
		Float:distance,
		currentInt = GetPlayerInterior( playerid );
		GetPlayerPos( playerid, currentPos[ 0 ], currentPos[ 1 ], currentPos[ 2 ] );
		if(speed < 30)
		{
			distance = floatround( GetPlayerDistanceFromPoint( playerid, PlayerInfo[ playerid ][ pPos_x ], PlayerInfo[ playerid ][ pPos_y ], PlayerInfo[ playerid ][ pPos_z] ) );
			if( distance > 100 && PlayerInfo[ playerid ][ pTeleport ] == false )
			{
				if( PlayerInfo[ playerid ][ airbrake ] < 1 )PlayerInfo[ playerid ][ airbrake ]++;
				else
				{
					PlayerInfo[ playerid ][ airbrake ] ++;
					if( PlayerInfo[ playerid ][ airbrake ] > 2 )
					{
						if( IsAdminsOnline() )
						{
							format(string,sizeof( string ), "[Античит]: %s использует собейт(AirBreak).", getName( playerid ) );
							SendMessageToAdmins( 0xFFFFFFAA, string );
							print( string );
						}
						else
						{
							SendClientMessage( playerid, 0xFFFFFFAA,"Вы были кикнуты за использование читов( AirBreak )" );
							format(string,sizeof( string ), "[Античит]: %s использовал собейт( AirBreak ).", getName( playerid ) );
							print( string );
							Kick( playerid );
						}
					}
				}
			}
		}
		PlayerInfo[ playerid ][ pPos_x ] = currentPos[ 0 ];
		PlayerInfo[ playerid ][ pPos_y ] = currentPos[ 1 ];
		PlayerInfo[ playerid ][ pPos_z ] = currentPos[ 2 ];
		PlayerInfo[ playerid ][ pInt ] = currentInt;
		PlayerInfo[ playerid ][ pTeleport ] = false;
		SetTimerEx( "onCheckAirBreak", 1000, false, "i", playerid );
	}
}
stock getName( const playerid )
{
	new pname[ MAX_PLAYER_NAME ];
	GetPlayerName( playerid, pname, sizeof( pname ) );
	return pname;
}
stock SendMessageToAdmins( const color, const string[] )
{
	for( new i = GetMaxPlayers(); i >= 0; i-- )
	if( IsPlayerConnected( i ) && IsPlayerAdmin( i ) )SendClientMessage( i, color, string );
	return 1;
}
stock GetPlayerSpeed(const playerid, bool: check3d)
{
	new Float: coord[ 3 ];
	if( IsPlayerInAnyVehicle( playerid ) )
	GetVehicleVelocity( PlayerInfo[ playerid ][ pCurrentCar ], coord[ 0 ], coord[ 1 ], coord[ 2 ] );
	else
	GetPlayerVelocity( playerid, coord[ 0 ], coord[ 1 ], coord[ 2 ] );
	return floatround( floatsqroot( ( check3d ) ? ( coord[ 0 ]*coord[ 0 ] + coord[ 1 ]*coord[ 1 ]+coord[ 2 ]*coord[ 2 ]) : ( coord[ 0 ]*coord[ 0 ] + coord[ 1 ]*coord[ 1 ] ) )*100.0*1.6 );
}
stock IsAdminsOnline()
{
	for( new i = GetMaxPlayers(); i >= 0; i-- )
	if( IsPlayerConnected( i ) && IsPlayerAdmin( i ) )return 1;
	return 0;
}

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat)
{
	new Float:Pos[3];
	GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
	new Float:Count[2];
	Count[0] = Difference(Pos[0],VehPos[vehicleid][0]);
	Count[1] = Difference(Pos[1],VehPos[vehicleid][1]);
	switch(GetVehicleModel(vehicleid))
	{
	case 435, 450, 584, 591, 606..608, 610..611: goto UPDATE;
	}
	if((Count[0] > 5 || Count[1] > 5) && !UseCar(vehicleid) && !BanCar[vehicleid])
	{
		SetVehiclePos(vehicleid, VehPos[vehicleid][0], VehPos[vehicleid][1], VehPos[vehicleid][2]);
		SetVehicleZAngle(vehicleid, VehPos[vehicleid][3]);
	}
	else
	{
UPDATE:
		UpdateVehiclePos(vehicleid, 0);
	}
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	UpdateVehiclePos(vehicleid, 0);
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER) SetPVarInt(playerid,"VehID",GetPlayerVehicleID(playerid));
	if( newstate == PLAYER_STATE_DRIVER )PlayerInfo[ playerid ][ pCurrentCar ] = GetPlayerVehicleID( playerid );
	if(oldstate == PLAYER_STATE_DRIVER)
	{
		if(BanCar[GetPVarInt(playerid,"VehID")]) KillTimer(TimeUpdate[playerid]);
		TimeUpdate[playerid] = SetTimerEx("UpdateVehiclePos", 10000, false, "ii", GetPVarInt(playerid,"VehID"), 1);
		BanCar[GetPVarInt(playerid,"VehID")] = true;
	}
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER )
	{
		if(IDVEH[playerid] != GetPlayerVehicleID(playerid) || !UseEnter[playerid])
		{
			Punish(playerid);
		}
		UseEnter[playerid] = false;
	}
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{
		new model = GetVehicleModel(GetPlayerVehicleID(playerid));
		switch(model)
		{
		case 592,577,511,512,520,593,553,476,519,460,513,548,425,417,487,488,497,563,447,469: Weapons[playerid][46]= 1;
		case 457: Weapons[playerid][2]= 1;
		case 596,597,598,599: Weapons[playerid][25]= 1;
		}
	}
	if(newstate == PLAYER_STATE_DRIVER)
	{
		timer2[playerid] = SetTimerEx("CheckForCheater",1000,true,"i",playerid);
		player_NoCheckTimeVeh[playerid] = 1;
	}
	if(oldstate == PLAYER_STATE_DRIVER)
	{
		KillTimer(timer2[playerid]);
	}
	return 1;
}
public OnPlayerExitVehicle(playerid, vehicleid)
{
	ResetCarInfo(playerid);
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	UseEnter[playerid] = true;
	IDVEH[playerid]=vehicleid;
	return 1;
}

public UpdateVehiclePos(vehicleid, type)
{
	if(type == 1)
	{
		/*if(!StopCar(vehicleid))
		{
			SetTimerEx("UpdateVehiclePos", 10000, false, "ii", vehicleid, 1);
			return 1;
		}*/
		BanCar[vehicleid] = false;
	}
	GetVehiclePos(vehicleid, VehPos[vehicleid][0], VehPos[vehicleid][1], VehPos[vehicleid][2]);
	GetVehicleZAngle(vehicleid, VehPos[vehicleid][3]);
	return 1;
}

stock Difference(Float:Value1, Float:Value2)
{
	return floatround((Value1 > Value2) ? (Value1 - Value2) : (Value2 - Value1));
}

stock bool: UseCar(carid)
{
	for(new i; i != GetMaxPlayers(); i++)
	{
		if(!IsPlayerConnected(i)) continue;
		if(IsPlayerInVehicle(i, carid)) return true;
	}
	return false;
}

stock SetVehiclePosition(vehicleid, Float:X, Float:Y, Float:Z)
{
	SetVehiclePos(vehicleid ,X,Y,Z);
	UpdateVehiclePos(vehicleid, 0);
}


public OnPlayerUpdate(playerid)
{
	if (GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK)
	{
		new pname[MAX_PLAYER_NAME];
		GetPlayerName(playerid, pname, sizeof(pname));
		SendClientMessage(playerid, COLOR_WHITE, "Вы были кикнуты за использование чита на JetPack");
		Kick(playerid);
	}
	new string[256];
	new weap = GetPlayerWeapon(playerid);
	if(weap != 0 && !Weapons[playerid][weap] && weap != 40)
	{
		SendClientMessage(playerid, COLOR_WHITE, "Вы были кикнуты за использование чита на Оружие");
		Kick(playerid);
	}

	if(!IsPlayerInAnyVehicle(playerid))
	{
		new animlib[30], animname[30];//переменные
		GetAnimationName(GetPlayerAnimationIndex(playerid), animlib, sizeof(animlib), animname, sizeof(animname));//проверка на анимацию
		new Float:posx, Float:posy, Float:posz;//переменные
		GetPlayerPos(playerid, posx, posy, posz);//проверка на координаты
		if(posz >= 2)//Если posz равен либо больше 2 метров, то....
		{
			if(strcmp(animlib, "SWIM", true) == 0 && strcmp(animname, "SWIM_crawl", true) == 0)//проверяем на анимацию, если все верно то....
			{
				new plname[MAX_PLAYER_NAME];//переменная
				GetPlayerName(playerid, plname, sizeof(plname));//узнаем имя игрока
				format(string,sizeof(string),"[Античит] %s был кикнут. Причина: Fly Hack",plname);//имя мы бьем через format
				SendClientMessageToAll(0xFFFFFFAA, string);//показываем всем игрокам
				Kick(playerid);//кикаем игрока
			}
		}
	}
	return 1;
}
public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid) //Античит на бессмертие + отключаем стрельбу по пингу!
{
	new Float: vida, Float: armadura, Float: dmg;

	GetPlayerArmour(damagedid, armadura);
	GetPlayerHealth(damagedid, vida);

	if(armadura > 0)
	{
		if(amount > armadura)
		{
			dmg = amount - armadura;
			vida = vida - dmg;
			SetPlayerArmour(damagedid, 0.0);
			SetPlayerHealth(damagedid, vida);
			return 1;
		}
		armadura = armadura - amount;
		SetPlayerArmour(damagedid, armadura);
	}
	if(armadura < 1)
	{
		vida = vida - amount;
		SetPlayerHealth(damagedid, vida);
	}
	return true;
}
stock RemoveFromVehicle(playerid)
{
	SetPVarInt(playerid, "RemoveCar", GetPlayerVehicleID(playerid));
	RemovePlayerFromVehicle(playerid);
	SetTimerEx("CheckPlayer", 3000, false, "i", playerid); // 2-х секунд будет мало, поэтому надо делать от 3-х.
}

stock GivePlayerCash(playerid, money)// Функция, чтоб прибавить денег к текущим деньгам
{
	Cash[playerid] += money;
	ResetPlayerMoney(playerid);//Забираем все визуальное бабло
	GivePlayerMoney(playerid,Cash[playerid]);//Выдаем визуальное бабло
	return Cash[playerid];
}
stock SetPlayerCash(playerid, money)// Функция, чтоб установить новое количество денег
{
	Cash[playerid] = money;
	ResetPlayerMoney(playerid);//Забираем все визуальное бабло
	GivePlayerMoney(playerid,Cash[playerid]);///Выдаем визуальное бабло
	return Cash[playerid];
}
stock ResetPlayerCash(playerid)// Убираем все деньги у пользователя
{
	Cash[playerid] = 0;
	ResetPlayerMoney(playerid);//Забираем все визуальное бабло
	GivePlayerMoney(playerid,Cash[playerid]);//Выдаем визуальное бабло
	return Cash[playerid];
}
stock GetPlayerCash(playerid)// Узнаем, сколько денег осталось у игрока
{
	return Cash[playerid];
}

stock CheckPlayer(playerid)
{
	if(IsPlayerInVehicle(playerid, GetPVarInt(playerid, "RemoveCar")) //Проверяем, сидит ли игрок в том транспорте, от куда мы его пытались выкинуть ...
			{
				Kick(playerid); // Кикаем игрока, если игрок все ещё в нем.
			}
		}
		forward CheckCar();
		public CheckCar()
		{
			for(new i; i<GetMaxPlayers(); i++)
			{
				if(IDVEH[i] != -1 && IsPlayerConnected(i) && IsPlayerInAnyVehicle(i) && !UseEnter[i] && IDVEH[i] != GetPlayerVehicleID(i)) Punish(i);
	}
        	return 1;
}

stock ResetCarInfo(playerid)
{
	IDVEH[playerid]=-1;
	UseEnter[playerid] = false;
}

stock Punish(playerid)
{
	new string[MAX_PLAYER_NAME+40];
	format(string,sizeof(string),"6%s был кикнут за тп в авто!",getName(playerid));
	SendClientMessageToAll(-1, string);
	Kick(playerid);
}
public CheckForCheater(playerid)
{

	if(!IsPlayerInRangeOfPoint(playerid,20,610.9915,-11.1024,1000.9219))
	{
		if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			if(!player_NoCheckTimeVeh[playerid])
			{
				GetVehicleHealth(GetPlayerVehicleID(playerid),player_VehHealth[playerid]);
				if(player_VehHealth[playerid] > HealthVeh[playerid])
				{
					if(IsPlayerInRangeOfPoint(playerid,7.5,2064.2842,-1831.4736,13.5469)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,487.6401,-1739.9479,11.1385)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,1024.8651,-1024.0870,32.1016)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,-1904.7019,284.5968,41.0469)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,-2425.7822,1022.1392,50.3977)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,-1420.5195,2584.2305,55.8433)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,-99.9417,1117.9048,19.7417)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,1975.2384,2162.5088,11.0703)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					if(IsPlayerInRangeOfPoint(playerid,7.5,720.0854,-457.8807,16.3359)) { player_NoCheckTimeVeh[playerid] = 3; return 1; }
					SendClientMessage(playerid,COLOR_WHITE,"Вы были кикнуты по подозрению в читерстве ( Починка авто )");
					new sendername[MAX_PLAYER_NAME];
					GetPlayerName(playerid, sendername, sizeof(sendername));
					new ip[256];
					GetPlayerIp(playerid,ip,sizeof(ip));
    				Kick(playerid);
   				 }
			}
			else { player_NoCheckTimeVeh[playerid] -= 1; }
			GetVehicleHealth(GetPlayerVehicleID(playerid),HealthVeh[playerid]);
		}

	}
	return 1;
}
forward UpdatePlayersSpeed();
public UpdatePlayersSpeed()
{
    for(new i; i < GetMaxPlayers(); i++)
    {
        if(!IsPlayerConnected(i)) continue;
        if(IsPlayerInAnyVehicle(i) && GetVehicleSpeed(i) >= 178) //скорость авто
        {
				RemovePlayerFromVehicle(i);
               	SendClientMessage(i,COLOR_WHITE,"Вы были кикнуты по подозрению в читерстве ( SpeedHack )");
                Kick(i);
            }
        }
    return 1;
}
public OnVehicleMod(playerid,vehicleid,componentid)
{
Kick(playerid);
return 0;
}
forward Float:GetVehicleSpeed(playerid);
stock Float:GetVehicleSpeed(playerid)
{
    new Float:Pos[3];
    GetVehicleVelocity(GetPlayerVehicleID(playerid),Pos[0],Pos[1],Pos[2]);
    return floatsqroot(Pos[0] * Pos[0] + Pos[1] * Pos[1] + Pos[2] * Pos[2]) * 140.0;
}
