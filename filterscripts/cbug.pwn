#include <a_samp>
#if defined FILTERSCRIPT
#endif
#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
		new weaponid = GetPlayerWeapon(playerid);
		if(oldkeys & ( KEY_FIRE  ) && newkeys & ( KEY_CROUCH )) //Atirar + C
		{
        PlayReloadAnimation(playerid, weaponid);
       // GivePlayerWeapon(playerid, weaponid, -1);
        return 1;
        }
       	if(newkeys & ( KEY_FIRE  ) && newkeys & ( KEY_CROUCH )) //Atirar + c se for muito rapido
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
        }
		if(PRESSED( KEY_FIRE  ) && newkeys & ( KEY_CROUCH )) // Segurar botão de atirar + C
		{
		PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
   		if(PRESSED( KEY_HANDBRAKE  ) && newkeys & ( KEY_CROUCH )) // Segurar botão de mirar + C
		{
		PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
		if(oldkeys & ( KEY_HANDBRAKE ) && newkeys & ( KEY_CROUCH )) //Soltar mirar + C
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
		if(newkeys & ( KEY_HANDBRAKE ) && newkeys & ( KEY_CROUCH )) //Soltar mira rapido + C
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
		if(oldkeys & ( KEY_FIRE  ) && oldkeys & ( KEY_HANDBRAKE  ) && newkeys & ( KEY_CROUCH )) //Soltar mira e Atirar + C
		{
        PlayReloadAnimation(playerid, weaponid);
        GivePlayerWeapon(playerid, weaponid, 0 -1);
        return 1;
		}
		if(PRESSED( KEY_LEFT  ) && oldkeys & ( KEY_HANDBRAKE  ) && newkeys & ( KEY_CROUCH )) //A pressionado + soltar mira + c
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
		if(PRESSED( KEY_LEFT  ) && oldkeys & ( KEY_FIRE  ) && newkeys & ( KEY_CROUCH )) //A pressionado + soltar atira + c
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
		if(PRESSED( KEY_LEFT  ) && oldkeys & ( KEY_HANDBRAKE  ) && newkeys & ( KEY_CROUCH ) && newkeys & ( KEY_SPRINT )) //A precionado + soltar mira + c + espaço
		{
        PlayReloadAnimation(playerid, weaponid);
        
        return 1;
		}
        


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	return 1;
}

stock PlayReloadAnimation(playerid, weaponid)
{
	switch (weaponid)
	{
	//0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 39 40 41 42 43 44 45 46
	    case 0..21, 39..46: ApplyAnimation(playerid, "RAPPING", "Laugh_01", 4.0, 0, 0, 0, 0,0);
	    case 22: ApplyAnimation(playerid, "COLT45", "colt45_reload", 4.0, 0, 0, 0, 0, 0);
		case 23: ApplyAnimation(playerid, "SILENCED", "Silence_reload", 4.0, 0, 0, 0, 0, 0);
		case 24: ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0);
		case 25, 27: ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0);
		case 26: ApplyAnimation(playerid, "COLT45", "sawnoff_reload", 4.0, 0, 0, 0, 0, 0);
		case 29..31, 33, 34: ApplyAnimation(playerid, "RIFLE", "rifle_load", 4.0, 0, 0, 0, 0, 0);
		case 28, 32: ApplyAnimation(playerid, "TEC", "tec_reload", 4.0, 0, 0, 0, 0, 0);
	}
	return 1;
}
