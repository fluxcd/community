#!/bin/bash
# Define and export these (ahead of the script):
#
# HTML2MD=html2md_1.5.0_linux_amd64
# HTML2MD_VER=v1.5.0
# HTML2MD_BIN="./${HTML2MD}/html2md"
# SOURCE_SITE="https://sites.google.com/view/flux-kubecon-paris-2024/home"
# export SOURCE_SITE HTML2MD_BIN HTML2MD_VER HTML2MD

TEMP_FILE=kubecon.html
OUT_FILE=KUBECON.md

sed=sed
head=head

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed=gsed
  head=ghead
fi

if [[ -z "$DEBUG" ]]; then
  wget https://github.com/suntong/html2md/releases/download/${HTML2MD_VER}/${HTML2MD}.tar.gz -O ${HTML2MD}.tar.gz
  tar xvf ${HTML2MD}.tar.gz
else
  HTML2MD_BIN=`which html2md`
fi

# sed 1: Remove "Copy heading link" text, which is inserted by Google Site
# sed 2: make site top-link self-referential, it should point at /kubecon
# sed 3: remove empty image alt ref with no significance (branding logo)
# sed 4-6: detect the images from their alt tags, then replace with figure refs
# sed 7: the header which is meant to float between images must also have float
# sed 8: flux booth fun (a caption with a heading h1 followed by two paragraphs!)
wget ${SOURCE_SITE} -O ${TEMP_FILE} \
  && ${HTML2MD_BIN} -i ${TEMP_FILE} |$sed '1,6d'|$head -n -13 \
  | $sed 's_# \[Copy heading link\](\\#h\.[a-z0-9]*)[[:space:]]*_# _' \
  | $sed 's_/view/flux-kubecon-paris-2024/home_/kubecon_' \
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
  | $sed -E 's_!\[stickers-float-left[^)]+\)_\
<div class="clearfix">\
  <div class="stickers-float-left">\
{{< figure src="/img/flux-cuttlefish-stickers.jpeg" alt="Custom printed stickers with cuttlefish mascot and Flux logos" >}}\
</div>_g' \
  | $sed -z 's_# KubeCon Paris 2024\n\nMarch 19-22, 2024_<div class="float-header-kubecon"><h1>KubeCon Paris 2024</h1><p>March 19-22, 2024</p></div>_' \
  | $sed -Ez 's_# Flux Booth fun!\n\n([^\n]+)\n\n([^\n]+)\n\n#_\
<div class="float-booth-fun"><h1>Flux Booth fun!</h1><p>\1</p><p>\2</p></div></div>\n\n#_' \
    > ${OUT_FILE}

if [[ -z "$DEBUG" ]]; then
  rm ${TEMP_FILE} && rm -rf ${HTML2MD}*
fi
