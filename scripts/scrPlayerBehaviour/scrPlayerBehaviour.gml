function scrPlayerBehaviour(){
	var lkey = (keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0, gp_padl)) || gamepad_axis_value(0, gp_axislh) < 0;
	var rkey = (keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0, gp_padr)) || gamepad_axis_value(0, gp_axislh) > 0;
	var ukey = (keyboard_check(ord("W"))) || keyboard_check(vk_up);
	var dkey = (keyboard_check(ord("S"))) || keyboard_check(vk_down);
	
	var haxis = (gamepad_axis_value(0, gp_axislh))
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {}
	var jkey = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("z")) || gamepad_button_check_pressed(0, gp_face1);
	
	if !isNoclip {
		if (rkey || lkey) {
		    move = rkey - lkey;
			yStretch = 0.05;
		} else {
		    move = haxis
		}
	
	
		playerYscale = 1 - yStretch;
		hspd = move * spd;
		spd = playerSpeed;
	
		if rkey {isMirrored = false; sprite_index=PlayerWalking;}
		if lkey {isMirrored = true; sprite_index=PlayerWalking;}
	}
	
	if isNoclip {
		if rkey {x+=playerSpeed isMirrored = false;}
		if lkey {x-=playerSpeed isMirrored = true;}
		if ukey y-=playerSpeed;
		if dkey y+=playerSpeed;
		sprite_index=PlayerJump;
	}
	
	if !isNoclip{
		if ((!rkey && !lkey) || (rkey && lkey)) {
		        hspd = 0 sprite_index = PlayerIdle;
		    }
	
		if (place_meeting(x + hspd, y, SolidObject)) {
		    yplus = 0;
		    while (place_meeting(x + hspd, y - yplus, SolidObject) && yplus <= abs(1 * hspd)) yplus += 1;
		    if place_meeting(x + hspd, y - yplus, SolidObject) {
		        while (!place_meeting(x + sign(hspd), y, SolidObject)) {
		            x += sign(hspd)
		        }
		        hspd = 0
		    }
		    else {
		        y -= yplus
		    }
		}
		x += hspd;

		if (place_meeting(x, y + vspd, SolidObject)) {
		    while (!place_meeting(x, y + sign(vspd), SolidObject)) {
		        y += sign(vspd)
		    }
		    vspd = 0
			hasJumped=false;
		}
		y += vspd

		if (place_meeting(x, y + 1, SolidObject)) {
		    isTouchingGround=true;
			jump = 0
		    vspd = 0
		    if (jkey) {
		        if !place_meeting(x,y-1,SolidObject){
		            vspd = -jspd
					stretch=0.5;
		            jump = 1
					hasJumped=true;
		        }
		    }
		} else {
			isTouchingGround=false;
		    if vspd < 10 {
		        vspd += grav
		        if jump = 1 {
		            if grav > vspd sprite_index = PlayerJump
		            else sprite_index = PlayerFall
		        }
		    }
		}

	if isTouchingGround = false {
	if coyoteTimer > 0 {coyoteTimer-=coyoteTimeDecrease;}
		if coyoteTimer > 0 && !hasJumped {
			if (jkey) {
		        if !place_meeting(x,y-1,SolidObject){
		            vspd = -jspd
		            jump = 1
					hasJumped=true;
		        }
			}
		}
	} else{
		coyoteTimer = coyoteTime;
	}
	if coyoteTimer < 0 coyoteTimer=0;

	if stretch > 0 stretch -= stretchSpeed;
	if stretch < 0 stretch = 0;

	if yStretch > 0 yStretch -= stretchSpeed;
	if yStretch < 0 yStretch = 0;
	}
	
if isMirrored {
	playerXscale = -1+stretch
} else {
	playerXscale = 1-stretch;
}

//playerYscale = 1 -stretch;
}