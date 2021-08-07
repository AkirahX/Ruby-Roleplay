//V.2
#include <a_samp>

#define COLOR_LEV 			0xFF0000AA

new PasekaVhodPickup;
new PasekaVihodPickup;
new Pas[6] = {5, ...}, Text3D: label[6], bool:UseMed[MAX_PLAYERS], string[128];
new Float:MedPos[6][6] = {{-919.29260, -540.57172, 25.77649},{-933.18579, -539.16772, 25.77649},{-946.25000, -538.83801, 25.77649},{-945.16180, -524.09961, 25.77649},{-931.83514, -524.80292, 25.77649},{-918.13953, -526.14618, 25.77649}};

public OnFilterScriptInit()
{
    PasekaVhodPickup = CreatePickup(19133, 23, -907.5894,-489.7473,25.9541, -1);
	PasekaVihodPickup = CreatePickup(19133, 23, -908.1568,-492.4808,25.9609, -1);
    Create3DTextLabel("Склад\nИспользуйте {FF0000}/сложить",COLOR_LEV,-935.9482,-491.3717,25.9609,10.0,0,1);
    SetTimer("MedsUpdate" , 10 * 1000, true);

	CreateObject(10828, -920.65002, -488.82001, 36.38000,   0.00000, 0.00000, -10.20000);
	CreateObject(10828, -905.70001, -508.50000, 36.38000,   0.00000, 0.00000, -94.20000);
	CreateObject(10828, -937.78998, -485.78000, 36.38000,   0.00000, 0.00000, -10.20000);
	CreateObject(10828, -955.35999, -499.14999, 36.38000,   0.00000, 0.00000, -94.20000);
	CreateObject(10828, -957.41998, -528.09003, 36.38000,   0.00000, 0.00000, -94.20000);
	CreateObject(10828, -907.52002, -531.59998, 36.38000,   0.00000, 0.00000, -94.20000);
	CreateObject(10828, -942.23999, -545.65997, 36.38000,   0.00000, 0.00000, -4.56000);
	CreateObject(10828, -924.98999, -546.87000, 36.38000,   0.00000, 0.00000, -4.56000);
	CreateObject(1557, -908.60999, -490.28000, 25.08000,   0.00000, 0.00000, 351.00000);
	CreateObject(1557, -908.91998, -491.79001, 25.08000,   0.00000, 0.00000, 351.00000);
	CreateObject(19381, -914.14093, -542.19189, 24.99235,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -924.62140, -541.60004, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -934.86481, -540.97711, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -944.65656, -540.44958, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -952.63287, -540.03809, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -913.51013, -532.64398, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -923.98120, -532.05676, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -934.44952, -531.44281, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -943.42792, -530.91693, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -952.27533, -530.43286, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -912.74481, -523.09259, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -912.15973, -513.58508, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -922.94153, -522.51392, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -933.21606, -522.03815, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -943.43939, -521.46393, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -951.28937, -521.03162, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -922.52600, -513.01843, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -932.89642, -512.45093, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -943.36853, -511.84790, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -951.35223, -511.40564, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -949.71649, -502.01257, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -939.32220, -502.55115, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -928.95587, -503.18640, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -919.74524, -503.69354, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -911.16382, -504.20172, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -949.47125, -495.48019, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -939.10272, -496.13361, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -910.34357, -495.90503, 24.93719,   0.00000, 90.00000, -9.30000);
	CreateObject(19381, -920.48352, -494.69464, 24.93719,   0.00000, 90.00000, -9.30000);
	CreateObject(19381, -929.41595, -496.67700, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -948.84058, -488.92905, 24.93719,   0.00000, 90.00000, -3.24000);
	CreateObject(19381, -930.48285, -492.18475, 24.93719,   0.00000, 90.00000, -9.30000);
	CreateObject(19381, -939.60614, -490.73660, 24.93719,   0.00000, 90.00000, -9.30000);
	CreateObject(1451, -919.29260, -540.57172, 25.77649,   0.00000, 0.00000, -182.82004);
	CreateObject(1451, -933.18579, -539.16772, 25.77649,   0.00000, 0.00000, -185.33998);
	CreateObject(17324, -941.22601, -494.24554, 24.73405,   0.00000, 0.00000, 81.48004);
	CreateObject(2991, -951.66846, -496.51358, 26.67117,   0.00000, 0.00000, 83.88001);
	CreateObject(2991, -951.69098, -496.53070, 25.47943,   0.00000, 0.00000, 83.88001);
	CreateObject(2912, -936.54901, -489.28882, 25.00863,   0.00000, 0.00000, 0.00000);
	CreateObject(2912, -935.71814, -489.05435, 25.00863,   0.00000, 0.00000, 0.00000);
	CreateObject(2912, -936.20447, -490.02130, 25.00863,   0.00000, 0.00000, 0.00000);
	CreateObject(2912, -936.09143, -489.56763, 25.65084,   0.00000, 0.00000, 0.00000);
	CreateObject(2991, -947.54694, -492.44879, 25.47943,   0.00000, 0.00000, 83.88001);
	CreateObject(1451, -946.25000, -538.83801, 25.77649,   0.00000, 0.00000, -185.33998);
	CreateObject(1451, -945.16180, -524.09961, 25.77649,   0.00000, 0.00000, -185.33998);
	CreateObject(1451, -931.83514, -524.80292, 25.77649,   0.00000, 0.00000, -185.33998);
	CreateObject(1451, -918.13953, -526.14618, 25.77649,   0.00000, 0.00000, -185.33998);
	
    for(new i = 0x0; i != sizeof(MedPos); i++)
    {
    label[i] = Create3DTextLabel("{00FF00}Мёд в улье {FF0000}5 литров\nЧтобы собрать используте {FFA500}ЛКМ", 0xFFFFFF, MedPos[i][0], MedPos[i][1], MedPos[i][2], 40.0, 0 , 0);
    }
    return 1;
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid,-1, "{FFA500}Пасека by Lev_Popov");
    UseMed[playerid] = false;
	RemoveBuildingForPlayer(playerid, 1413, -969.6172, -544.6250, 26.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -970.2031, -539.3281, 26.3281, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -971.1875, -529.1328, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -970.9609, -534.1953, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -966.7188, -547.5625, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -964.3359, -535.3906, 24.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -971.4297, -518.8203, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -971.1953, -523.8672, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -970.9609, -513.7891, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -969.7813, -508.6563, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -968.3750, -503.6484, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -967.3359, -498.6406, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -964.6719, -488.4922, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -966.0234, -493.5859, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -946.3672, -550.0938, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -951.3984, -549.5078, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -935.8281, -549.9609, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -941.1328, -550.3594, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -930.5469, -549.2969, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -956.5938, -548.6719, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -961.6094, -548.0859, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 3167, -953.7500, -533.6719, 25.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -945.3594, -536.0625, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -533.6719, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -949.2734, -531.0391, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -530.5625, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -940.0078, -538.6719, 24.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 1470, -943.0703, -535.5859, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1471, -941.6016, -535.9453, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1472, -940.0469, -535.9453, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1473, -940.1328, -536.2969, 28.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1474, -941.5859, -535.9375, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1475, -943.0391, -535.5859, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1476, -938.6875, -536.6641, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1477, -938.6875, -536.6563, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -936.4141, -537.1641, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -954.0156, -523.8438, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 3171, -927.9609, -520.4219, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -951.9922, -527.0000, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -527.4609, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1451, -960.5391, -524.3594, 25.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 1452, -946.1406, -512.9453, 26.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -935.9922, -514.8594, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -938.9688, -516.0781, 24.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -934.2266, -515.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -940.7031, -513.0078, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -958.8516, -512.7813, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -929.3125, -514.2422, 24.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 3169, -941.3750, -493.1641, 24.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 3170, -962.8359, -507.4688, 24.7891, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -953.3672, -494.5156, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -960.6406, -502.0391, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -937.7422, -491.6641, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -959.3672, -496.8281, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -926.9609, -485.7422, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -937.3047, -484.2188, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -942.5547, -483.3203, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -932.0234, -484.8594, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -961.2578, -485.6719, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -956.2969, -484.4688, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -951.1641, -483.4844, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -946.9219, -483.1719, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 3171, -923.2813, -537.5469, 24.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -920.3906, -548.6484, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -925.4297, -548.9375, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -915.1250, -548.5703, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -910.0625, -548.2813, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -906.6328, -540.3438, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -907.2109, -545.3516, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -911.2578, -541.5703, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 3172, -912.6016, -532.3203, 24.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -921.3516, -534.7109, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -925.4453, -536.5859, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -913.2188, -519.3516, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1457, -913.6797, -522.8594, 26.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -915.1797, -526.3047, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -926.0313, -517.9922, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -907.5859, -499.4063, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1475, -920.9141, -498.2969, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1470, -920.8828, -498.2969, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1472, -923.9063, -497.9219, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1471, -922.3516, -497.9297, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1474, -922.3672, -497.9375, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 727, -906.5547, -503.7031, 24.9297, 0.25);
	RemoveBuildingForPlayer(playerid, 3168, -923.8281, -495.1406, 24.8672, 0.25);
	RemoveBuildingForPlayer(playerid, 1370, -918.2031, -495.7422, 25.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 1438, -915.1406, -494.5313, 24.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1476, -925.2578, -497.2031, 25.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1477, -925.2578, -497.2109, 27.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 1473, -923.8125, -497.5703, 28.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -916.8828, -487.8906, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -922.0078, -486.6875, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -912.6484, -490.4297, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1462, -926.3438, -492.4375, 24.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -905.2266, -530.1016, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -905.8047, -535.1406, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -903.2891, -514.5859, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -904.1094, -519.7891, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1412, -904.6875, -524.8047, 26.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -902.7109, -509.5547, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1413, -904.3359, -499.6250, 26.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 1447, -902.7578, -504.2578, 26.2422, 0.25);
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_FIRE)
    {
        if(UseMed[playerid]) return SendClientMessage(playerid,-1, "{00FF00}У вас уже есть 1 литр мёда. Отнесите мёд на склад.");
        for(new i = 0x0; i != sizeof(MedPos); i++)
        {
            if(IsPlayerInRangeOfPoint(playerid,2.0,MedPos[i][0], MedPos[i][1], MedPos[i][2]))
            {
                ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0);
                switch(random(3)) 
				{
				case 0: UseMed[playerid] = !UseMed[playerid], Pas[i]--, SendClientMessage(playerid,-1, " {FFA500}Вы собрали 1 литр мёда.");
				case 1: UseMed[playerid] = !UseMed[playerid], Pas[i]--, SendClientMessage(playerid,-1, " {FFA500}Вы собрали 1 литр мёда.");
				case 2: SendClientMessage(playerid,-1, " {FFA500}Неудача: Вас укусила пчела.");
				}
                if(Pas[i] == 0) return SendClientMessage(playerid,-1, "{FFA500}В этом улье нет{00FF00}мёда.");
                format(string,sizeof(string),"{00FF00}Мёд в улье {FF0000}%d литров\nЧтобы сбрать используте {FFA500}ЛКМ",Pas[i]);
                Update3DTextLabelText(label[i], 0xFFFFFFFF, string);
                break;
            }
        }
    }
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp("/сложить", cmdtext, true))
    {
		if(!IsPlayerInRangeOfPoint(playerid,5.0,-935.9482,-491.3717,25.9609)) return SendClientMessage(playerid,0xFF444499,"Отнеси мёд на склад.");
        if(!UseMed[playerid]) return SendClientMessage(playerid,-1, "{FFA500}У вас нет {00FF00}мёда");
		GivePlayerMoney(playerid, 100);
        SendClientMessage(playerid,-1, "{FFA500}Ты отнёс мёд на склад и получил 100$ за литр мёда.");
        UseMed[playerid] = !UseMed[playerid];
        ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0);
        return 1;
    }
    return 0;
}

forward MedsUpdate();
public MedsUpdate()
{
    for(new i = 0x0; i != sizeof(MedPos); i++)
    {
        if(Pas[i] == 5) continue;
        Pas[i]++;
        format(string,sizeof(string),"{00FF00}Мёд в улье {FF0000}%d\nЧтобы собрать используте {FFA500}ЛКМ",Pas[i]);
        Update3DTextLabelText(label[i], 0xFFFFFFFF, string);
    }
}
public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == PasekaVhodPickup)
	{
   	  SetPlayerPos(playerid,-908.6468,-493.8161,25.9609);
      SendClientMessage(playerid,-1, "{FFA500}Ты устроился работать пасичником.");
	}
	if(pickupid == PasekaVihodPickup)
	{
   	  SetPlayerPos(playerid,-907.3027,-488.0810,25.9435);
      SendClientMessage(playerid,-1, "{FFA500}Ты уволился с работы пасичника.");
	}
    return 1;
}
