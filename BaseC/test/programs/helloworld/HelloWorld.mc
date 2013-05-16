module HelloWorld { 
  exported int32 main(int32 argc, string[] argv) { 
	  report m.Err(); 
	  return 0;
	}
  messagelist m { 
    INFO HelloWorld() inactive: "Hello, World!"
    ERROR Err() active: "Error"
  }
}