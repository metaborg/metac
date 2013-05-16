module statemachine1basec{

	int8 MainModule_sm_execute_counter(MainModule_sm_data_counter *instance, MainModule_sm_events_counter event, void ** arguments) 
	{
	  switch (instance->__currentState)
	  {
	    case counter__state_start: {
	      switch (event)
	      {
	        case counter__event_reset: {
	          {
	            // exit actions
	            MainModule_print();
	            int8* x;
	            // switch state
	            instance->__currentState = counter__state_start;
	            // entry actions
	            instance->current = 0;
	            instance->steps = 0;
	            MainModule_print2(5);
	            return ;
	          }
	
	          break;
	        }
	        case counter__event_increment: {
	          if ( arguments[0] == 1 ) 
	          {
	            // exit actions
	            MainModule_print();
	            // transition actions
	            instance->current += arguments[0];
	            // switch state
	            instance->__currentState = counter__state_increasing;
	            // entry actions
	            instance->steps++;
	            return ;
	          }
	
	          break;
	        }
	      }
	
	      break;
	    }
	    case counter__state_increasing: {
	      switch (event)
	      {
	        case counter__event_reset: {
	          {
	            // switch state
	            instance->__currentState = counter__state_start;
	            // entry actions
	            instance->current = 0;
	            instance->steps = 0;
	            MainModule_print2(5);
	            return ;
	          }
	
	          break;
	        }
	        case counter__event_increment: {
	          {
	            // transition actions
	            instance->current += arguments[0];
	            // switch state
	            instance->__currentState = counter__state_increasing;
	            // entry actions
	            instance->steps++;
	            return ;
	          }
	
	          break;
	        }
	      }
	
	      break;
	    }
	  }
	}
}