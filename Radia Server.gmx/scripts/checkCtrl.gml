var p
p=argument0
switch(p)
{
    case -696900: return mouse_check_button(mb_left);break;
    case -696901: return mouse_check_button(mb_right);break;
    case -696902: return mouse_check_button(mb_middle);break;
    default: return keyboard_check_direct(p);break;
}
