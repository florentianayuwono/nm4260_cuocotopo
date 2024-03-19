/// @description Insert description here
// You can write your code in this editor



if (x != xprevious) {
	 var dir = sign(x - xprevious)
	 if dir == prev_dir{
		
	 }
	 else  if dir > 0 {
		image_xscale = abs(image_xscale);
	  }
	  else if dir < 0 {
		  image_xscale = -abs(image_xscale);
	  }
	  
	  

	prev_dir = sign(dir)
}


