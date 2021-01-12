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
}
else if (room = StudentAccomodationTopRoom){
	x = 350;
	y = 190;
	inSHTop = true;
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
		