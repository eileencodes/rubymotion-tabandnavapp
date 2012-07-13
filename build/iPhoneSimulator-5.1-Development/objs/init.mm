#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_F996F940F3E64B399A50E97319487FD3(void *, void *);
void MREP_7B7DC5D2594645898E232745A37C0447(void *, void *);
void MREP_2E48BB565D914B4EB35CD3A6C338691E(void *, void *);
void MREP_E7C1AFE79C114ED79BCFF25F26330F5A(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_F996F940F3E64B399A50E97319487FD3(self, 0);
MREP_7B7DC5D2594645898E232745A37C0447(self, 0);
MREP_2E48BB565D914B4EB35CD3A6C338691E(self, 0);
MREP_E7C1AFE79C114ED79BCFF25F26330F5A(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
