
#include <a_samp>

#define DIALOG_SOE			1050
#define DIALOG_CREATE		DIALOG_SOE + 1
#define DIALOG_SELECT   	DIALOG_SOE + 2
#define DIALOG_TUTORIAL 	DIALOG_SOE + 3
#define DIALOG_SAVE_1		DIALOG_SOE + 4
#define DIALOG_SAVE_2       DIALOG_SOE + 5

enum SavedEnums {
	Float:foX,
	Float:foY,
	Float:foZ,
	Float:roX,
	Float:roY,
	Float:roZ
};

new O[SavedEnums];

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp("/soe", cmdtext, true, 10) == 0)
	{
		ShowPlayerDialog(playerid, DIALOG_SOE, DIALOG_STYLE_LIST, "Editor de objeto", \
		"Instruções\nCriar objeto\nAlterar imagem","Escolher","Cancelar");
		return 1;
	}
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
	    case DIALOG_SOE:
	    {
	        if(response)
	        {
	            if(listitem == 0) ShowPlayerDialog(playerid, DIALOG_TUTORIAL, DIALOG_STYLE_MSGBOX, \
				"Manual","{FFFFFF}Chaves de redução:\n\n{008080}Escape {FFFFFF}- Para verificar com o editor,\nou escolhendo um objeto\n{008080}Shift {FFFFFF}- Para virar a camera\nna hora da edição",\
				"Pronto","Voltar");
	            if(listitem == 1) ShowPlayerDialog(playerid, DIALOG_CREATE, DIALOG_STYLE_INPUT, \
				"Criação de um objeto","Insira o ID do modelo do objeto para criá-lo\nO objeto irá girar antes de você, então você irá alterá-lo\n\nID do objeto - 19469",\
				"Ñîçäàòü","Íàçàä");
				if(listitem == 2) SelectObject(playerid);
	        }
	    }
	    case DIALOG_CREATE:
	    {
			if(!response) return OnPlayerCommandText(playerid, "/soe");
			if(!strval(inputtext)) return ShowPlayerDialog(playerid, DIALOG_CREATE, DIALOG_STYLE_INPUT, \
			"Criação de um objeto","Insira o ID do modelo do objeto para criá-lo\nO objeto irá girar antes de você, então você irá alterá-lo\n\nID do objeto - 19469\n{FF0000}Bug: valor permitido!",\
			"Criar","Voltar");
			new Float:X, Float:Y, Float:Z;
			GetPlayerPos(playerid, X, Y, Z);
			new obj;
			obj = CreateObject(strval(inputtext), X+1, Y+1, Z+1, 0.0,0.0,0.0);
			EditObject(playerid, obj);
			SetPVarInt(playerid, "ModelID", strval(inputtext));
		}
	    case DIALOG_SELECT:
	    {
			new objectid = GetPVarInt(playerid, "SelectedObject");
			if(response) EditObject(playerid, objectid);
			else DestroyObject(objectid) && CancelEdit(playerid);
	    }
	    case DIALOG_TUTORIAL: if(!response) return OnPlayerCommandText(playerid, "/soe");
	    case DIALOG_SAVE_1:
	    {
	        if(response) return ShowPlayerDialog(playerid, DIALOG_SAVE_2, DIALOG_STYLE_INPUT, "Nome do arquivo","Insira o nome do documento de texto,\nem que objeto é salvo","Salvar","Cancelar");
	    }
	    case DIALOG_SAVE_2:
	    {
	        if(response)
	        {
	            if(!strlen(inputtext)) return SendClientMessage(playerid, 0xFF0000FF, "Quando o campo de entrada é definido pelas passagens!");
	            new string1[255], string2[128], File: objs;
	            format(string2, sizeof(string2), "soe/%s.txt", inputtext);
	            objs = fopen(string2, io_append);
	            format(string1, sizeof(string1), "CreateObject(%d, %f,%f,%f, %f,%f,%f);\r\n", \
				GetPVarInt(playerid, "ModelID"), O[foX],O[foY],O[foZ], O[roX],O[roY],O[roZ]);
	            fwrite(objs, string1);
	            fclose(objs);
	        }
	    }
	}
	return 1;
}

public OnPlayerSelectObject(playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
{
	ShowPlayerDialog(playerid, DIALOG_SELECT, DIALOG_STYLE_MSGBOX,"Ação do Objeto", \
	"Selecione a ação do objeto\nSe você excluí-lo, edite ou exclua","Mudar","Apagar");
	SetPVarInt(playerid, "SelectedObject", objectid);
	SetPVarInt(playerid, "ModelID", modelid);
    return 1;
}

public OnPlayerEditObject(playerid, playerobject, objectid, response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
	if(response == 1)
	{
		ShowPlayerDialog(playerid, DIALOG_SAVE_1, DIALOG_STYLE_MSGBOX, "Objeto alterado",\
		"Você gostaria de salvar o objeto em um arquivo?\n\nCorreio com objetos está em {FFFFFF}scriptfiles/soe/*.txt",\
		"Ñîõðàíèòü...","Îòìåíà");
		O[foX] = fX;
		O[foY] = fY;
		O[foZ] = fZ;
		O[roX] = fRotX;
		O[roY] = fRotY;
		O[roZ] = fRotZ;
	}
}
