function Wave(from,to,duration,offset, time = current_time) 
{
	var a4 = (to - from) * 0.5;
	return from + a4 + sin((((time * 0.001) + duration * offset) / duration) * (pi*2)) * a4;	
}
