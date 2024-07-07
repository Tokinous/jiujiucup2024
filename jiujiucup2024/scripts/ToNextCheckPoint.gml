//ToNextCheckPoint(LastCheckPoint, NextCheckPoint)

if (global.bestRecord > argument0 && global.bestRecord < argument1)
{
    partLength = (argument1 - argument0)/50;
    toNextPoint = (argument1 - global.bestRecord)/50;
    _Part = 'To next part: ' + string(toNextPoint) + ' s';
}
