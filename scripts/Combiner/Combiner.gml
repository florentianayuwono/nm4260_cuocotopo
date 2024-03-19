// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function combine(a,b){
	if(a == b) {
		return undefined;
	}
	else if foodMatches(a,b,Bacon,Cheese) {
		return Soup
	}else if foodMatches(a,b,Soup,Cheese) {
		return ApplePie
	}
	
}

function canCombine(a,b){
	return combine(a,b) != undefined
	
}

function foodMatches(a,b,c,d) {
	if (a == c && b == d ) || (a == d && b == c) {
	
		return true
	}	
	return false
}