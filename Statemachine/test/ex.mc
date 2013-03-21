statemachine counter initial = start { 
  in reset() 
  in increment(int8 delta) 
  out exitevt() => print 
  readable var int8 current = 0 
  var int8 steps = 0 
  readable var int8 exited = 0 
  state start { 
     
    entry { 
      current = 0; 
      steps = 0; 
    } 
    exit { call(); }
    on increment [delta == 1] -> increasing { current += delta; }
    on reset [ a == 5 ] -> start  
     
  } 
   
}
