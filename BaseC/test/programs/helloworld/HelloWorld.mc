module HelloWorld { 
  exported int32 main(int32 argc, string[] argv) { 
	  report m.Err();
	  report m.HelloWorld(); 
	  return 0;
	}
  messagelist m { 
    INFO HelloWorld() inactive: "Hello, World!\n"
    ERROR Err() active: "Error!\n"
  }
}