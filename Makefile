include ./build_scripts/rules.mk

# Sub directories to descend
SUBDIRS = LinkedList \

all: .create_dirs $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@
