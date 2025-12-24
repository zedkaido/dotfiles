static int bottom = 1;
static int embedded = 0;
static int minpwlen = 32;
static int mon = -1;
static int lineheight = 0;
static int min_lineheight = 8;

static const char *asterisk = "*";
static const char *fonts[] = {
	"TX\\-02:size=13"
};
static const char *prompt = NULL;
static const char *colors[SchemeLast][4] = {
	/*                    fg         bg    */
	[SchemeNormal] = { "#eeeeee", "#000000" },
	[SchemeDesc]   = { "#eeeeee", "#101010" },
	[SchemeSelect] = { "#eeeeee", "#000087" },
	[SchemePrompt] = { "#eeeeee", "#000087" },
};
