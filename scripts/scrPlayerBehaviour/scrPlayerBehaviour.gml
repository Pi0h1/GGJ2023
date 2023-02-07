function scrPlayerBehaviour(){
	var lkey = (keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0, gp_padl)) || gamepad_axis_value(0, gp_axislh) < 0;
	var rkey = (keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0, gp_padr)) || gamepad_axis_value(0, gp_axislh) > 0;
	var ukey = (keyboard_check(ord("W"))) || keyboard_check(vk_up) || gamepad_button_check(0,gp_padu) || gamepad_axis_value(0, gp_axislv) < 0;
	var dkey = (keyboard_check(ord("S"))) || keyboard_check(vk_down) || gamepad_button_check(0,gp_padd) || gamepad_axis_value(0, gp_axislv) > 0;
	
	if gamepad_button_check_released(0,gp_padd) or gamepad_button_check_released(0,gp_face2) {event_perform(ev_keyrelease,ord("S"))}
	if gamepad_button_check_released(0, gp_face4) {event_perform(ev_keyrelease,ord("E"))}
	
	var haxis = (gamepad_axis_value(0, gp_axislh))
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {}
	var jkey = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("z")) || gamepad_button_check_pressed(0, gp_face1);
	
	if !isNoclip {
		
		if (rkey || lkey) {
		    move = rkey - lkey;
			yStretch = 0.05;
			isClimbing = false;
			mosquitoTimer=mosquitoAppear;
		} else {
		    move = haxis
		}
	
	
		playerYscale = 1 - yStretch;
		hspd = move * spd;
		spd = playerSpeed;
	
		if rkey {isMirrored = false; sprite_index=PlayerWalking;}
		if lkey {isMirrored = true; sprite_index=PlayerWalking;}
	
		//Climbing
		if (ukey || dkey) {
			if place_meeting(x,y,objTree){
				isClimbing = true;
			}
		}
		
		if isClimbing {
			if ukey {if place_meeting(x,y-28,objTree) y-=spd;}
			if dkey {if place_meeting(x,y+32,objTree) y+=spd;}
		
			if jkey {
			isClimbing=false;
			vspd = -jspd
		    jump = 1
			hasJumped=true;
			} else {
			vspd=0;
			}
		}
	
		if !place_meeting(x,y,objTree){isClimbing=false}
	}
	
	if isNoclip {
		if rkey {x+=playerSpeed isMirrored = false;}
		if lkey {x-=playerSpeed isMirrored = true;}
		if ukey y-=playerSpeed;
		if dkey y+=playerSpeed;
		sprite_index=PlayerJump;
	}
	
	if !isNoclip {
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
		
		if !isClimbing {y += vspd;}
		
		if (place_meeting(x, y + 1, SolidObject)) {
		    isTouchingGround=true;
			jump = 0
		    vspd = 0
		    if (jkey) {
		        //if !place_meeting(x,y-1,SolidObject){
		            //if !isClimbing {vspd = -jspd}
					vspd = -jspd
					stretch=0.5;
		            jump = 1
					hasJumped=true;
					playSound(choose(sndJump1,sndJump2,sndJump3,sndJump4,sndJump5));
		        //}
		    }
		} else {
			isTouchingGround=false;
		    if vspd < 10 {
				if !isClimbing {vspd += grav}
		       // if jump = 1 {
		            if grav > vspd sprite_index = PlayerJump
		            else sprite_index = PlayerFall
		        //}
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

if sprite_index=sprPlayerClimbing{
	if (dkey || ukey){
		image_speed=0
		image_index+=0.2;
		} else {
		image_speed=0;
		}
}

}