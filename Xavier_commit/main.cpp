#include <cmath>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <paths.h>
#include <termios.h>
#include <sysexits.h>
#include <sys/param.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <cassert>
#include <stdint.h>
#include <signal.h> 
#include <vector>

int main(int argc, char * argv[]){

	std::vector<std::string> vs;
	vs.push_back("/dev/cu.usbserial-210274532517B");
	vs.push_back("/dev/cu.usbserial-210274532517A");
	vs.push_back("/dev/cu.usbserial-210274532245B");
	vs.push_back("/dev/cu.usbserial-210274532245A");
	vs.push_back("/dev/cu.usbserial-A503PYMW");
	vs.push_back("/dev/cu.usbserial-210274533335B");
	vs.push_back("/dev/cu.usbserial-210274533335A");
	vs.push_back("/dev/cu.usbserial-210274531985B");
	vs.push_back("/dev/cu.usbserial-210274531985A");
	vs.push_back("/dev/cu.usbserial-210274532494B");
	vs.push_back("/dev/cu.usbserial-210274532494A");

	for (unsigned long i = 0; i < vs.size(); i += 1) {
	  std::string s = vs.at(i);
	  fileDescriptor = open(s.c_str(), O_RDWR | O_NOCTTY);
	  if (fileDescriptor != -1)
	      break;
	}

	if (fileDescriptor == -1) {
	  printf("(II) Connection to board : FAILED\n");
	  exit(0);
	}

	printf("(II) Connection to board : OK\n");

	struct termios theTermios;
	memset(&theTermios, 0, sizeof(struct termios));
	cfmakeraw(&theTermios);
	cfsetspeed(&theTermios, 921600);
	theTermios.c_cflag     = CREAD | CLOCAL;     // turn on READ
	theTermios.c_cflag    |= CS8;
	theTermios.c_cc[VMIN]  = 0;
	theTermios.c_cc[VTIME] = 5;     // 5 sec timeout
	ioctl(fileDescriptor, TIOCSETA, &theTermios);

  	float buffer = 0.0f;
  	float obuffer= 0.0f;
  	int cpt = 0;

	while( true ){

		printf("%d\n", cpt);

	    buffer = !(buffer);
	    int wBytes = write( fileDescriptor, &buffer, sizeof(float) );
	    assert( wBytes ==  sizeof(float) );

	    int rBytes = read( fileDescriptor, &obuffer,sizeof(float) );
	    assert( rBytes == sizeof( float ) );

	    cpt++;

	}
}