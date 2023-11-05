function scr_roomnames(argument0) //gml_Script_scr_roomnames
{
    if (argument0 == undefined)
        argument0 = room
    var room_name = -4
    switch argument0
    {
        case 81:
            room_name = "Welcome To Sugary Spire!"
            break
        case 59:
            room_name = "Enjoy Your Stay"
            break
        case 42:
            room_name = "Gumslime Paradise"
            break
        case 11:
            room_name = "Wet Floor"
            break
        case 24:
            room_name = "Fine China"
            break
        case 37:
            room_name = "Operation Crunch Creak Construct"
            break
        case 0:
            room_name = "Hard Hat Required"
            break
        case 41:
            room_name = "Orange City"
            break
        case 38:
            room_name = "Construction Conglomerate"
            break
        case 33:
            room_name = "Had A Joke But I'm Still Working On It"
            break
        case 46:
            room_name = "Down And Around"
            break
        case 8:
            room_name = "Wires And Boxes"
            break
        case 36:
            room_name = "City Outskirts"
            break
        case 34:
            room_name = "Nailed It"
            break
        case 49:
            room_name = "Beary Careful"
            break
        case 79:
            room_name = "Rocky Road"
            break
        case 80:
            room_name = "Digging For Cotton"
            break
        case 23:
            room_name = "Kick Gum And Chew Gum"
            break
        case 67:
            room_name = "Welcome to Cottontown!"
            break
        case 68:
            room_name = "Scary Monsters Nice Sights"
            break
        case 69:
            room_name = "Boiler Room"
            break
        case 70:
            room_name = "Cakewalk"
            break
        case 71:
            room_name = "Steamy Cotton Candy"
            break
        case 72:
            room_name = "Skyhigh"
            break
        case 73:
            room_name = "Grand Gateau"
            break
        case 74:
            room_name = "A Clockwork Worm"
            break
        case 76:
            room_name = "Clocks And Candies"
            break
        case 77:
            room_name = "Race Around The Clock"
            break
        case 13:
            room_name = "Froghop"
            break
        case 78:
            room_name = "Pillars Break Room"
            break
        case 12:
            room_name = "Sugary Spire Underground"
            break
        case 40:
            room_name = "Excavation Site"
            break
        case 45:
            room_name = "Miner Problem"
            break
        case 20:
            room_name = "Jawbreaker Centre"
            break
        default:
            room_name = "Balls Village"
            break
    }

    return room_name;
}

