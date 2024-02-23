function echo_ok() { echo -e '\033[1;32m'"$1"'\033[0m'; }
function echo_warn() { echo -e '\033[1;33m'"$1"'\033[0m'; }
function echo_error() { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

echo_ok "Adding taps..."
TAPS=(
  homebrew/cask-fonts
  homebrew/bundle
  homebrew/services
)

for tap in "${TAPS[@]}"; do
  brew tap "$tap"
done

echo_ok "Add packages..."
PACKAGES=(
    aom
    libarchive
    openexr
    aribb24
    libass
    openjpeg
    autoconf
    libassuan
    openldap
    bat
    libb2
    openssl@1.1
    libbluray
    openssl@3
    libevent
    opus
    libgcrypt
    p11-kit
    berkeley-db
    libgit2
    boost
    libgpg-error
    pango
    brotli
    libidn2
    pcre2
    libksba
    perl
    c-ares
    libnghttp2
    pinentry
    ca-certificates
    libogg
    pixman
    cairo
    libpng
    pkg-config
    cjson
    librist
    pnpm
    cmake
    libsamplerate
    postgresql@11
    coreutils
    libsndfile
    pyenv
    dav1d
    libsodium
    python@3.11
    direnv
    libsoxr
    python@3.12
    double-conversion
    libssh2
    python@3.8
    edencommon
    libtasn1
    python@3.9
    fb303
    libtermkey
    rav1e
    fbthrift
    libtiff
    readline
    fd
    libunibreak
    redis
    ffmpeg
    libunistring
    ripgrep
    ffmpeg@4
    libusb
    rubberband
    fizz
    libuv
    ruby-build
    flac
    libvidstab
    sdl2
    fmt
    libvmaf
    shared-mime-info
    folly
    libvorbis
    snappy
    fontconfig
    libvpx
    speex
    freetype
    libvterm
    sqlite
    frei0r
    libx11
    srt
    fribidi
    libxau
    svt-av1
    fzf
    libxcb
    tag
    gawk
    libxdmcp
    tcl-tk
    gdbm
    libxext
    tealdeer
    gettext
    libxrender
    terminal-notifier
    gflags
    libyaml
    tesseract
    gh
    little-cms2
    theora
    giflib
    luajit
    tmux
    gifski
    luv
    tree
    git
    lz4
    tree-sitter
    git-delta
    lzo
    unbound
    glib
    m4
    unibilium
    glog
    make
    utf8proc
    gmp
    mbedtls
    wangle
    gnupg
    # md5sha1sum
    watchman
    gnutls
    mpdecimal
    webp
    graphite2
    mpfr
    x264
    grex
    mpg123
    x265
    harfbuzz
    msgpack
    xorgproto
    highway
    ncurses
    xvid
    icu4c
    neovim
    xz
    imath
    nettle
    yarn
    jpeg-turbo
    ninja
    zeromq
    jpeg-xl
    zimg
    jq
    zlib
    krb5
    npth
    zstd
    lame
    oniguruma
    leptonica
    opencore-amr
)

echo_ok "Installing packages..."
brew install "${PACKAGES[@]}"

echo_ok "Cleaning up..."
brew cleanup

echo_ok "Installing cask..."

CASKS=(
  arc
	alfred
	# google-chrome # installed by work bootstrapper
	iterm2
	# slack # installed by work bootstrapper
	spotify
  iterm2
  brave-browser
  karabiner-elements
  spotify
  # docker # installed by work bootstrapper
  notunes
  # visual-studio-code # installed by work bootstrapper
  dozer
  obs
  firefox
  postman
  google-drive
  obsidian
  bettertouchtool
)

echo_ok "Installing cask apps..."
brew install --cask "${CASKS[@]}"

# # brew cask quicklook
# echo_ok "Installing QuickLook Plugins..."
# brew install --cask \
# 	qlcolorcode qlmarkdown qlprettypatch qlstephen \
# 	qlimagesize \
# 	quicklook-csv quicklook-json epubquicklook

echo_ok "Installing fonts..."
brew tap homebrew/cask-fonts

FONTS=(
    font-meslo-lg-nerd-font
	# font-clear-sans
	# font-consolas-for-powerline
	# font-dejavu-sans-mono-for-powerline
	# font-fira-code
	# font-fira-mono-for-powerline
	# font-inconsolata
	# font-inconsolata-for-powerline
	# font-liberation-mono-for-powerline
	# font-menlo-for-powerline
	# font-roboto
)
brew install --cask "${FONTS[@]}"

# echo_ok "Installing Python packages..."
# PYTHON_PACKAGES=(
# 	ipython
# 	virtualenv
# 	virtualenvwrapper
# )
# sudo pip install "${PYTHON_PACKAGES[@]}"

