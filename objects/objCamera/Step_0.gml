if instance_exists(objPlayer)
    {
    var xTo,yTo;
    move_towards_point(objCursor.x,objCursor.y,0)

    xTo = objPlayer.x + lengthdir_x(min(96,distance_to_point(objCursor.x,objCursor.y)),direction)
    yTo = objPlayer.y + lengthdir_y(min(96,distance_to_point(objCursor.x,objCursor.y)),direction)

    x += ((xTo-x)/25)
    y += ((yTo-y)/25)

    __view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 )/2) + x );
    __view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 )/2) + y );
    __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0,room_width-__view_get( e__VW.WView, 0 )) );
// __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0,room_height-__view_get( e__VW.HView, 0 )) );
    }

//ScreenShake
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + ((random_range(-shake,shake))) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((random_range(-shake,shake))) );
__view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (((random_range(-shake,shake))/2)) );

if __view_get( e__VW.Angle, 0 ) > 0 __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) - (0.1) )
if __view_get( e__VW.Angle, 0 ) < 0 __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (0.1) )
//shake *= (0.9);
shake = max( 0, abs( shake ) - ( abs( shake ) * 0.25  ) ) * sign( shake );

