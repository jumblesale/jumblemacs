FROM spacemacs/emacs25:develop

# copy .spacemacs dot file
COPY ./.spacemacs "${UHOME}/.spacemacs"

RUN sudo apt-get update \
    # required for intero
    && sudo apt-get install libtinfo-dev \
    && sudo apt-get install curl \
    # install stack
    # using apt-get install haskell-stack results in a version which crashes
    # https://bugs.launchpad.net/ubuntu/+source/haskell-stack/+bug/1786197
    # so get the latest through curl instead
    && curl -sSL https://get.haskellstack.org/ | sh \
    && apt-get purge curl \
    && install-deps
