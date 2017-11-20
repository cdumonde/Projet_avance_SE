/*
 *  Adder.cpp
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "ImageIn.h"

unsigned char red = (unsigned char) 0;
unsigned char green = (unsigned char) 255;
unsigned char blue = (unsigned char) 0;

void ImageIn::do_gen()           // process
{
	CBitmap *fichier = new CBitmap();
	bool ok = fichier->LoadBMP("ImageEntree.bmp");
	if( ok == false ){
		cout << "(EE) Image file (ImageEntree.bmp) not found !" << endl;
		exit( 0 );
	}
	CImage   *img = fichier->getImage();

	cout << "(II) Starting pixel data sending" << endl;
	int largeur = img->getLigne(0)->size();
	int hauteur = img->size();

	for(int y=0; y<hauteur; y++){
		for(int x=0; x<largeur; x++){
			CPixel *p1 = img->getPixel(x, y);
			s. write( red );
			//s.write  ( (unsigned char)p1->Red()   );
			wait( 10, SC_NS );
			s. write( green );
			//s.write( (unsigned char)p1->Green() );
			wait( 10, SC_NS );
			s. write( blue );
			//s.write ( (unsigned char)p1->Blue()  );
			wait( 10, SC_NS );
		}
	}
	cout << "(II) Pixel sending finished" << endl;
	delete fichier;
}
