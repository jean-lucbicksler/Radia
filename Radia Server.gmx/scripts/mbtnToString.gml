var n
n=argument0
switch n
{
    case mb_left: return "LMB";break;
    case mb_right: return "RMB";break;
    case mb_middle: return "MMB";break;
    case mb_none: return "unassigned";break;
    case mb_any: return "everything";break;
    case -696900: return "LMB";break;
    case -696901: return "RMB";break;
    case -696902: return "MMB";break;
    default: return "unknown";break;
}
