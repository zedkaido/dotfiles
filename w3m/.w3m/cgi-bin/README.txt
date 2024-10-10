# <https://github.com/gotbletu/shownotes/tree/master/w3m_omnibar>

chmod +x ~/.w3m/cgi-bin/*.cgi
sed -i 's@^cgi_bin.*@cgi_bin ~/.w3m/cgi-bin:/usr/lib/w3m/cgi-bin:/usr/local/libexec/w3m/cgi-bin@g' ~/.w3m/config
sed -i 's@^use_dictcommand.*@use_dictcommand 1@g' ~/.w3m/config
