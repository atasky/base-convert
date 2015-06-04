
all: clean
	@ln b2d b2h
	@ln b2d b2o
	@ln b2d d2b
	@ln b2d d2h
	@ln b2d d2o
	@ln b2d h2b
	@ln b2d h2d
	@ln b2d h2o
	@ln b2d o2b
	@ln b2d o2d
	@ln b2d o2h

clean:
	@rm -f b2o b2h d2b d2h d2o h2b h2d h2o o2b o2d o2h
	@echo "Done."

test:
	@echo "The answer had better be 42:"
	@echo 101010 | ./b2o | ./o2h | ./h2d
