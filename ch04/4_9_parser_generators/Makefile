boolean: boolean_main.c boolean_lexer.c boolean_parser.c
	$(CC) $(CFLAGS) -o $@ $^

boolean_lexer.c: boolean_lexer.l
	flex $<

boolean_parser.c: boolean_parser.y
	bison $<

.PHONY: clean

clean:
	rm boolean boolean_lexer.h boolean_lexer.c \
		boolean_parser.h boolean_parser.c
