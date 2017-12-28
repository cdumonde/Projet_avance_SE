/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "Conversion.h"


#include <windows.h>
#include <stdio.h>
#include <cstdlib>

using namespace std;


void Conversion::do_conversion(){
    //int fileDescriptor = -1;

    HANDLE hComm;

    hComm = CreateFile("\\\\.\\COM4",
                    GENERIC_READ | GENERIC_WRITE, //Read/Write
                    0,                            // No Sharing
                    NULL,                         // No Security
                    OPEN_EXISTING,                // Open existing port only
                    0,                            // Non Overlapped I/O
                    NULL);

  if (hComm == INVALID_HANDLE_VALUE)
      printf(“Error in opening serial port”);
  else
      printf(“opening serial port successful”);

    DCB dcbSerialParams = { 0 }; // Initializing DCB structure
    dcbSerialParams.BaudRate = CBR_921600;  // Setting BaudRate = 921600
    

	#define buff_size 8

    while( true ){
        
        unsigned char buffer[3 * buff_size];
        for(int i = 0; i < 3 * buff_size; i += 1)
        	buffer[i] = e.read();

        int wBytes = WriteFile( hComm, buffer, 3 * buff_size * sizeof(unsigned char) );
        assert( wBytes == (3 * buff_size * sizeof(unsigned char)) );

#if 0
        printf(">> ");
        for(int i = 0; i < 3 * buff_size; i += 1)
        	printf("%4d ", buffer[i]);
        printf("\n");
#endif

        int rBytes = ReadFile( hComm, buffer, 3 * buff_size * sizeof(unsigned char) );
        assert( rBytes == (3 * buff_size * sizeof(unsigned char)) );

#if 0
        printf("<< ");
        for(int i = 0; i < 3 * buff_size; i += 1)
        	printf("%4d ", buffer[i]);
        printf("\n");
#endif
        
        for(int i = 0; i < 3 * buff_size; i += 1)
        	s.write( buffer[i] );
    }
}

