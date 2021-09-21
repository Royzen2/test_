
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
        case 3:
        return '2';
        break;
        case 4:
        return '3';
        break;
        case 5:
        return '4';
        break;
        case 9:
        return '5';
        break;
        case 23:
        return 'silenced';
        break;
        case 24:
        return 'makarov';
        break;
        case 29:
        return 'aksu';
        break;
        case 30:
        return 'ak';
        break;
        case 31:
        return 'akm';
        break;
        case 34:
        return 'svd';
        break;
        case 41:
        return 'spr';
        break;
        case 42:
        return 'fire';
        break;
        case 43:
        return 'cam';
        break;
        case 46:
        return 'par';
        break;
        default:
        return 'fist';
    }
}