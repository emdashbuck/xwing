.PHONY: all

HAMLS=$(wildcard *.haml)
HTMLS=$(HAMLS:.haml=.html)
COFFEES=$(wildcard *.coffee)
JAVASCRIPTS=$(COFFEES:.coffee=.js)

all: $(JAVASCRIPTS) $(HTMLS)

%.js: %.coffee
	coffee -c $<

%.html: %.haml
	haml -f html5 $< $@