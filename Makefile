all: Microassembler

.PHONY : Microassembler
Microassembler:
	cd Microassembler; make BAMTOOLS_DIR=$(BAMTOOLS_DIR); cd ../;
	[ -d bin ] || mkdir bin;
	mv Microassembler/Microassembler bin/Microassembler;

.PHONY : clean
clean:
	rm -f bin/Microassembler;
