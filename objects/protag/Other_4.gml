/// @description Insert description here
// You can write your code in this editor


if (room = CityCentre){
	if (inSH){
		x = 1920;
		y = 800;
		inSH = false;
		inCenter = true;
	}
	else if (inRoom0){
		x = 1008;
		y = 1520;	
		inRoom0 = false;
		inCenter = true;
	}
	else if (inCityHall){
		x = 392;
		y = 160;
		inCityHall = false;
	}
	else if (inBank){
		x = 1270;
		y = 500;
		inBank = false;
	}
	else if (inCoffeeshop){
		x = 1662;
		y = 1438;
		inCoffeeshop = false;
	}
	else if (inCopyShop){
		x = 470;
		y = 770;
		inCopyShop = false;
	}
	else if (inSuper){
		x = 318;	
		y = 1433;
		inSuper = false;
	}
	else if (inUni){
		x = 1680;	
		y = 156;
		inUni = false;
	}
	else if (inGrinder){
		x = 1055;
		y = 670;
		inGrinder = false;
	}
	else if (inEier){
		x = 254;
		y = 253;
		inEier = false;
	}
	else if (inZon){
		x = 222;
		y = 1504;
		inZon = false;
	}
}
else if (room = room0){
	if (!inCenter){
		x = 800;
		y = 574;	
		inRoom0 = true;
	}
	else{
		x = 800;
		y = 170;
		inCenter = false;
		inRoom0 = true;
	}
}
else if (room = StudentAccomodationGroundRoom){
	if (inCenter){
		x = 94;
		y = 345;
		inCenter = false;
		inSH = true;
	}
	else if (inSHTop){
		x = 255;
		y = 285;
		inSHTop = false;
	}
	else if (inMysteryBabyDisgustIntended){
		x = 192;
		y = 132;
		inMysteryBabyDisgustIntended = false;
	}
}
else if (room = StudentAccomodationTopRoom){
	if(!inPlayerRoom){
		x = 350;
		y = 190;
		inSHTop = true;
	}
	else {
		x = 400;
		y = 300;
		inPlayerRoom = false;
	}
}
else if (room = CityHallRoom){
	x = 28;
	y = 80;
	inCityHall = true;
}
else if (room = BankInteriorRoom){
	x = 138;
	y = 206;
	inBank = true;
}
else if (room = CoffeeShopInternal){
	x = 82;	
	y = 76;
	inCoffeeshop = true;
}
else if (room = CopyShopRoom){
	x = 226;	
	y = 117;
	inCopyShop = true;
}
else if (room = SupermarketRoom){
	x = 520;
	y = 380;
	inSuper = true;
}
else if (room = UniversityRoom){
	x = 573;
	y = 684;
	inUni = true;
}
else if (room = player_room){
	x = 100;
	y = 93;
	inPlayerRoom = true;	
	beenToRoom0 = true;
}
else if (room = GrinderRoom){
	inGrinder = true;	
}
else if (room = EierbalRoom){
	inEier = true;	
}
else if (room = NoorderzonRoom){
	inZon = true;	
}
else if (room = BabyPhotoRoom){
	inMysteryBabyDisgustIntended = true;	
}
		