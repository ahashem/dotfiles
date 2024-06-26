module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    // https://github.com/wting/autojump
    'autojump',
    'awscli',
    'aws-iam-authenticator',
    // alternative to `cat`: https://github.com/sharkdp/bat
    'bat',
    'circleci',
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fortune',
    'fzf',
    'readline', // ensure gawk gets good readline
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    // 'gifsicle',
    'gitup',
    'git-extras',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    // better, more recent grep
    'grep',
    // https://github.com/jkbrzt/httpie
    'helm',
    'httpie',
    // jq is a sort of JSON grep
    'jq',
    'jenv',
    'kubectl',
    'kubectx',
    'nvm',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    // Install some other useful utilities like `sponge`
    'moreutils',
    // 'openconnect',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'screen',
    'tmux',
    // 'todo-txt',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    'gitup',
    'rbenv',
    'podman-desktop'
  ],
  cask: [
    //'adium',
    //'amazon-cloud-drive',
    //'atom',
    // 'box-sync',
    'comicbooklover',
    //'diffmerge',
    'docker', // docker for mac
    //'dropbox',
    // 'evernote',
    //'flux',
    'gpg-suite',
    //'ireadfast',
    // 'iterm2',
    // 'little-snitch',
    // 'macbreakz',
    // 'micro-snitch',
    // 'signal',
    //'macvim',
    // 'sizeup',
    //'sketchup',
    'slack',
    // 'the-unarchiver',
    //'torbrowser',
    //'transmission',
    'visual-studio-code',
    // 'vlc',
    'xquartz',
    // 'java',
    // 'mysqlworkbench',
    'jetbrains-toolbox',
    'setapp',
    // 'adobe-creative-cloud',
  ],
  gem: [
  ],
  npm: [
    // 'antic',
    // 'buzzphrase',
    'eslint',
    // 'instant-markdown-d',
    // 'generator-dockerize',
    // 'gulp',
    // 'npm-check-updates',
    // 'prettyjson',
    // 'trash',
    // 'vtop'
    // ,'yo'
  ],
  mas: [
    //com.apple.dt.Xcode (10.2.1)
    // '497799835',
    //com.if.Amphetamine (4.1.6)
    //'937984704',
    //net.shinyfrog.bear (1.6.15)
    //'1091189122',
    //com.monosnap.monosnap (3.5.8)
    //'540348655',
    //com.app77.pwsafemac (4.17)
    //'520993579',
  ],
};
