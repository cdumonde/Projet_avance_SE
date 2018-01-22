#include "carre_soft.h"

#include <windows.h>
#include <iostream>
#include <cstdlib>
#define buff_size 8

void carre_soft::do_carre(){

	HANDLE hComm;

	    hComm = CreateFile("COM5",
	    				GENERIC_READ | GENERIC_WRITE, // Read/Write
	                    0,                            // No Sharing
	                    NULL,                         // No Security
	                    OPEN_EXISTING,                // Open existing port only
	                    0,                            // Non Overlapped I/O
	                    NULL);

	  if (hComm == INVALID_HANDLE_VALUE)
	      cerr << "Error in opening serial port!" << endl;
	  else
	      cerr << "Opening serial port successful..." << endl;

	    DCB dcbSerialParams = { 0 }; // Initializing DCB structure
	    dcbSerialParams.DCBlength = sizeof(dcbSerialParams);

	    GetCommState(hComm, &dcbSerialParams);
	    dcbSerialParams.BaudRate = 921600;  // Setting BaudRate = 921600
	    dcbSerialParams.ByteSize = 8;
	    dcbSerialParams.StopBits = ONESTOPBIT;
	    dcbSerialParams.Parity   = NOPARITY;
	    SetCommState(hComm, &dcbSerialParams);

	    DWORD dNoOfBytesWritten = 0;
	    DWORD NoBytesRead = 0;
	    while( true ){

	        float buffer0 = 0;
	        float buffer1 = 0;
	        buffer0 = e.read();
	        cout << buffer0 << endl;
	        int wBytes = WriteFile( hComm, &buffer0, sizeof(float), &dNoOfBytesWritten, NULL);
	        cout << "avant assert" << endl;
	        assert( dNoOfBytesWritten == (sizeof(float)) );
	        cout << "apres assert" << endl;
	  //       buffer0 = e.read();
	  //       cout << buffer0 << endl;
	  //       wBytes = WriteFile( hComm, &buffer0, sizeof(float), &dNoOfBytesWritten, NULL);
			// assert( dNoOfBytesWritten == (sizeof(float)) );

	        SetCommMask(hComm, EV_RXCHAR);
	        DWORD dwEventMask;
	        WaitCommEvent(hComm, &dwEventMask, NULL);
	        ReadFile( hComm, &buffer1, sizeof(float), &NoBytesRead, NULL);
	        s.write( buffer1 );
	  //       WaitCommEvent(hComm, &dwEventMask, NULL);
			// ReadFile( hComm, &buffer1, sizeof(float), &NoBytesRead, NULL);
			// s.write( buffer1 );
	    }

}
