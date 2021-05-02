################OPTION###################
CPPCOMPILE = g++
COMPILEOPTION = -c -O3 
LINK = g++
LINKOPTION = -o tcp
LIBDIRS = -I./libtins/include -I/usr/local/include
OBJS = tcp.o 
OUTPUT = tcp
SHAREDLIB = -L$(shell pwd) -L./lib -ltins
$(OUTPUT):$(OBJS) 
	$(LINK) $(LINKOPTION) $(LIBDIRS)   $(OBJS) $(SHAREDLIB) $(APPENDLIB) 

clean: 
	rm -f $(OBJS)
	rm -f $(OUTPUT)
cleantest: 
	rm -f send.o
	rm -f send
all: clean $(OUTPUT)
.PRECIOUS:%.cpp %.c %.C
.SUFFIXES:
.SUFFIXES:  .c .o .cpp .ecpp .pc .ec .C .cc .cxx

test: cleantest 
	$(LINK) -o send send.cpp $(LIBDIRS) $(SHAREDLIB) 
