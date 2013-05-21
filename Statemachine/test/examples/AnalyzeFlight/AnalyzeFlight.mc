module AnalyzeFlight{
	
	int8 trackpointCounter = 0;
	int8 TAKEOFF = 100;
	int8 HIGH_SPEED = 10;
	int8 VERY_HIGH_SPEED = 20;
	int8 LANDING = 150;
	
	struct Trackpoint{
		int16 id;
		int16 alt;
		int16 speed;
	};
	
	void raiseAlarm()
	{
		printf("CRASHED!!!\n");
	}
	
	struct Trackpoint* makeTP(int16 alt, int16 speed) {
		
		trackpointCounter++;
		struct Trackpoint mem;
		
		mem.id = trackpointCounter;
		mem.alt = alt;
		mem.speed = speed;
		struct Trackpoint* tp = &mem;
		return tp;
	}
	
	statemachine analyzeFlight initial = beforeFlight {
		
		in next(struct Trackpoint* tp)
		in reset()
		in report()
		var int16 points = 0
		out crashNotification() => raiseAlarm
		
		state beforeFlight {
			entry { points = 0; }
			on next [tp->alt > 0] -> airborne
			on report[]-> beforeFlight {printf("STATE: beforeFlight\n");}
			exit { points += TAKEOFF; }
		}
		
		state airborne {
			on next [tp->alt == 0  && tp->speed == 0] -> crashed
			on next [tp->alt == 0 && tp->speed > 0] -> landing
			on next [tp->speed > 200 ] -> airborne { points += VERY_HIGH_SPEED; }
			on next [tp->speed > 100 ] -> airborne { points += HIGH_SPEED; }
			on report[]-> airborne {printf("STATE: airborne\n");}
			on reset [ ] -> beforeFlight
		}
		
		state landing {
			on next [tp->speed == 0] -> landed
			on next [ ] -> landing { points--; }
			on report[]-> landing {printf("STATE: landing\n");}
			on reset [ ] -> beforeFlight
			
		}
		
		state landed {
			entry { points += LANDING; }
			on report[]-> landed {printf("STATE: landed\n");}
			on reset [ ] -> beforeFlight
		}
		
		state crashed {
			entry { send crashNotification();}
			on report[]-> crashed {printf("STATE: crashed\n");}
			on reset [ ] -> beforeFlight
		}
	}
	
	exported int8 main(int32 argc, string[] argv) {
	  
	  statemachine analyzeFlight smvar;
	  sminit(smvar);
	  smtrigger(smvar, report());				//should be before flight
	  smtrigger(smvar, next(makeTP(100, 100)));
	  smtrigger(smvar, report());				//should be airborne
	  smtrigger(smvar, next(makeTP(300, 150))); 
	  smtrigger(smvar, report());				//should be airborne
	  smtrigger(smvar, next(makeTP(0, 90))); 
	  smtrigger(smvar, report());				//should be landing
	  smtrigger(smvar, next(makeTP(0, 0))); 
	  smtrigger(smvar, report());				//should be landed
	  
	  
	   
	  return 0;
	}
	
}