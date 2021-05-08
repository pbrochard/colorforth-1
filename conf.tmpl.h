#ifndef __CONF_H
#define __CONF_H

// Enable colors in the terminal
#define __ECHO_COLOR


// Various sizes
#define STACK_SIZE 30
#define R_STACK_SIZE 30

#define DICT_SIZE 100
#define MACRO_DICT_SIZE 20

#define HEAP_SIZE 40960

#define TIB_SIZE 32


// Extensions to load
struct state;

extern void init_os_utils(struct state *s);
extern void init_dict_utils(struct state *s);
extern void init_io_utils(struct state *s);
extern void embed_lib_cf(struct state *s);

#define LOAD_EXTENTIONS                         \
  init_os_utils(state);                         \
  init_dict_utils(state);                       \
  init_io_utils(state);                         \
  embed_lib_cf(state);


#endif /* __CONF_H */
