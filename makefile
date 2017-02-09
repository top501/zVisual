#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -Wall -fexceptions
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC) -Iinclude
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)-l/usr/lib/x86_64-linux-gnu/libGL.so -l/usr/lib/x86_64-linux-gnu/libGLEW.so -l/usr/lib/x86_64-linux-gnu/libglfw.so
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/zVisual

INC_RELEASE = $(INC) -Iinclude
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)-l/usr/lib/x86_64-linux-gnu/libGL.so -l/usr/lib/x86_64-linux-gnu/libGLEW.so -l/usr/lib/x86_64-linux-gnu/libglfw.so
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/zVisual

OBJ_DEBUG = $(OBJDIR_DEBUG)/main.o $(OBJDIR_DEBUG)/src/DataLoader.o $(OBJDIR_DEBUG)/src/GLSLShader.o $(OBJDIR_DEBUG)/src/GLWindow.o $(OBJDIR_DEBUG)/src/MarchingCubesActor.o $(OBJDIR_DEBUG)/src/RayCastingActor.o $(OBJDIR_DEBUG)/src/TrackballCamera.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/src/DataLoader.o $(OBJDIR_RELEASE)/src/GLSLShader.o $(OBJDIR_RELEASE)/src/GLWindow.o $(OBJDIR_RELEASE)/src/MarchingCubesActor.o $(OBJDIR_RELEASE)/src/RayCastingActor.o $(OBJDIR_RELEASE)/src/TrackballCamera.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

$(OBJDIR_DEBUG)/src/DataLoader.o: src/DataLoader.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/DataLoader.cpp -o $(OBJDIR_DEBUG)/src/DataLoader.o

$(OBJDIR_DEBUG)/src/GLSLShader.o: src/GLSLShader.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/GLSLShader.cpp -o $(OBJDIR_DEBUG)/src/GLSLShader.o

$(OBJDIR_DEBUG)/src/GLWindow.o: src/GLWindow.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/GLWindow.cpp -o $(OBJDIR_DEBUG)/src/GLWindow.o

$(OBJDIR_DEBUG)/src/MarchingCubesActor.o: src/MarchingCubesActor.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/MarchingCubesActor.cpp -o $(OBJDIR_DEBUG)/src/MarchingCubesActor.o

$(OBJDIR_DEBUG)/src/RayCastingActor.o: src/RayCastingActor.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/RayCastingActor.cpp -o $(OBJDIR_DEBUG)/src/RayCastingActor.o

$(OBJDIR_DEBUG)/src/TrackballCamera.o: src/TrackballCamera.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/TrackballCamera.cpp -o $(OBJDIR_DEBUG)/src/TrackballCamera.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/src/DataLoader.o: src/DataLoader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/DataLoader.cpp -o $(OBJDIR_RELEASE)/src/DataLoader.o

$(OBJDIR_RELEASE)/src/GLSLShader.o: src/GLSLShader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/GLSLShader.cpp -o $(OBJDIR_RELEASE)/src/GLSLShader.o

$(OBJDIR_RELEASE)/src/GLWindow.o: src/GLWindow.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/GLWindow.cpp -o $(OBJDIR_RELEASE)/src/GLWindow.o

$(OBJDIR_RELEASE)/src/MarchingCubesActor.o: src/MarchingCubesActor.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/MarchingCubesActor.cpp -o $(OBJDIR_RELEASE)/src/MarchingCubesActor.o

$(OBJDIR_RELEASE)/src/RayCastingActor.o: src/RayCastingActor.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/RayCastingActor.cpp -o $(OBJDIR_RELEASE)/src/RayCastingActor.o

$(OBJDIR_RELEASE)/src/TrackballCamera.o: src/TrackballCamera.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/TrackballCamera.cpp -o $(OBJDIR_RELEASE)/src/TrackballCamera.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

