.PHONY: all clean clean-all build-all batch-t2 batch-t3 report-t2 report-t3 report-all

all: build-all

build-all:
	$(MAKE) -C T2
	$(MAKE) -C T3

batch-t2:
	$(MAKE) -C T2 batch

batch-t3:
	$(MAKE) -C T3 batch

report-t2:
	$(MAKE) -C T2 report

report-t3:
	$(MAKE) -C T3 report

report-all: report-t2 report-t3

clean: clean-all

clean-all:
	$(MAKE) -C T2 clean
	$(MAKE) -C T3 clean
