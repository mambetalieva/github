//  Created by Каира on 9.11.2022

//Воин, Колдун, Медик, Защитник
//У каждого по 1000 ХП изначально (у защитника 1500)
//Каждый раунд наносят удар по 200, 300, 0, 100
//Медик лечит один раз в 2 раунда всю команду на 200 ХП кроме себя самого
//Медик наносить удар не может

var players = ["Воин","Колдун","Медик","Защитник"]
var playersXP = [1000,1000,1000,1500]
var round = 0
var ss = false
var punchboss = 0
var XPboss = 5000

while playersXP[0]>0 || playersXP[1] > 0 || playersXP[2] > 0 || playersXP[3] > 0{
    round += 1
    print("round:\(round)")
    print("ITS TIME TO PLAYERS")
    if playersXP[0] > 0{
        XPboss -= 200}else{XPboss -= 0}
    if playersXP[1] > 0{
        XPboss -= 300}else{XPboss -= 0}
    if playersXP[3] > 0{
        XPboss -= 100}else{XPboss -= 0}
    
    print ("ITS THE TIME TO BOSS")
    if playersXP[0] > 0{
        playersXP[0] -= 200}
    if playersXP[1] > 0{
        playersXP[1] -= 200}
    if playersXP[2] > 0{
        playersXP[2] -= 200}
    if playersXP[3] > 0{
        playersXP[3] -= 200}
    if playersXP[2] > 0{
        if round % 2 == 0{
            print("ITS TIME TO MEDIC")
        }
        
        if playersXP[2] > 0{
            if round % 2 == 0{
                playersXP[0] += 200
                playersXP[1] += 200
                playersXP[3] += 200
            }
        }}
    print("playersXP:\(playersXP)")
    if XPboss == 0{
        print("THE BOSS LOST")
        ss = true
    }
    for item in 0...players.count - 1{
        if playersXP[item] <= 0{
            print("THE PLAYERS LOST")
            ss = true
            
        }
    }}
print("GAME OVER")
print("ROUNDS:\(round)")
