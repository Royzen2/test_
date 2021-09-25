
//royzen ( vk.com/weckek )


cef.emit('hud:start');

//нужен плагин CEF-INTERFACE.dll
//скачать можно на форуме, чтобы он заработал в папке cef создать plugins и туда закинуть.

cef.emit("game:hud:setComponentVisible", "interface", false);
cef.emit("game:data:pollPlayerStats", true, 150);

cef.on("game:data:playerStats", (hp, max_hp, arm, breath, wanted, weapon, ammo, max_ammo, money, speed) => {

var weapon_img = getWeaponImage(weapon);
getPolice(wanted);
document.getElementById('weapon_model').src = `weapon/${weapon_img}.png`;
document.getElementById('money-text').innerHTML = money;
document.getElementById('ammo_maximum').innerHTML = max_ammo;
document.getElementById('ammo_total').innerHTML = ammo;
document.getElementById('health-progress').style.width = hp;
document.getElementById('armor-progress').style.width =  arm;
});
cef.on("hud:eat", (eat) => { //еда
        document.getElementById('hunger-progress').style.width = eat;
});
function getPolice(police)
{
        for(let i = 0; i < police; i++)
        {
                
                document.getElementById('wanted_' + i).style.fill = '#ffa200';
        }

}
function getWeaponImage(weaponid) {
        switch(weaponid) {
        case 1:
        return '1';
        break;
        case 2:
        return '2';
        break;
        case 3:
        return '3';
        break;
        case 4:
        return '4';
        break;
        case 5:
        return '5';
        break;
        case 6:
        return '6';
        break;
        case 7:
        return '7';
        break;
        case 8:
        return '8';
        break;
        case 9:
        return '9';
        break;
        case 10:
        return '10';
        break;
        case 11:
        return '11';
        break;
        case 12:
        return '12';
        break;
        case 13:
        return '13';
        break;
        case 14:
        return '14';
        break;
        case 15:
        return '15';
        break;
        case 16:
        return '16';
        break;
        case 17:
        return '17';
        break;
        case 18:
        return '18';
        break;
        case 19:
        return '19';
        break;
        /*case 20:
        return '20';
        break;
        case 21:
        return '21';*/
        break;
        case 22:
        return '22';
        break;
        case 23:
        return '23';
        break;
        case 24:
        return '24';
        break;
        case 25:
        return '25';
        break;
        case 26:
        return '26';
        break;
        case 27:
        return '27';
        break;
        case 28:
        return '28';
        break;
        case 29:
        return '29';
        break;
        case 30:
        return '30';
        break;
        case 31:
        return '31';
        break;
        case 32:
        return '32';
        break;
        case 33:
        return '33';
        break;       
        case 34:
        return '34';
        break;       
        case 35:
        return '35';
        break;       
        case 36:
        return '36';
        break;       
        case 37:
        return '37';
        break;       
        case 38:
        return '38';
        break;       
        case 39:
        return '39';
        break;       
        case 40:
        return '40';
        break;       
        case 41:
        return '41';
        break;       
        case 42:
        return '42';
        break;       
        case 43:
        return '43';
        break;       
        case 44:
        return '44';
        break;       
        case 45:
        return '45';
        break;       
        case 46:
        return '46';
        break;       
        default:
        return '0';
    }
}