BAMTOOLS_DIR ?= ../bamtools-2.3.0/
ABS_BAMTOOLS_DIR := $(realpath $(BAMTOOLS_DIR))
$(if $(ABS_BAMTOOLS_DIR),,$(error BAMTOOLS_DIR not specified or non-existent))

BAMTOOLS_LIB_DIR := $(if $(wildcard $(ABS_BAMTOOLS_DIR)/lib/bamtools),$(ABS_BAMTOOLS_DIR)/lib/bamtools,$(ABS_BAMTOOLS_DIR)/lib)
BAMTOOLS_INC_DIR := $(if $(wildcard $(ABS_BAMTOOLS_DIR)/include/bamtools),$(ABS_BAMTOOLS_DIR)/include/bamtools,$(ABS_BAMTOOLS_DIR)/lib)

CXX := g++
CXXFLAGS := -std=c++0x -Wno-deprecated -Wall -O3 -fexceptions -Wl,-rpath,$(BAMTOOLS_LIB_DIR)
INCLUDES := -I$(BAMTOOLS_INC_DIR) -L$(BAMTOOLS_LIB_DIR)

all: Microassembler

Microassembler: Microassembler.cc Microassembler.hh align.cc util.cc Mer.hh Ref.hh ReadInfo.hh ReadStart.hh Transcript.hh Edge.cc Edge.hh ContigLink.hh Node.cc Node.hh Path.cc Path.hh ContigLink.cc Graph.cc Graph.hh
	$(CXX) $(CXXFLAGS) $(INCLUDES) Microassembler.cc Edge.cc Node.cc Graph.cc Path.cc ContigLink.cc align.cc util.cc -o Microassembler -lbamtools -lz
