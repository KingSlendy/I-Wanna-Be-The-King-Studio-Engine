///scrMakeShape(x, y, object, sides, speed, angle, distance, number_per_side, make_star, star_pointiness, make_flower)
var xx = argument[0];
var yy = argument[1];
var sides = clamp(argument[3], 2, 999);
var angle = degtorad(argument[5]);
var distance = argument[6];
var makeStar = argument[8];
var makeFlower = argument[10];
var checkDistance, pointX, pointY;

if (makeStar) sides *= 2;

for (var i = 0; i < sides; i++) {
    checkDistance = 1;
    
    if (makeStar && i % 2 == 1) checkDistance = clamp(argument[9], 0.1, 3);
        
    pointX[i] = xx + checkDistance * cos(angle + two_pi / sides * i);
    pointY[i] = yy - checkDistance * sin(angle + two_pi / sides * i);
}

for (var i = 0; i < sides; i++) {
    var p = (i + 1) % sides;
    var checkAngle = arctan2(pointY[i] - pointY[p], pointX[p] - pointX[i]);
    checkDistance = point_distance(pointX[i], pointY[i], pointX[p], pointY[p]);
    
    for (var j = 0; j < checkDistance; j += checkDistance / argument[7]) {
        var nowX = pointX[i] + j * cos(checkAngle);
        var nowY = pointY[i] - j * sin(checkAngle);
        var centerAngle = arctan2(yy - nowY, nowX - xx);
        var centerDistance = point_distance(xx, yy, nowX, nowY);
        var shapeDistance = distance * centerDistance;
        
        if (makeFlower) shapeDistance = distance / centerDistance;
        
        var s = instance_create(nowX + shapeDistance * cos(centerAngle), nowY - shapeDistance * sin(centerAngle), argument[2]);
        with (s) motion_set(radtodeg(centerAngle), argument[4]);
        
        if (!makeFlower) {
            s.speed *= centerDistance;
        } else {
            s.speed /= centerDistance;
        }
    }
}
