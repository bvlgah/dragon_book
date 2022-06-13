#include <stdio.h>
#include <stdlib.h>

#include "boolean_parser.h"
#include "boolean_lexer.h"

int main(int argc, char **argv) {
    yyscan_t scanner;
    YY_BUFFER_STATE state;

    if (argc != 2) {
        fprintf(stderr, "usage: %s boolean_expression\n", argv[0]);
        goto error;
    }

    if (yylex_init(&scanner)) {
        perror("failed to init scanner");
        goto error;
    }

    state = yy_scan_string(argv[1], scanner);
    yyparse(scanner);
    yy_delete_buffer(state, scanner);
    yylex_destroy(scanner);

    return EXIT_SUCCESS;

error:
    return EXIT_FAILURE;
}

