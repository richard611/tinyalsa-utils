CFLAGS += -Wall -Iinclude 
LDFLGS += -lasound

TINYPLAY_OBJS = mixer.o  pcm.o  tinyplay.o
TINYMIX_OBJS = mixer.o  pcm.o  tinymix.o
TINYPCMINFO_OBJS = mixer.o  pcm.o  tinypcminfo.o
TINYCAP_OBJS = mixer.o  pcm.o  tinycap.o

all: tinyplay tinymix tinypcminfo tinycap

tinyplay: $(TINYPLAY_OBJS)
	$(CC) $(LDFLGS) -o $@ $(TINYPLAY_OBJS)

tinymix: $(TINYMIX_OBJS)
	$(CC) $(LDFLGS) -o $@ $(TINYMIX_OBJS)

tinypcminfo: $(TINYPCMINFO_OBJS)
	$(CC) $(LDFLGS) -o $@ $(TINYPCMINFO_OBJS)

tinycap: $(TINYCAP_OBJS)
	$(CC) $(LDFLGS) -o $@ $(TINYCAP_OBJS)

%.o: %.c 
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf *.o
	rm tinyplay
	rm tinymix
	rm tinypcminfo
	rm tinycap
