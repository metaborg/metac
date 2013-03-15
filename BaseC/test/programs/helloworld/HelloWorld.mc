module HelloWorld { 
  exported int32 main(int32 argc, string[] argv) { 
	  report messages.HelloWorld(); 
	  return 0;
	}
  messagelist messages { 
    INFO HelloWorld() active: "Hello, World!" 
  } 
}