/*
	System kierunkowskazów by xqz
	24.06.2013r. 13:17 :)
*/
// id luz de ré 19281

#include a_samp
new Indicators_xqz[MAX_VEHICLES][6];
new indicadorre_xqz[MAX_VEHICLES][7];
new bool:engine, bool:lights, bool:alarm, bool:doors, bool:bonnet, bool:boot, bool:objective;

stock SetVehicleIndicator(vehicleid, leftindicator=0, rightindicator=0)
{
	if(!leftindicator & !rightindicator) return false;
	new Float:_vX[2], Float:_vY[2], Float:_vZ[2];
	if(rightindicator)
	{
	    if(IsTrailerAttachedToVehicle(vehicleid))
	    {
	        new omg = GetVehicleModel(GetVehicleTrailer(vehicleid));
	        
            GetVehicleModelInfo(omg, VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
 			Indicators_xqz[vehicleid][4] = CreateObject(19294, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(Indicators_xqz[vehicleid][4], GetVehicleTrailer(vehicleid),  _vX[0]/2.4, -_vY[0]/3.35, -1.0 ,0,0,0);
		}
	    GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
	    
 		Indicators_xqz[vehicleid][0] = CreateObject(19294, 0, 0, 0,0,0,0);
		AttachObjectToVehicle(Indicators_xqz[vehicleid][0], vehicleid,  _vX[0]/2.23, _vY[0]/2.23, 0.1 ,0,0,0);
 		Indicators_xqz[vehicleid][1] = CreateObject(19294, 0, 0, 0,0,0,0);
		AttachObjectToVehicle(Indicators_xqz[vehicleid][1], vehicleid,  _vX[0]/2.23, -_vY[0]/2.23, 0.1 ,0,0,0);
	}
	if(leftindicator)
	{
	    if(IsTrailerAttachedToVehicle(vehicleid))
	    {
	    	new omg = GetVehicleModel(GetVehicleTrailer(vehicleid));
            GetVehicleModelInfo(omg, VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
            
 			Indicators_xqz[vehicleid][5] = CreateObject(19294, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(Indicators_xqz[vehicleid][5], GetVehicleTrailer(vehicleid),  -_vX[0]/2.4, -_vY[0]/3.35, -1.0 ,0,0,0);
		}
	    GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
	    
 		Indicators_xqz[vehicleid][2] = CreateObject(19294, 0, 0, 0,0,0,0);
		AttachObjectToVehicle(Indicators_xqz[vehicleid][2], vehicleid,  -_vX[0]/2.23, _vY[0]/2.23, 0.1 ,0,0,0);
 		Indicators_xqz[vehicleid][3] = CreateObject(19294, 0, 0, 0,0,0,0);
		AttachObjectToVehicle(Indicators_xqz[vehicleid][3], vehicleid,  -_vX[0]/2.23, -_vY[0]/2.23, 0.1 ,0,0,0);
	}
	return 1;
}

stock SetVehicleIndicatorre(vehicleid, indicadordere=0)
{
//	if(!leftindicator & !indicadordere) return false;
	if( !indicadordere) return false;
	new Float:_vX[2], Float:_vY[2], Float:_vZ[2];
	if(indicadordere)
	{
	    if(IsTrailerAttachedToVehicle(vehicleid))
	    {

	        new omg = GetVehicleModel(GetVehicleTrailer(vehicleid));
            GetVehicleModelInfo(omg, VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
            
 			indicadorre_xqz[vehicleid][2] = CreateObject(19281, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(indicadorre_xqz[vehicleid][2], GetVehicleTrailer(vehicleid),  _vX[0]/2.4, -_vY[0]/3.35, -1.0 ,0,0,0);
			indicadorre_xqz[vehicleid][3] = CreateObject(19281, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(indicadorre_xqz[vehicleid][3], GetVehicleTrailer(vehicleid),  -_vX[0]/2.4, -_vY[0]/3.35, -1.0 ,0,0,0);
			
   			GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
 			indicadorre_xqz[vehicleid][0] = CreateObject(19281, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(indicadorre_xqz[vehicleid][0], vehicleid,  -_vX[0]/2.4, -_vY[0]/2.0, -1.0 ,0,0,0);
 			indicadorre_xqz[vehicleid][1] = CreateObject(19281, 0, 0, 0,0,0,0);
			AttachObjectToVehicle(indicadorre_xqz[vehicleid][1], vehicleid,  _vX[0]/2.4, -_vY[0]/2.0, -1.0 ,0,0,0);
		}
		else {
	    GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, _vX[0], _vY[0], _vZ[0]);
	    
 		indicadorre_xqz[vehicleid][0] = CreateObject(19281, 0, 0, 0,0,0,0);//19281
		AttachObjectToVehicle(indicadorre_xqz[vehicleid][0], vehicleid,  -_vX[0]/5.0, -_vY[0]/2.4, 0.1 ,0,0,0);
 		indicadorre_xqz[vehicleid][1] = CreateObject(19281, 0, 0, 0,0,0,0); // 19281
		AttachObjectToVehicle(indicadorre_xqz[vehicleid][1], vehicleid,  _vX[0]/5.0, -_vY[0]/2.4, 0.1 ,0,0,0);
		}
	}

	return 1;
}

public OnPlayerKeyStateChange(playerid,newkeys, oldkeys)
{
	if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == 2)
	{
	   	if(!IsAPlane(GetPlayerVehicleID(playerid)) && !IsABoat(GetPlayerVehicleID(playerid)))  // IsABike
	   	{
	      	new vid = GetPlayerVehicleID(playerid);
	      	new vehicleid = GetPlayerVehicleID(playerid);
	  	 	if(newkeys & KEY_ANALOG_DOWN )
			{
				
		    	if(Indicators_xqz[vid][2] /*|| Indicators_xqz[vid][5]*/) DestroyObject(Indicators_xqz[vid][5]),DestroyObject(Indicators_xqz[vid][2]), DestroyObject(Indicators_xqz[vid][3]),Indicators_xqz[vid][2]=0;
     	 		if(Indicators_xqz[vid][0] /*|| Indicators_xqz[vid][4]*/) DestroyObject(Indicators_xqz[vid][4]),DestroyObject(Indicators_xqz[vid][0]), DestroyObject(Indicators_xqz[vid][1]),Indicators_xqz[vid][0]=0;
				else
				SetVehicleIndicator(vid,1,1);
				SetTimerEx("Apagaralerta", 120000, false, "ii", playerid, vehicleid);
				return 1;
			}
			if(newkeys & KEY_ANALOG_RIGHT)
			{
			    
	  		  	if(Indicators_xqz[vid][0] /*|| Indicators_xqz[vid][4]*/) DestroyObject(Indicators_xqz[vid][4]), DestroyObject(Indicators_xqz[vid][0]), DestroyObject(Indicators_xqz[vid][1]),Indicators_xqz[vid][0]=0;
      	      	else if(Indicators_xqz[vid][2]/*|| Indicators_xqz[vid][5]*/) DestroyObject(Indicators_xqz[vid][5]), DestroyObject(Indicators_xqz[vid][2]), DestroyObject(Indicators_xqz[vid][3]),Indicators_xqz[vid][2]=0;
				else
				SetVehicleIndicator(vid,0,1);
				SetTimerEx("Apagar", 5000, false, "ii", playerid, vehicleid);
			}
			if(newkeys & KEY_ANALOG_LEFT)
			{
			    
			    if(Indicators_xqz[vid][2]/*|| Indicators_xqz[vid][5]*/) DestroyObject(Indicators_xqz[vid][5]),DestroyObject(Indicators_xqz[vid][2]), DestroyObject(Indicators_xqz[vid][3]),Indicators_xqz[vid][2]=0;
      	      	else if(Indicators_xqz[vid][0] /*|| Indicators_xqz[vid][4]*/) DestroyObject(Indicators_xqz[vid][4]),DestroyObject(Indicators_xqz[vid][0]), DestroyObject(Indicators_xqz[vid][1]),Indicators_xqz[vid][0]=0;
				else
				SetVehicleIndicator(vid,1,0);
				SetTimerEx("Apagar", 5000, false, "ii", playerid, vehicleid);
			}
		}
	}
	
	return 1;
}

public OnVehicleDeath(vehicleid)
{
	if(Indicators_xqz[vehicleid][2]) DestroyObject(Indicators_xqz[vehicleid][2]), DestroyObject(Indicators_xqz[vehicleid][3]),DestroyObject(Indicators_xqz[vehicleid][5]),Indicators_xqz[vehicleid][2]=0;
	if(Indicators_xqz[vehicleid][0]) DestroyObject(Indicators_xqz[vehicleid][0]), DestroyObject(Indicators_xqz[vehicleid][1]),DestroyObject(Indicators_xqz[vehicleid][4]),Indicators_xqz[vehicleid][0]=0;
	if(indicadorre_xqz[vehicleid][2]) DestroyObject(indicadorre_xqz[vehicleid][2]), DestroyObject(indicadorre_xqz[vehicleid][3]),DestroyObject(indicadorre_xqz[vehicleid][5]),indicadorre_xqz[vehicleid][2]=0;
	if(indicadorre_xqz[vehicleid][0]) DestroyObject(indicadorre_xqz[vehicleid][0]), DestroyObject(indicadorre_xqz[vehicleid][1]),DestroyObject(indicadorre_xqz[vehicleid][4]),indicadorre_xqz[vehicleid][0]=0;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective); // novo
    SetVehicleParamsEx(vehicleid, engine, lights, false, doors, bonnet, boot, objective); // novo
	return 1;
}

stock IsAPlane(carid2)
{
	new carid = GetVehicleModel(carid2);
	if(carid == 592 || carid == 577 || carid == 511 || carid == 512 || carid == 593 || carid == 520 || carid == 553 || carid == 476 || carid == 519 || carid == 460 || carid == 513) return 1;
//Fz heli trens bike
	if(carid == 487 || carid == 581 || carid == 509 || carid == 431 || carid == 538 || carid == 417 || carid == 425 || carid == 441 || carid == 447 || carid == 449 || carid == 469 || carid == 481 || carid == 488) return 1;
	if(carid == 510 || carid == 519 || carid == 520 || carid == 497 || carid == 539 || carid == 548 || carid == 563 || carid == 590 || carid == 608 || carid == 610) return 1;
	
	if(carid == 532 || carid == 441 || carid == 464 || carid == 494 || carid == 501 || carid == 465 || carid == 564) return 1; // 532 colheiteira >> RCS 441 464 494 501 465 564 <<
//
	return 0;
}

stock IsABike(carid3)
{
//	new carid = GetVehicleModel(carid2);
//	if(carid == 510 || carid == 519 || carid == 520 || carid == 497 || carid == 539 || carid == 548 || carid == 563 || carid == 590 || carid == 608 || carid == 610) return 1;
	new modelid = GetVehicleModel(carid3);
//	if(modelid == 430 || modelid == 446 || modelid == 452 || modelid == 453 || modelid == 454 || modelid == 472 || modelid == 473 || modelid == 484 || modelid == 493 || modelid == 595) //
	//Motos
	if(modelid == 523 || modelid == 581 || modelid == 509 || modelid == 481 || modelid == 462 || modelid == 521 || modelid == 463 || modelid == 510 || modelid == 522 || modelid == 461  || modelid == 448  || modelid == 468  || modelid == 586) return 1;
	// 581 509 481	462 521 463 510 522 461 // 448 468 586 523
//
	return 0;
}

stock IsABoat(carid)
{
	new modelid = GetVehicleModel(carid);
	if(modelid == 430 || modelid == 446 || modelid == 452 || modelid == 453 ||  modelid == 454 || modelid == 539 || modelid == 472 || modelid == 473 || modelid == 484 || modelid == 493 || modelid == 595 || modelid == 532) // 532 colheitera
	{
		return 1;
	}
	return 0;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	if(Indicators_xqz[vehicleid][2]) DestroyObject(Indicators_xqz[vehicleid][2]), DestroyObject(Indicators_xqz[vehicleid][3]),DestroyObject(Indicators_xqz[vehicleid][5]),Indicators_xqz[vehicleid][2]=0;
	if(Indicators_xqz[vehicleid][0]) DestroyObject(Indicators_xqz[vehicleid][0]), DestroyObject(Indicators_xqz[vehicleid][1]),DestroyObject(Indicators_xqz[vehicleid][4]),Indicators_xqz[vehicleid][0]=0;
	if(indicadorre_xqz[vehicleid][2]) DestroyObject(indicadorre_xqz[vehicleid][2]), DestroyObject(indicadorre_xqz[vehicleid][3]),DestroyObject(indicadorre_xqz[vehicleid][5]),indicadorre_xqz[vehicleid][2]=0;
	if(indicadorre_xqz[vehicleid][0]) DestroyObject(indicadorre_xqz[vehicleid][0]), DestroyObject(indicadorre_xqz[vehicleid][1]),DestroyObject(indicadorre_xqz[vehicleid][4]),indicadorre_xqz[vehicleid][0]=0;

	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);//novo
    SetVehicleParamsEx(vehicleid, engine, lights, false, doors, bonnet, boot, objective); // novo
	return 0;
}

stock IsVehicleDrivingBackwards(vehicleid)
{
    new
        Float:Float[3]
    ;
    if(GetVehicleVelocity(vehicleid, Float[1], Float[2], Float[0]))
    {
        GetVehicleZAngle(vehicleid, Float[0]);
        if(Float[0] < 90)
        {
            if(Float[1] > 0 && Float[2] < 0) return true;
        }
        else if(Float[0] < 180)
        {
            if(Float[1] > 0 && Float[2] > 0) return true;
        }
        else if(Float[0] < 270)
        {
            if(Float[1] < 0 && Float[2] > 0) return true;
        }
        else if(Float[1] < 0 && Float[2] < 0) return true;
    }
    return false;
}

stock IsAAlerta(vehicleid)
{
    new result;
    new model = GetVehicleModel(vehicleid);
    switch(model)
    {
        case 403, 406, 408, 414 ,428 ,431 ,433 ,437 ,443 ,455 ,456 ,499 ,508 ,514 ,515 ,524 ,525 ,531 ,544 ,552 ,578 ,601: result = model;
        default: result = 0;
    }
    return result;
}
AlertaRe(playerid)
{
    //new bool:engine, bool:lights, bool:alarm, bool:doors, bool:bonnet, bool:boot, bool:objective;
    new vehicleid = GetPlayerVehicleID(playerid);
    if(GetPlayerVehicleSeat(playerid) == 0)
    {
        if(IsAAlerta(vehicleid))
        {
            GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
            if(IsVehicleDrivingBackwards(vehicleid))
            {
                if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    			{
                SetVehicleParamsEx(vehicleid, engine, lights, true, doors, bonnet, boot, objective);
                }
                else SetVehicleParamsEx(vehicleid, engine, lights, VEHICLE_PARAMS_OFF, doors, bonnet, boot, objective);
            }
            else
            {
                SetVehicleParamsEx(vehicleid, engine, lights, false, doors, bonnet, boot, objective);
            }
        }
    }
    return 1;
}

LuzRe(playerid)
{
    if(!IsAPlane(GetPlayerVehicleID(playerid)) && !IsABoat(GetPlayerVehicleID(playerid)) && !IsABike(GetPlayerVehicleID(playerid)))
	{
    	new vehicleid = GetPlayerVehicleID(playerid);
    	if(GetPlayerVehicleSeat(playerid) == 0)
    	{
            new vid = GetPlayerVehicleID(playerid);
            
            if(IsVehicleDrivingBackwards(vehicleid))
			{
				if(indicadorre_xqz[vid][2] || indicadorre_xqz[vid][5]) return 1;
				if(indicadorre_xqz[vid][0] || indicadorre_xqz[vid][4]) return 1;

				else
            
            	SetVehicleIndicatorre(vid,1);
            	SetTimerEx("Apagarre", 3000, false, "ii", playerid, vehicleid);
            }
            else
            {
				if(indicadorre_xqz[vehicleid][2]) DestroyObject(indicadorre_xqz[vehicleid][2]), DestroyObject(indicadorre_xqz[vehicleid][3]),DestroyObject(indicadorre_xqz[vehicleid][5]),indicadorre_xqz[vehicleid][2]=0;
				if(indicadorre_xqz[vehicleid][0]) DestroyObject(indicadorre_xqz[vehicleid][0]), DestroyObject(indicadorre_xqz[vehicleid][1]),DestroyObject(indicadorre_xqz[vehicleid][4]),indicadorre_xqz[vehicleid][0]=0;

            }
    	}
    }
    return 1;
}

public OnPlayerUpdate(playerid)
{
    //new vehicleid = GetPlayerVehicleID(playerid);

    AlertaRe(playerid);
	LuzRe(playerid);
    IsVehicleDrivingBackwards(GetPlayerVehicleID(playerid));
    //    else
  // 	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective); // novo
    //SetVehicleParamsEx(vehicleid, engine, lights, false, doors, bonnet, boot, objective); // novo
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    //new vid = GetPlayerVehicleID(playerid);
    new vehicleid = GetPlayerVehicleID(playerid);
    if(oldstate == PLAYER_STATE_DRIVER)
	{
	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective); // novo
    SetVehicleParamsEx(vehicleid, engine, lights, false, doors, bonnet, boot, objective); // novo

	}
/* 	if(newstate == PLAYER_STATE_ONFOOT)
	{

		if(Indicators_xqz[vehicleid][2]) DestroyObject(Indicators_xqz[vehicleid][2]), DestroyObject(Indicators_xqz[vehicleid][3]),DestroyObject(Indicators_xqz[vehicleid][5]),Indicators_xqz[vehicleid][2]=0;
		if(Indicators_xqz[vehicleid][0]) DestroyObject(Indicators_xqz[vehicleid][0]), DestroyObject(Indicators_xqz[vehicleid][1]),DestroyObject(Indicators_xqz[vehicleid][4]),Indicators_xqz[vehicleid][0]=0;
		if(indicadorre_xqz[vehicleid][2]) DestroyObject(indicadorre_xqz[vehicleid][2]), DestroyObject(indicadorre_xqz[vehicleid][3]),DestroyObject(indicadorre_xqz[vehicleid][5]),indicadorre_xqz[vehicleid][2]=0;
		if(indicadorre_xqz[vehicleid][0]) DestroyObject(indicadorre_xqz[vehicleid][0]), DestroyObject(indicadorre_xqz[vehicleid][1]),DestroyObject(indicadorre_xqz[vehicleid][4]),indicadorre_xqz[vehicleid][0]=0;

	}
*/
	return 1;
}


forward Apagar(playerid, vehicleid);
public Apagar(playerid, vehicleid)
{
	if(Indicators_xqz[vehicleid][2]) DestroyObject(Indicators_xqz[vehicleid][2]), DestroyObject(Indicators_xqz[vehicleid][3]),DestroyObject(Indicators_xqz[vehicleid][5]),Indicators_xqz[vehicleid][2]=0;
	if(Indicators_xqz[vehicleid][0]) DestroyObject(Indicators_xqz[vehicleid][0]), DestroyObject(Indicators_xqz[vehicleid][1]),DestroyObject(Indicators_xqz[vehicleid][4]),Indicators_xqz[vehicleid][0]=0;

	return 1;
}
forward Apagaralerta(playerid, vehicleid);
public Apagaralerta(playerid, vehicleid)
{
	if(Indicators_xqz[vehicleid][2]) DestroyObject(Indicators_xqz[vehicleid][2]), DestroyObject(Indicators_xqz[vehicleid][3]),DestroyObject(Indicators_xqz[vehicleid][5]),Indicators_xqz[vehicleid][2]=0;
	if(Indicators_xqz[vehicleid][0]) DestroyObject(Indicators_xqz[vehicleid][0]), DestroyObject(Indicators_xqz[vehicleid][1]),DestroyObject(Indicators_xqz[vehicleid][4]),Indicators_xqz[vehicleid][0]=0;

	return 1;
}


forward Apagarre(playerid, vehicleid);
public Apagarre(playerid, vehicleid)
{
	if(indicadorre_xqz[vehicleid][2]) DestroyObject(indicadorre_xqz[vehicleid][2]), DestroyObject(indicadorre_xqz[vehicleid][3]),DestroyObject(indicadorre_xqz[vehicleid][5]),indicadorre_xqz[vehicleid][2]=0;
	if(indicadorre_xqz[vehicleid][0]) DestroyObject(indicadorre_xqz[vehicleid][0]), DestroyObject(indicadorre_xqz[vehicleid][1]),DestroyObject(indicadorre_xqz[vehicleid][4]),indicadorre_xqz[vehicleid][0]=0;
    //IsVehicleDrivingBackwards(GetPlayerVehicleID(playerid));
	return 1;
}
