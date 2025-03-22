#!/bin/bash
# Define and export these (ahead of the script):
#
HTML2MD_VER=1.5.0
HTML2MD=html2md_${HTML2MD_VER}_linux_amd64
HTML2MD_VER_SLUG=v${HTML2MD_VER}
HTML2MD_BIN="./${HTML2MD}/html2md"
SOURCE_SITE="https://sites.google.com/helix.ml/flux-kubecon-london-2025/home"
# export SOURCE_SITE HTML2MD_BIN HTML2MD_VER HTML2MD

TEMP_FILE=kubecon.html
OUT_FILE=KUBECON.md

sed=sed
head=head

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed=gsed
  head=ghead
  DEBUG=1
fi

if [[ -z "$DEBUG" ]]; then
  wget https://github.com/suntong/html2md/releases/download/${HTML2MD_VER_SLUG}/${HTML2MD}.tar.gz -O ${HTML2MD}.tar.gz
  tar xvf ${HTML2MD}.tar.gz
else
  HTML2MD_BIN=`which html2md`
  if [[ -z "$HTML2MD_BIN" ]]; then
    echo "Run: go install github.com/suntong/html2md@latest and ensure that ~/go/bin/ is in PATH"
    echo "    Fatal error: html2md was not installed"
    exit 1
  fi
fi

# sed 1: Remove "Copy heading link" text, which is inserted by Google Site
# sed 2: make site top-link self-referential, it should point at /kubecon
# sed 3: remove empty image alt ref with no significance (branding logo)
# sed 4-7: detect the images from their alt tags, then replace with figure refs
# 4: flux-logo-inner-header-left
# 5: blob-waving
# 6: qr-code
# 7: flux-cuttlefish-stickers
# sed 8: the header which is meant to float between images must also have float
# set 9: the "share this site" and link text under the QR code must also float right
# sed 10: flux booth fun (a caption with a heading h1 followed by three paragraphs!)
# sed 11: the podinfo sample app link is in an HTML block so :( turn it manually into a link
# sed 12: the "Flux News" header is also converted into a float div
#
# Note: some of these intentionally generate mismatched div tags, this is done so that one line
# can capture an element which opens a div, and another line can capture a later element which
# closes the div. For example flux booth fun has an image float left and text box float right!
#
# Comments cannot be inline below, so they are up here, (please do keep them updated if you edit any of this!)
#
wget ${SOURCE_SITE} -O ${TEMP_FILE} \
  && ${HTML2MD_BIN} -i ${TEMP_FILE} \
  |$sed '1,6d'|$head -n -13 \
  | $sed 's_# \[Copy heading link\](\\#h\.[a-z0-9]*)[[:space:]]*_# _' \
  | $sed 's_/view/flux-kubecon-london-2025/home_/kubecon_' \
  | $sed -E 's_\[!\[\]\([^)]+\)_[_g' \
  | $sed -E 's_!\[flux-logo-inner-header-left[^)]+\)_\
<div class="clearfix">\
<div class="flux-logo-inner-header-left">\
{{< figure src="/img/flux-horizontal-color.png" alt="Flux Logo" >}}\
</div>_g' \
  | $sed -E 's_!\[inner-header-right-align[^)]+\)_\
<div class="inner-header-right-align">\
{{< figure src="/img/blob-waving.gif" alt="Blob Waving" >}}\
</div></div>_g' \
  | $sed -E 's_!\[qr-code-right-align[^)]+\)_\
  <div class="qr-code-right-align">\
{{< figure src="/img/flux-kubecon-qr-code.png" alt="QR Code" >}}\
  </div>_g' \
  | $sed -E 's_!\[stickers-float-left[^)]+\)_\
<div class="clearfix">\
  <div class="stickers-float-left">\
{{< figure src="/img/flux-cuttlefish-stickers.jpeg" alt="Custom printed stickers with cuttlefish mascot and Flux logos" >}}\
</div>_g' \
  | $sed -z 's_# KubeCon London 2025\n\nApril 1-4, 2025_<div class="float-header-kubecon"><h1>KubeCon London 2025</h1><p>April 1-4, 2025</p></div>_' \
  | $sed -Ez 's_## fluxcd.io/kubecon\n\n([^\n]+)\n\n_\
<div class="float-share-this-site"><h2>fluxcd.io/kubecon</h2><p>\1</p></div></div>\n\n_' \
  | $sed -Ez 's_# Flux Booth fun!\n\n([^\n]+)\n\n([^\n]+)\n\n([^\n]+)\n\n#_\
<div class="float-booth-fun"><h1>Flux Booth fun!</h1><p>\1</p><p>\2</p><p>\3</p></div></div>\n\n#_' \
  | $sed -E 's_\[the podinfo sample app\]\(https://github.com/stefanprodan/podinfo\)_<a href="https://github.com/stefanprodan/podinfo">the podinfo sample app</a>_' \
  | $sed -Ez 's_# Flux news!\n\n([^\n]+)\n\n_\
<div class="clearfix">\
  <div class="float-header-kubecon"><h1 id="flux-news">Flux news!</h1><p>\1</p></div>_' \
    > ${OUT_FILE}

if [[ -z "$DEBUG" ]]; then
  rm ${TEMP_FILE} && rm -rf ${HTML2MD}*
fi
