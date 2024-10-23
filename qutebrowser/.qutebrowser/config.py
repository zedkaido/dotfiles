# https://qutebrowser.org/doc/help/settings.html
config.load_autoconfig()

import os
os.environ['PATH'] = '/opt/homebrew/bin:/Users/x/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'

c.window.title_format = '{perc}{current_title}' 
c.window.hide_decoration = True
c.statusbar.show = 'always'

c.url.default_page = 'file:///Users/x/.local/share/blank.html'
c.url.start_pages = 'file:///Users/x/.local/share/blank.html'

c.auto_save.session = True
c.session.lazy_restore = True

c.editor.command = ['alacritty', '-e', 'vim', '-f', '{file}']

config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ['alacritty', '-e', 'lf', '-selection-path', '{}'])
config.set("fileselect.multiple_files.command", ['alacritty', '-e', 'lf', '-selection-path', '{}'])

c.url.searchengines = {
	'DEFAULT': 'https://duckduckgo.com/?q={}',
	'www': 'https://wiby.me/?q={}',
	'cows': 'https://swisscows.com/web/query?={}',
	'b': 'https://search.brave.com/search?q={}',
	's': 'https://startpage.com/sp/search?q={}',
	'd': 'https://duckduckgo.com/?q={}',
	'g': 'https://google.com/search?q={}',
	'gl': 'https://gitlab.com/search?search={}',
	'gh': 'https://github.com/search?q={}',
	'h': 'https://hoogle.haskell.org/?hoogle={}',
	'hp': 'https://hackage.haskell.org/packages/search?terms={}',
	'syn': 'https://powerthesaurus.com/{}/synonyms',
	'y': 'https://invidious.snopyta.org/search?q={}',
	'yt': 'https://www.youtube.com/results?search_query={}',
	'q': 'https://www.qwant.com/?q=%s{}=web',
	'per': 'https://www.perplexity.ai/search?focus=internet&q={}',
	'gpt': 'https://www.chatgpt.com/?q={}',
}

c.downloads.location.directory = '~/Downloads'
c.content.fullscreen.window = True
c.content.autoplay = False

c.downloads.location.directory = '~/Downloads'

# When to show the tab bar.
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'never'

c.content.blocking.adblock.lists = [ 
	"https://easylist.to/easylist/easylist.txt", 
	"https://easylist.to/easylist/easyprivacy.txt", 
	"https://secure.fanboy.co.nz/fanboy-cookiemonster.txt", 
	"https://easylist.to/easylist/fanboy-annoyance.txt", 
	"https://secure.fanboy.co.nz/fanboy-annoyance.txt", 
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt", 
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt", 
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt", 
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt", 
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
	"https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt"
]

c.content.blocking.enabled = True
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.blocking.method = 'both'

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = ['#eeeeee', '#eeeeee', '#eeeeee']

c.colors.completion.odd.bg = '#000000'
c.colors.completion.even.bg = '#000000'
c.colors.completion.category.fg = '#eeeeee'
c.colors.completion.category.bg = '#151515'
c.colors.completion.category.border.top = '#000000'
c.colors.completion.category.border.bottom = '#000000'
c.colors.completion.item.selected.fg = '#eeeeee'
c.colors.completion.item.selected.bg = '#000087'
c.colors.completion.item.selected.border.top = '#000087'
c.colors.completion.item.selected.border.bottom = '#000087'
c.colors.completion.item.selected.match.fg = '#ffd700'
c.colors.completion.match.fg = '#ffd700'
c.colors.completion.scrollbar.fg = '#eeeeee'

c.colors.hints.fg = '#ffffff'
c.colors.hints.bg = '#000000'
c.colors.hints.match.fg = '#999999'

c.colors.messages.info.bg = '#000000'
c.colors.prompts.bg = '#000000'

c.colors.statusbar.normal.bg = '#000000'
c.colors.statusbar.insert.fg = '#eeeeee'
c.colors.statusbar.insert.bg = '#000000'
c.colors.statusbar.passthrough.bg = '#000000'
c.colors.statusbar.command.bg = '#000000'
c.colors.statusbar.url.warn.fg = '#ffd700'
c.colors.statusbar.url.success.http.fg = '#ffffff'
c.colors.statusbar.url.success.https.fg = '#ffffff'

c.colors.tabs.bar.bg = '#000000'
c.colors.tabs.odd.bg = '#000000'
c.colors.tabs.even.bg = '#000000'
c.colors.tabs.selected.odd.bg = '#000087'
c.colors.tabs.selected.odd.fg = '#eeeeee'
c.colors.tabs.selected.even.bg = '#000087'
c.colors.tabs.selected.even.fg = '#eeeeee'
c.colors.tabs.pinned.odd.bg = '#202020'
c.colors.tabs.pinned.even.bg = '#000000'
c.colors.tabs.pinned.selected.odd.bg = '#242424'
c.colors.tabs.indicator.start = '#0000ff'
c.colors.tabs.indicator.stop = '#ffffff' 
c.colors.tabs.indicator.error = '#ff0000'

c.colors.downloads.bar.bg = '#000000'
c.colors.downloads.error.bg = '#ff0000'
c.colors.downloads.start.bg = '#000000'
c.colors.downloads.start.fg = '#eeeeee'
c.colors.downloads.stop.bg = '#eeeeee'
c.colors.downloads.stop.fg = '#000000'

## Position of the tab bar.
## Type: Position
## Valid values:
##   - top
##   - bottom
##   - left
##   - right
c.tabs.position = 'top'
c.fonts.default_family = '"Berkeley Mono"'
c.fonts.default_size = '16pt'
c.fonts.completion.entry = '16pt "Berkeley Mono"'
c.fonts.debug_console = 'default_size "Berkeley Mono"'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '16pt "Berkeley Mono"'

c.fonts.web.family.standard = "Berkeley Mono"
c.fonts.web.family.fixed = "Berkeley Mono"
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 16

# ---

def bind(key, command, mode):  # noqa: E302
	config.bind(key, command, mode=mode)

def nmap(key, command):
	bind(key, command, 'normal')

def imap(key, command):
	bind(key, command, 'insert')

def cmap(key, command):
	bind(key, command, 'command')

def tmap(key, command):
	bind(key, command, 'caret')

def pmap(key, command):
	bind(key, command, 'passthrough')

def unmap(key, mode):
	config.unbind(key, mode=mode)

def nunmap(key):
	unmap(key, mode='normal')

# ** Quickmarks and Marks
nunmap("'")

# real quickmarks
nmap("'51", ':open --tab localhost:5173')
nmap("'bl", ':open about:blank') 

c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}
c.aliases['archive'] = 'open --tab https://web.archive.org/save/{url}'
c.aliases['view-archive'] = 'open --tab https://web.archive.org/web/*/{url}'
c.aliases['va'] = 'open --tab https://web.archive.org/web/*/{url}'
c.aliases['view-google-cache'] = 'open https://www.google.com/search?q=cache:{url}'
c.aliases['vgc'] = 'open https://www.google.com/search?q=cache:{url}'

# Bindings for normal mode
nmap("ge", 'edit-url')

nmap(',m', 'spawn mpv {url}')
nmap(',M', 'hint links spawn mpv {hint-url}')
nmap(',D', 'hint links spawn st -e youtube-dl {hint-url}')

nmap('t', 'set-cmd-text -s :open -t')
nmap('xb', 'config-cycle statusbar.show always never')
nmap('xt', 'config-cycle tabs.show always never')
nmap('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')

# Bindings for insert mode
imap('<Ctrl-w>','fake-key <Alt-Backspace>')
imap('<Ctrl-o>','fake-key <Ctrl-Backspace>')

# Load images automatically in web pages.
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
