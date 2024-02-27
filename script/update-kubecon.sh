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

if [[ -z "$DEBUG" ]]; then
  wget https://github.com/suntong/html2md/releases/download/${HTML2MD_VER}/${HTML2MD}.tar.gz -O ${HTML2MD}.tar.gz
  tar xvf ${HTML2MD}.tar.gz
else
  HTML2MD_BIN=`which html2md`
fi

# sed 1: Remove "Copy heading link" text, which is inserted by Google Site
# sed 2: make site top-link self-referential, it should point at /kubecon
# sed 3: remove empty image alt ref with no significance (branding logo)
wget ${SOURCE_SITE} -O ${TEMP_FILE} \
  && ${HTML2MD_BIN} -i ${TEMP_FILE} |sed '1,6d'|head -n -13 \
  | sed 's_# \[Copy heading link\](\\#h\.[a-z0-9]*)[[:space:]]*_# _' \
  | sed 's_/view/flux-kubecon-paris-2024/home_/kubecon_' \
  | sed -E 's_\[!\[\]\([^)]+\)_[_g' \
  | sed -E 's_!\[flux-logo-inner-header-left[^)]+\)_\
    {{< figure src="img/flux-horizontal-color.png" alt="Flux Logo" class="flux-logo-inner-header-left" >}}_g' \
  | sed -E 's_!\[inner-header-right-align[^)]+\)_\
    {{< figure src="img/flux-horizontal-color.png" alt="Flux Logo" class="inner-header-right-align" >}}_g' \
  | sed -E 's_!\[stickers-float-left[^)]+\)_\
    {{< figure src="img/flux-cuttlefish-stickers.jpeg" alt="Custom printed stickers with cuttlefish mascot and Flux logos" class="stickers-float-left" >}}_g' \
    > ${OUT_FILE}

# TODO: The remaining images all have alt-text which can be further
# re-processed into CSS selectors? or maybe short codes, I think 😵

if [[ -z "$DEBUG" ]]; then
  rm ${TEMP_FILE} && rm -rf ${HTML2MD}*
fi
