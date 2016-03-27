var q, v
q = -1
v = get_timer()
while(q == -1 && get_timer() - v < 1000000)
{
    if(keyboard_key != vk_nokey)
    {
        q = keyboard_key
        break
    }
    if(mouse_button != mb_none) {
        switch(mouse_button)
        {
            case mb_left: q = -696900
            case mb_right: q = -696901
            case mb_middle: q = -696902
        }
        break
        }
}
return q
