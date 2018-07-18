
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     c-c++
     cscope
     dash
     emacs-lisp
     erc
     evernote
     evil-cleverparens
     git
     github
     html
     ibuffer
     javascript
     markdown
     org
     osx
     perforce
     python
     react
     shell-scripts
     spacemacs-layouts
     syntax-checking
     typescript
     version-control
     (shell :variables
            shell-default-shell 'eshell
            shell-enable-smart-eshell t
            shell-default-height 20
            shell-default-position 'bottom)
     ;; angular
     ;; eyebrowse
     ;; grunt
     ;; semantic
     ;; smex
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      xkcd
                                      jscs)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(wombat
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono for Powerline"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  ;; Set sh-mode to apply to .profile-user and .inputrc
  (dolist (pattern '(".profile-user\\'"
                     ".inputrc\\'"))
    (add-to-list 'auto-mode-alist (cons pattern 'sh-mode)))
  (add-to-list 'load-path "/home/user/amavrakis/.emacs.d/private/local/emacs-gulpjs")
  ;; (require 'gulpjs)
  (autoload 'gulpjs-start-task "gulpjs" "Start a gulp task." t)
  ;; (setq-default evil-search-module 'evil-search)
  (setq-default
   evil-search-highlight-persist nil
   global-evil-search-highlight-persist nil)  )

(defun dotspacemacs/user-config ()
  "configuration function for user code.
this function is called at the very end of spacemacs initialization after
layers configuration. you are free to put any user code."

  ;; Set up scss-mode for all .scss files
  ;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/private/scss-mode"))
  ;; (autoload 'scss-mode "scss-mode")
  ;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

  (eval-after-load 'flycheck
    '(progn
       (setq flycheck-gcc-include-path (list "/home/dev/fonix/online/qa/src/"))
       (setq flycheck-c/c++-gcc-executable "/home/user/kejohnson/pkg/gcc49/bin/gcc")))

  (setq-default evil-escape-key-sequence "jk")
  (spacemacs/set-leader-keys
    ",j" 'jscs-fix
    "W." 'spacemacs/workspaces-micro-state
    "W1" 'spacemacs//workspaces-eyebrowse-switch-to-window-config-1-1
    "W2" 'spacemacs//workspaces-eyebrowse-switch-to-window-config-2-2
    "W3" 'spacemacs//workspaces-eyebrowse-switch-to-window-config-3-3
    "W4" 'spacemacs//workspaces-eyebrowse-switch-to-window-config-4-4
    "wq" 'kill-buffer-and-window)
  ;; (set-face-underline-p 'highlight nil)
  ;; (setq-default org-enable-github-support t)
  (setq-default standard-indent 2)
  (setq-default web-mode-attr-indent-offset 2)
  (setq-default default-tab-width 2 indent-tabs-mode nil)
  (setq c-basic-offset 2)
  (setq powerline-default-separator nil)
  (setq javascript-indent-level 2)
  (setq js2-basic-offset 2)
  (setq js-indent-level 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset nil)
  (setq css-indent-offset 2)
  (setq typescript-indent-level 4)
  (setq json-reformat:indent-width 2)
  (setq tide-format-options '(:indentSize 2 :tabSize 2 :insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces nil))
  (setq-default flycheck-jscsrc "~/.jscsrc")

  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-attr-indent-offset 2)
    )
  (add-hook 'web-mode-hook  'my-web-mode-hook)
  ;; (neo-vc-integration)

  ;; ignore these directories when in a project
  (eval-after-load 'projectile
    '(progn
       (add-to-list 'projectile-globally-ignored-directories ".stage")
       (add-to-list 'projectile-globally-ignored-directories "node_modules")))
  (eval-after-load 'grep
    '(progn
       (add-to-list 'grep-find-ignored-directories ".stage")
       (add-to-list 'grep-find-ignored-directories "bower_components")
       (add-to-list 'grep-find-ignored-directories "dist")
       (add-to-list 'grep-find-ignored-directories "node_modules")))

  (flycheck-def-config-file-var flycheck-typescript-tslint-config
      typescript-tslint
      "tslint.json"
    :safe #'stringp)

  ;; (add-hook 'prog-mode-hook 'nlinum-mode)
  ;; ;; Custom org-mode configuration
  ;; ;; helper so I can just use a list of strings for templates
  ;; (defun djk/newline-template (string-list)
  ;;   (mapconcat 'identity string-list "\n"))

  ;; ;; Org locations
  ;; (setq org-directory "~/org")
  ;; (setq org-default-notes-file "~/org/notes.org")

  ;; ;; Default base custom template
  ;; (defvar djk/org-basic-capture-template
  ;;   (djk/newline-template
  ;;    '("* TODO %^{task}"
  ;;      ":PROPERTIES:"
  ;;      ":EFFORT: %^{effort|1:00|0:05|0:15|0:30|2:00|4:00|8:00}"
  ;;      ":END:"
  ;;      "Captured %<%Y-%m-%d %H:%M>"
  ;;      "%?"
  ;;      ""
  ;;      "%i")))

  ;; ;; Set up global capturing
  ;; (evil-leader/set-key "oc" 'org-capture)

  ;; ;; Capture templates
  ;; (setq org-capture-templates
  ;;       `(("t" "Tasks" entry
  ;;          (file+headline (concat org-directory "/organizer.org") "Inbox")
  ;;          ,djk/org-basic-capture-template)))
   )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b6471e4f1acfeda344b302817a1a7e928442e2f0a72552f4fa1f5030d1845cc7" "3632cf223c62cb7da121be0ed641a2243f7ec0130178722554e613c9ab3131de" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "20e359ef1818a838aff271a72f0f689f5551a27704bf1c9469a5c2657b417e6c" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "68d36308fc6e7395f7e6355f92c1dd9029c7a672cbecf8048e2933a053cf27e6" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(erc-autojoin-channels-alist nil)
 '(erc-autojoin-mode nil)
 '(erc-nick "amavrakis")
 '(erc-prompt-for-password nil)
 '(erc-server "irc.pc.factset.com")
 '(erc-try-new-nick-p t)
 '(global-hl-line-mode t)
 '(package-selected-packages
   (quote
    (yapfify xterm-color xkcd ws-butler winum web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org tide typescript-mode tagedit spaceline powerline smeargle slim-mode shell-pop scss-mode sass-mode reveal-in-osx-finder restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el pbcopy paradox spinner p4 osx-trash osx-dictionary orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download org-bullets open-junk-file neotree mwim multi-term move-text markdown-toc markdown-mode magit-gitflow magit-gh-pulls macrostep lorem-ipsum livid-mode skewer-mode simple-httpd live-py-mode linum-relative link-hint launchctl json-snatcher jscs js2-refactor multiple-cursors js-doc insert-shebang indent-guide ibuffer-projectile hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make projectile helm-gitignore request helm-flx helm-descbinds helm-dash helm-css-scss helm-cscope xcscope helm-company helm-c-yasnippet helm-ag haml-mode google-translate golden-ratio gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md geeknote fuzzy flycheck-pos-tip pos-tip flycheck pkg-info epl flx-ido flx fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit ghub with-editor evil-lisp-state evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-cleverparens smartparens paredit evil-args evil-anzu anzu evil goto-chg eval-sexp-fu highlight eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks emmet-mode elisp-slime-nav dumb-jump disaster diminish dash-at-point cython-mode company-web web-completion-data company-tern dash-functional tern company-shell company-c-headers company-anaconda column-enforce-mode cmake-mode clean-aindent-mode clang-format bind-map bind-key auto-yasnippet auto-highlight-symbol auto-compile packed anaconda-mode pythonic ace-link ace-jump-helm-line helm helm-core ac-ispell auto-complete popup ace-window yasnippet which-key undo-tree mmm-mode json-mode js2-mode hydra diff-hl company-statistics company coffee-mode async aggressive-indent adaptive-wrap avy evil-unimpaired f s dash)))
 '(powerline-default-separator (quote utf-8)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
