y += spd;


spd -= 0.2;

if spd < 0 spd=0;

if gamepad_button_check_released(0, gp_face4) {event_perform(ev_keyrelease,ord("E"))}