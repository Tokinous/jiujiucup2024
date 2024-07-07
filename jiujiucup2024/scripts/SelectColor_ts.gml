var nIndex;

switch(argument0)
{
    case "white":
    {
        nIndex = 0;
        break;
    }
    case "red":
    {
        nIndex = 1;
        break;
    }
    case "orange":
    {
        nIndex = 2;
        break;
    }
    case "yellow":
    {
        nIndex = 3;
        break;
    }
    case "green":
    {
        nIndex = 4;
        break;
    }
    case "blue":
    {
        nIndex = 5;
        break;
    }
    case "cyanine":
    {
        nIndex = 6;
        break;
    }
    case "purple":
    {
        nIndex = 7;
        break;
    }
    case "sakura":
    {
        nIndex = 8;
        break;
    }
    default:
    {
        show_debug_message("invalid color input");
        break;
    }
}

if(sprite_index != 0)
{
    image_index = nIndex;
}

return nIndex;
