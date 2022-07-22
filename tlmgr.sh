#!/bin/sh

tlmgr update --self

tlmgr install \
    algorithm2e babel-russian cm-lgc cm-super cm-unicode cmcyr cyrillic elsarticle forum \
    hyph-utf8 hyphen-russian ifmtarg ifoddpage lh libertinegc lm makecell newcomputermodern \
    relsize revtex revtex4 ruhyphen t2 tempora ucs

tlmgr install \
    acmart amscls amsfonts amsmath booktabs caption comment cm-super cmap doclicense \
    draftwatermark environ etoolbox fancyhdr float fontaxes geometry graphics graphics-def \
    hyperref hyperxmp iftex inconsolata kastrup libertine microtype mmap ms mweights \
    natbib nccfoots ncctools newtx oberdiek preprint refcount setspace textcase totpages \
    trimspaces upquote url xcolor xkeyval xstring

# texhash
# iconv -f cp1251 -t utf8 in.tex | tr -d '\r' > out.tex
