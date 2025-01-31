config.load_autoconfig(False)

c.url.start_pages = "about:blank"
c.url.default_page = "about:blank"
c.url.searchengines = {
    "DEFAULT": "https://startpage.com/sp/search?query={}"
}

c.fonts.default_size = "14pt"
c.tabs.favicons.show = "never"
c.statusbar.show = "in-mode"
c.spellcheck.languages = ["en-US"]
c.input.insert_mode.auto_load = True

config.unbind("<Ctrl-v>")
config.bind("<Shift-p>", "mode-enter passthrough")

config.bind("<f12>", "inspector")
config.bind("<Ctrl-f>", "cmd-set-text /")
config.bind("<Ctrl-s>", "cmd-set-text :tab-select 0")
config.bind("<Ctrl-Shift-t>", "config-cycle tabs.position top left")
config.bind("<Ctrl-Shift-b>", "config-cycle tabs.show always never")
config.bind("<Ctrl-Shift-u>", "hint all")

config.bind("<Ctrl-Shift-j>", "tab-move +")
config.bind("<Ctrl-Shift-k>", "tab-move -")
config.bind("pp", "tab-pin")

config.bind("<Ctrl-Shift-f>", "spawn --userscript qute-pass -d 'fuzzel -d'")
config.bind("<Ctrl-Shift-p>", "spawn --detach qutebrowser --target private-window")
config.bind("<Ctrl-r>", "config-source")
config.bind("M", "spawn mpv {url}")

config.source("theme.py")

c.content.javascript.log_message.excludes = {
    "userscript:_qute_stylesheet": ["*Refused to apply inline style because it violates the following Content Security Policy directive: *"], 
    "userscript:_qute_js": ["*TrustedHTML*"]
}

config.set("content.notifications.enabled", True, "https://teams.microsoft.com")
