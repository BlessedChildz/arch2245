#define MYSIGNAL_H

#include "myInterface.h"
#include "mySimpleComputer.h"
#include <signal.h>

void ms_setSignals ();
void ms_timerHandler (int sig);
void ms_userSignal (int sig);
