

#include SAMP1.ahk
sbros=1
k:=0
su:=-1
start_time:=0
start_time1:=0
start_time2:=0
start_time3:=0


; Avto 10-34
numpad7::

o:=Object()     
o:=GetCoordinates() 
Zona:=CalculateZone(o[1],o[2],o[3])
if(Zona=="Unbekannt")
{o[1]:=o[1]-25
if(Zona=="Unbekannt")
{
o:=GetCoordinates()
o[1]:=o[1]+50
if(Zona=="Unbekannt")
{
o:=GetCoordinates()
o[1]:=o[1]-25
o[2]:=o[2]-25
if(Zona=="Unbekannt")
{
o:=GetCoordinates()
o[2]:=o[2]+50
Zona:=CalculateZone(o[1],o[2],o[3])
}
}
}
}



if(Zona!="Unbekannt")
SendChat("/r 10-34 " Zona)
else addchatmessage("Âû íàõîäèòåñü íå â Ñàí-Ôèåððî")
Return


; Avto 10-16
numpad8::
if(sbros==0 and su!=-1)
{
Zona:=GetZona()
if(Zona!="Unbekannt" and M!="")
SendChat("/r 10-16 " Zona " Ìàðêà ò/ñ: " M " Íîìåðà AB" su "C")
if(Zona=="Unbekannt")
addchatmessage("Âû íàõîäèòåñü íå â øòàòå ÑÀ.")
}
else
addchatmessage("Ñíà÷àëà íàïðàâüòå âèçèð íà íàðóøèòåëÿ.")
Return









; Radar
NumpadAdd::
o1:=Object()    
o1:=GetCoordinates()
k:=-1
kid := Object("0", "1", "2", "3")
kid[0]:=-1
kid[1]:=-1
kid[2]:=-1
kid[3]:=-1
kid[0]:=getClosestPlayerId1()
if(kid[0]!=-1)
 {   
	k:=0
	p := getStreamedInPlayersInfo()
	M:=getTargetVehicleModelNameById(kid[k])
	N:=getPlayerNameById(kid[k])
        For i, o in p
    		{ 
			if(getTargetVehicleModelNameById(i)==M and (kid[0]!=i) and in_car_not_cop(i)==1 and person_passenger(i,kid[0])==1)
			    {	
				k:=k+1
				kid[k]:=i	
			    }
    		}
 

if(getDist(o1,getPedCoordinates(getPedById(kid[0])))<21 and kid[0]!=-1)
{
Speed:=getTargetVehicleSpeedById(kid[0])-20
Speed:=Ceil(Speed)
if(Speed<0)
Speed:=0
if(k==0)
{

addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ âîäèòåëÿ: {F63939}" N " [" kid[0]"]" )
addChatMessage("{FFFFFF}Ñêîðîñòü àâòîìîáèëÿ: {F63939}" Speed " Êì/÷"  )
addChatMessage("{FFFFFF}Ò/Ñ: {F63939}" M )
addChatMessage("{F63939} ________________________________________"  )
su:=kid[0]
sbros:=0
}
else
{
k:=0
addChatMessage("{F63939} ____________________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Error: {F63939}Âûáåðèòå âîäèòåëÿ ìàøèíû" )
While(k<4)
{ 
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ: {F63939}"k+1 " " getPlayerNameById(kid[k])" ["kid[k]"]" )
k++
}
addChatMessage("{F63939} ____________________________________________________"  )
}
}
else
{
addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Error: {F63939}   Ñëèøêîì äàëåêî" )
addChatMessage("{F63939} ________________________________________"  )
}
}
else
{
addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Error: {F63939}    Ò/Ñ íå îáíàðóæåíî" )
addChatMessage("{F63939} ________________________________________"  )
}
Return
; Radar1
numpad1::
if(k>0)
{
addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ âîäèòåëÿ: {F63939}" getPlayerNameById(kid[0])" [" kid[0]"]" )
addChatMessage("{FFFFFF}Ñêîðîñòü àâòîìîáèëÿ: {F63939}" Speed " Êì/÷"  )
addChatMessage("{FFFFFF}Ò/Ñ: {F63939}" M)
addChatMessage("{F63939} ________________________________________"  )
sbros:=0
su:=kid[0]
}
Return
; Radar2
numpad2::
if(k>0)
{

addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ âîäèòåëÿ: {F63939}" getPlayerNameById(kid[1])" [" kid[1]"]" )
addChatMessage("{FFFFFF}Ñêîðîñòü àâòîìîáèëÿ: {F63939}" Speed " Êì/÷" )
addChatMessage("{FFFFFF}Ò/Ñ: {F63939}" M)
addChatMessage("{F63939} ________________________________________"  )
sbros:=0
su:=kid[1]
}
Return
; Radar3
numpad3::
if(k>0)
{

addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ âîäèòåëÿ: {F63939}" getPlayerNameById(kid[2])" [" kid[2]"]" )
addChatMessage("{FFFFFF}Ñêîðîñòü àâòîìîáèëÿ: {F63939}" Speed " Êì/÷" )
addChatMessage("{FFFFFF}Ò/Ñ: {F63939}" M)
addChatMessage("{F63939} ________________________________________"  )
sbros:=0
su:=kid[2]
}
Return
; Radar4
numpad4::
if(k>0)
{

addChatMessage("{F63939} ________________________________________"  )
addChatMessage("{F63939}                 Àäñêèé ðàäàð: ÂÈÇÈÐ 2"  )
addChatMessage("{FFFFFF}Èìÿ ôàìèëèÿ âîäèòåëÿ: {F63939}" getPlayerNameById(kid[3])" [" kid[3]"]" )
addChatMessage("{FFFFFF}Ñêîðîñòü àâòîìîáèëÿ: {F63939}" Speed " Êì/÷" )
addChatMessage("{FFFFFF}Ò/Ñ: {F63939}" M)
addChatMessage("{F63939} ________________________________________"  )
sbros:=0
su:=kid[3]
}
Return

;Su Radar
NumpadSub::
if (su!="-1")
{
SendChat("/su " su " Íåïîä÷èíåíèå, ïîïûòêà ñêðûòüñÿ")

}
Return






;Su VN
!1::
o1:=Object()    
o1:=GetCoordinates()
targ:=getIdByPed(getTargetPed())
if (targ!="-1" and getDist(o1,getPedCoordinates(getPedById(targ)))<21)
{
SendChat("/su " targ " Âîîðóæåííîå íàïàäåíèå")
} 
else 
{

elapsed_time := A_TickCount - start_time3
if(elapsed_time>30000)
{ 
start_time3 := A_TickCount
SendChat("/s Áðîñü îðóæèå! Ñòðåëÿòü áóäó!")
ghs3:=1
}
else
{
if(ghs3==1)
{
SendChat("/s Îðóæèå íà ïîë ÿ ñêàçàë!")
ghs3:=2
}
else
if(ghs3==2)
{
SendChat("/s Ñòðåëÿþ íà ïîðàæåíèå! Âñåì ëåæàòü!")
ghs3:=0
}
}
}
Return
;tazer
xbutton2::
SendChat("/tazer")
Return
;cuff
xbutton1::
targ:=getIdByPed(getTargetPed())
if (targ!="-1")
{
SendChat("/uncuff "targ)
sleep 1200
SendChat("/cuff "targ)
}
else
{
targ:=getClosestPlayerId()
SendChat("/uncuff "targ)
sleep 1200
SendChat("/cuff "targ)
}
Return

+xbutton1::
targ:=getIdByPed(getTargetPed())
if (targ!="-1")
{
SendChat("/cuff "targ)
}
else
{
targ:=getClosestPlayerId()
SendChat("/cuff "targ)
}
Return

;su np
!2::
o1:=Object()    
o1:=GetCoordinates()
targ:=getIdByPed(getTargetPed())
if (targ!="-1" and getDist(o1,getPedCoordinates(getPedById(targ)))<21)
{
SendChat("/su " targ " Íåïîä÷èíåíèå, ïîïûòêà ñêðûòüñÿ")
} 
else 
{
SendChat("/s Ñòîé, ñòðåëÿòü áóäó!")

}
Return
;cput
!3::
targ:=getIdByPed(getTargetPed())
if (targ!="-1")
{
SendChat("/cput "targ)
sleep 1200
SendChat("/me ïîñàäèë ïðåñòóïíèêà â ìàøèíó")
}
else
{
targ:=getClosestPlayerId()
SendChat("/cput "targ)
sleep 1200
SendChat("/me ïîñàäèë ïðåñòóïíèêà â ìàøèíó")
} 
Return



;megafon
numpad5::
if(sbros==0)
{
elapsed_time := A_TickCount - start_time
if(elapsed_time>60000)
{ 
start_time := A_TickCount
SendChat("/m [SFPD] Âîäèòåëü àâòîìîáèëÿ " M ". Ïðèæìèòåñü ê îáî÷èíå è îñòàíîâèòå âàøå òðàíñïîðòíîå ñðåäñòâî!")
gh:=1
}
else
{
if(gh==1)
{
SendChat("/m [SFPD] Ïîâòîðÿþ, âîäèòåëü àâòîìîáèëÿ " M ". Ïðèíÿòü âïðàâî è îñòàíîâèòüñÿ.")
gh:=2
roz:=-1
}
else
if(gh==2)
{
SendChat("/m [SFPD] Ïîñëåäíåå ïðåäóïðåæäåíèå. Ê îáî÷èíå, èíà÷å áóäó ñòðåëÿòü!")
gh:=0
}
}  
}
else
{
elapsed_time := A_TickCount - start_time
if(elapsed_time>60000)
{ 
start_time := A_TickCount

SendChat("/m [SFPD]Âîäèòåëü, ïðèæìèòåñü ê îáî÷èíå è îñòàíîâèòå âàøå òðàíñïîðòíîå ñðåäñòâî!")
gh:=1
}
else
{
if(gh==1)
{
SendChat("/m [SFPD] Ïîâòîðÿþ, âîäèòåëü. Ïðèíÿòü âïðàâî è îñòàíîâèòüñÿ.")
gh:=2

}
else
if(gh==2)
{
SendChat("/m [SFPD] Ïîñëåäíåå ïðåäóïðåæäåíèå. Ê îáî÷èíå, èíà÷å áóäó ñòðåëÿòü!")
gh:=0
}
}
}
return


;krik

!5::
elapsed_time := A_TickCount - start_time1
if(elapsed_time>30000)
{ 
start_time1 := A_TickCount
Sendchat("/s Íåìåäëåííî âûéäèòå èç ìàøèíû!")
ghs:=1
}
else
{
if(ghs==1)
{
SendChat("/s Ñ÷èòàþ äî òðåõ!")
ghs:=2
}
else
if(ghs==2)
{
SendChat("/s Òðè!")
ghs:=0

}
}
return

;deject
numpad9::
id4:=getClosestPlayerId()
if (id4!="-1")
{
Sendchat("/me âûáèë ñòåêëî àâòîìîáèëÿ è âûòàùèë ïðåñòóïíèêà èç ìàøèíû")
sleep 1300
Sendchat("/deject "id4)
} 
else
addchatmessage("Íèêîãî ðÿäîì íåò")
return



numpad0::
Sbros:=1
su:=-1
k:=0
start_time:=0
addchatmessage("Öåëü ñáðîøåíà")
Return




Return
