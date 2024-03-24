;;(setq-default mode-line-format (append " %c"))
;;(setq-default mode-line-format "%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position " C""%c" (vc-mode vc-mode) "  " mode-line-modes mode-line-misc-info mode-line-end-spaces)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms '((".*" "~/.emacs-backups" t)))
 '(backup-directory-alist '((".*" . "~/.emacs-backups")))
 '(css-indent-offset 2)
 '(cua-mode t nil (cua-base))
 '(debian-bug-From-address "Wyatt Ward <foo@bar.com>")
 '(fringe-mode 0 nil (fringe))
 '(hexl-bits 8)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(js-switch-indent-offset 4)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(4))
 '(nov-text-width t)
 '(olivetti-body-width 120)
 ;; '(package-selected-packages '(olivetti slime))
 '(scroll-bar-mode nil)
 '(sh-ancestor-alist
   '((ash . sh)
     (bash . jsh)
     (bash2 . jsh)
     (dash . ash)
     (dtksh . ksh)
     (es . rc)
     (itcsh . tcsh)
     (jcsh . csh)
     (jsh . sh)
     (ksh93 . ksh)
     (ksh . ksh88)
     (ksh88 . jsh)
     (oash . sh)
     (pdksh . ksh88)
     (mksh . pdksh)
     (posix . sh)
     (tcsh . csh)
     (wksh . ksh88)
     (wsh . sh)
     (zsh . ksh88)
     (rpm . sh)))
 '(sh-basic-offset 2)
 '(sh-indentation 2)
 '(sh-other-keywords
   '((bash sh-append bourne "bye" "logout" "select")
     (bourne sh-append sh "function")
     (csh sh-append shell "breaksw" "default" "end" "endif" "endsw" "foreach" "goto" "if" "logout" "onintr" "repeat" "switch" "then" "while")
     (es "break" "catch" "exec" "exit" "fn" "for" "forever" "fork" "if" "return" "throw" "while")
     (ksh sh-append bourne "select")
     (ksh93 sh-append bourne "select")
     (ksh88 sh-append bourne "select")
     (rc "break" "case" "exec" "exit" "fn" "for" "if" "in" "return" "switch" "while")
     (sh sh-append shell "done" "esac" "fi" "for" "in" "return")
     (shell "break" "case" "continue" "exec" "exit")
     (zsh sh-append bash "select" "foreach")))
 '(shell-file-name "/bin/bash")
 '(tab-width 4)
 '(text-scale-mode-step 1.05)
 '(tool-bar-mode nil)
 '(visual-fill-column-center-text t)
 '(visual-fill-column-inhibit-sensible-window-split t)
 '(visual-fill-column-width 140))

(setq-default header-line-format mode-line-format)

(setq mode-require-final-newline nil) ;; no newline required at end of files

                                        ;interpreter-mode-alist defaulted to:
                                        ;(("ruby1.8" . ruby-mode) ("ruby1.9" . ruby-mode) ("jruby" . ruby-mode)
                                        ;("rbx" . ruby-mode) ("ruby" . ruby-mode) ("python[0-9.]*" . python-mode)
                                        ;("rhino" . js-mode) ("gjs" . js-mode) ("nodejs" . js-mode) ("node" . js-mode)
                                        ;("gawk" . awk-mode) ("nawk" . awk-mode) ("mawk" . awk-mode) ("awk" . awk-mode)
                                        ;("pike" . pike-mode) ("\\(mini\\)?perl5?" . perl-mode) ("wishx?" . tcl-mode)
                                        ;("tcl\\(sh\\)?" . tcl-mode) ("expect" . tcl-mode) ("octave" . octave-mode)
                                        ;("scm" . scheme-mode) ("[acjkwz]sh" . sh-mode) ("r?bash2?" . sh-mode)
                                        ;("dash" . sh-mode) ("mksh" . sh-mode) ("\\(dt\\|pd\\|w\\)ksh" . sh-mode)
                                        ;("es" . sh-mode) ("i?tcsh" . sh-mode) ("oash" . sh-mode) ("rc" . sh-mode)
                                        ;("rpm" . sh-mode) ("sh5?" . sh-mode) ("tail" . text-mode) ("more" . text-mode)
                                        ;("less" . text-mode) ("pg" . text-mode) ("make" . makefile-gmake-mode)
                                        ;("guile" . scheme-mode) ("clisp" . lisp-mode) ("emacs" . emacs-lisp-mode))

;; shebang support for ksh93 (normally only activates for 'ksh' sans 93)
(add-to-list 'interpreter-mode-alist '("ksh93" . sh-mode))

;; disable a stupid auto-completion feature when typing << in sh-mode
(add-hook 'sh-mode-hook
          (lambda ()
            (sh-electric-here-document-mode -1)))

;;Prepare to add more languages/modes from this directory
(add-to-list 'load-path "~/.emacs.d/addon/")
;; SLIME
;;(add-to-list 'load-path "~/development/emacs/slime")
;;(require 'slime-autoloads)
;;(setq inferior-lisp-program "/usr/bin/sbcl")

;; SCIM bridge
;; Load scim-bridge.
                                        ;(require 'scim-bridge)
                                        ;(require 'scim-bridge-ja)



;; C-SPC は Set Mark に使う
;; (scim-define-common-key ?\C-\s nil)
;; C-/ は Undo に使う
;;(scim-define-common-key ?\C-/ nil)
;; SCIMの状態によってカーソル色を変化させる
                                        ;(setq scim-cursor-color '("red" "blue" "limegreen"))
;; C-j で半角英数モードをトグルする
                                        ;(scim-define-common-key ?\C-j t)
;; SCIM-Anthy 使用時に、選択領域を再変換できるようにする
                                        ;(scim-define-common-key '\C-S-\s nil)
                                        ;(global-set-key [?\C-\S- ] 'scim-anthy-reconvert-region)
;; SCIM がオフのままローマ字入力してしまった時に、プリエディットに入れ直す
                                        ;(global-set-key [?\C-\S- ] 'scim-transfer-romaji-into-preedit)

;; ;; Turn on scim-mode automatically after loading .emacs
;; (add-hook 'after-init-hook 'scim-mode-on)
;; ;; Setup input status switch keystroke.
;; (scim-define-common-key (kbd "s-SPC") t)
;; Use C-SPC for Set Mark command
                                        ;(scim-define-common-key (kbd "C-SPC") nil)
;; ;; Use C-/ for Undo command
;; (scim-define-common-key (kbd "C-/") nil)
;; ;; Change cursor color depending on SCIM status
;; (setq scim-cursor-color '("red" "blue" "limegreen"))

;; PHP
(autoload 'php-mode "php-mode" "PHP major mode for emacs." t)
;; shebang support for PHP
(add-to-list 'interpreter-mode-alist '("php"    . php-mode))
(add-to-list 'interpreter-mode-alist '("php?"   . php-mode))
(add-to-list 'interpreter-mode-alist '("php?.*" . php-mode))
;; C#
(autoload 'csharp-mode "csharp-mode" "C# major mode for emacs." t)
;; Flash ActionScript
(autoload 'actionscript-mode "actionscript-mode" "ActionScript major mode for emacs." t)
;; Arduino IDE alternative
(autoload 'arduino-mode "arduino-mode" "Arduino special mode." t)
;; Markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files." t)
(autoload 'gfm-mode "markdown-mode" "Major mode for editing GitHub Flavored Markdown files" t)
;; BBCode
(autoload 'bbcode-mode "bbcode-mode" "BBCode major mode" t)
;; EPUB
(autoload 'nov-mode "nov" "Novel reader (for epub files)" t)

;; Line column formatting mode for prettifying epub reading https://github.com/joostkremers/visual-fill-column
(autoload 'visual-fill-column-mode "visual-fill-column" "Column filling minor mode" t)
;; nhexl mode (alternative hex editor)
(autoload 'nhexl-mode "nhexl-mode" "Minor mode to edit files via hex-dump format" t)

(autoload 'elpher "elpher/elpher" "Elpher" t)

;; (add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
;; (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode))
;; (add-to-list 'auto-mode-alist '("\\.as\\'" . actionscript-mode))
;; EBooks ( https://depp.brause.cc/nov.el/ )
;; (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(set 'auto-mode-alist
     (append '(("\\.epub\\'" . nov-mode))
             auto-mode-alist
             '(
               ("\\.php\\'" . php-mode)
               ("\\.cs\\'"  . csharp-mode)
               ("\\.as\\'"  . actionscript-mode)
               ("\\.ino\\'" . arduino-mode)
               ("\\.md\\'" . markdown-mode)
               ("\\.markdown\\'" . markdown-mode)
               ("\\.vgm\\'" . nhexl-mode)
               ("README\\.md\\'" . gfm-mode)
               )))
;; nowadays, doc-view-mode can view epubs (badly). So we need to prepend
;; instead of append:

;;                               ("\\.epub\\'" . nov-mode)


;; initial value sanity for mode line toggler
;; (setq mode-line-format-stashed nil)
(defun toggle-mode-line ()
  "Turn the mode-line on and off with M-x toggle-mode-line"
  (interactive)
  (progn
    ;; ensure stash var is defined before proceeding
    (if
        (boundp 'mode-line-format-stashed)
        () ;; do nothing if already defined
      ;; else, set
      (setq-local mode-line-format-stashed nil)
      )
    (if (null mode-line-format)
        ;; restore when mode-line-format nil
        ;; (not mode-line-format-stashed)
        (progn
          ;; restore mode-line-format from stashed version, make stashed nil again
          (setq-local mode-line-format mode-line-format-stashed)
          (setq-local mode-line-format-stashed nil)
          )
      ;; else
      (progn
        ;; backup mode-line-format and then set to nil
        (setq-local mode-line-format-stashed mode-line-format)
        (setq-local mode-line-format nil)
        )
      )
    )
  )

(defun ml () "Experimental shorthand for toggle-mode-line" (interactive)
       (toggle-mode-line))

(defun mode-line () "Experimental shorthand for toggle-mode-line" (interactive)
       (toggle-mode-line))

;; bottom line
(defun bl () "Experimental shorthand for toggle-mode-line" (interactive)
       (toggle-mode-line))

(defun toggle-header-line ()
  "Turn the header-line on and off with M-x toggle-header-line"
  (interactive)
  (progn
    ;; ensure stash var is defined before proceeding
    (if
        (boundp 'header-line-format-stashed)
        () ;; do nothing if already defined
      ;; else, define
      (setq-local header-line-format-stashed nil)
      )
    (if (null header-line-format)
        ;; do when header line is nil (restore)
        (progn
          ;; restore header-line-format from stashed version, make stashed nil again
          (setq-local header-line-format header-line-format-stashed)
          (setq-local header-line-format-stashed nil)
          )
      ;; else
      (progn
        ;; backup header-line-format and then set to nil
        (setq-local header-line-format-stashed header-line-format)
        (setq-local header-line-format nil)
        )
      )
    )
  )

;; replaces built-in hl (highlight line)
(defun hl () "Experimental shorthand for toggle-header-line" (interactive)
       (toggle-header-line))

;; top line
(defun tl () "Experimental shorthand for toggle-header-line" (interactive)
       (toggle-header-line))

(defun header-line () "Experimental shorthand for toggle-header-line" (interactive)
       (toggle-header-line))

(defun toggle-lines () "Toggle both header and mode lines in current buffer"
       (interactive) (toggle-header-line) (toggle-mode-line))

(defun lines () "Toggle both header and mode lines in current buffer"
       (interactive) (toggle-lines))

;; example (local-rebind-key (kbd "l") 'toggle-lines)
(defun local-rebind-key (key expression)
  "Remap a key that already is mapped in the local buffer only"
  (progn
    (local-unset-key key)
    (local-set-key  key expression)
    )
  )

;; Use a special font when reading epubs in (graphical) emacs
(defun my-nov-font-setup ()
  ;; undefine header-line setting function
  (progn
    (defun nov-scroll-up-one ()
      "Scroll up by a single line"
      (interactive)
      (nov-scroll-up 1)
      )
    (defun nov-scroll-down-one ()
      "Scroll down by a single line"
      (interactive)
      (nov-scroll-down 1)
      )
    (face-remap-add-relative 'variable-pitch :family "TeX Gyre Termes"
                             :height 1.0)
    (set-face-attribute 'italic nil :slant 'italic :underline nil)
    (visual-line-mode 1)
    (setq visual-fill-column-width 140)
    (visual-fill-column-mode)
    (setq cursor-type nil)
    ;; (horizontal-scroll-bar-mode -1)
    ;; hide scroll bar
    ;; (horizontal-scroll-bar-mode nil)
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    ;; define key to hide bars, but only in nov.el mode
    (local-rebind-key (kbd "l") 'toggle-lines)
    (local-rebind-key (kbd "h") 'toggle-header-line)
    (local-rebind-key (kbd "m") 'toggle-mode-line)
    ;; up and down seem reversed from how I'd have imagined them. Oh well.
    (local-rebind-key (kbd "]") 'nov-scroll-up)
    (local-rebind-key (kbd "[") 'nov-scroll-down)
    ;; Make Page Up/Page Down also be able to change between chapters
    ;; normally, my emacs emacs uses cua-scroll-down / cua-scroll-up, which
    ;; can't go forward/backward through chapters but can scroll within
    ;; individual chapters.
    (local-rebind-key (kbd "<prior>") 'nov-scroll-down)
    (local-rebind-key (kbd "<next>") 'nov-scroll-up)
    ;; scroll by line(s) with up/down arrow keys
    (local-rebind-key (kbd "<down>") 'nov-scroll-up-one)
    (local-rebind-key (kbd "<up>") 'nov-scroll-down-one)
    ;; next/prev chapter
    (local-rebind-key (kbd "S-<prior>") 'nov-previous-document)
    (local-rebind-key (kbd "S-<next>") 'nov-next-document)
    (local-rebind-key (kbd "C-<prior>") 'nov-previous-document)
    (local-rebind-key (kbd "C-<next>") 'nov-next-document)
    (local-rebind-key (kbd "S-<left>") 'nov-previous-document)
    (local-rebind-key (kbd "S-<right>") 'nov-next-document)
    (local-rebind-key (kbd "C-<left>") 'nov-previous-document)
    (local-rebind-key (kbd "C-<right>") 'nov-next-document)

    ;; zoom
    (local-rebind-key (kbd "=") 'text-scale-adjust)
    (local-rebind-key (kbd "+") 'text-scale-adjust)
    (local-rebind-key (kbd "-") 'text-scale-adjust)
    (local-rebind-key (kbd "0") 'text-scale-adjust)
    ;; startup in fullscreen:
    ;; (toggle-frame-fullscreen)
    ;; hide mode line (custom function)
    ;; (toggle-mode-line)
    (toggle-lines)
    )
  )
(add-hook 'nov-mode-hook 'my-nov-font-setup)

;;(add-hook 'nov-mode-hook 'visual-line-mode)
;;(add-hook 'nov-mode-hook 'visual-fill-column-mode)

(defun my-eww-setup ()
  (progn
    (local-rebind-key (kbd "<down>") 'scroll-up-line)
    (local-rebind-key (kbd "<up>") 'scroll-down-line)
    (local-rebind-key (kbd "C-=") 'text-scale-adjust)
    (local-rebind-key (kbd "C-+") 'text-scale-adjust)
    (local-rebind-key (kbd "C--") 'text-scale-adjust)
    (local-rebind-key (kbd "C-0") 'text-scale-adjust)
    (face-remap-add-relative 'variable-pitch :family "TeX Gyre Termes"
                           :height 0.75)
    )
  )
(add-hook 'eww-mode-hook 'my-eww-setup)

;; When in graphical mode, and only when in graphical mode, set colors
(cond ((display-graphic-p)
       ;; Graphical code
       ;; Making a custom face so that I can use tahoma in tooltips.
       ;; I set up the rest via customize.
       ;; Without this, tooltip text is huge and ugly (at least under Motif).

       ;; these three set-face-attributes  would be done via customize, except
       ;; that doing it there messes up my preferred colors in xterm:
       (set-face-attribute 'header-line nil
                           :inherit 'mode-line
                           :background "#2E384A"
                           :foreground "#e5e5e5"
                           :box '(
                                  :line-width 1
                                  :color "#e5e5e5"
                                  :style nil))
       (set-face-attribute 'mode-line nil
                           ;; :background "#AEB2C3"
                           :background "#e5e5e5"
                           :foreground "#2E384A"
                           :box nil)
       (set-face-attribute 'mode-line-inactive nil
                           :inherit 'mode-line
                           ;; calculated with gamma 2.2 to be 1/2 brightness
                           ;; of #e5e5e5. The Naive 1/2 would be #797979.
                           :background "#a8a8a8"
                           :foreground "#2E384A"
                           :box nil)
       
       ;;                             :background "#2E384A"
       ;;                             :foreground "#E5E5E5"
       ;;                             :box '(:line-width 1 :color "grey40"))
       (defface tooltip-ui
         '((t :inherit variable-width
              :family "Tahoma NoAA"
              :height 80
              ))
         "Custom face for tooltips.")
       ;; april 2021 disabled test
       ;;       '(default ((t (:inherit nil :stipple nil :background "#2E3436" :foreground "#E5E5E5" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 60 :width normal :foundry "fontforge" :family "ibm3161bitmapemacs"))))
       '(cursor ((t (:background "#E5E5E5"))))
       ;;       (set-background-color "#2E3436")
       (set-background-color "#2E384A")
       (set-foreground-color "#E5E5E5")
       (setq frame-resize-pixelwise 1)
       )
      (t
       ;; Console-specific code
       ;; enable appropriate mouse-mode if it might be available
       (let (( termtype (getenv-internal "TERM" initial-environment) ))
         (if (or (string-match "xterm" termtype)
                 (string-match "xterm-256color" termtype)
                 (string-match "screen" termtype))
             (xterm-mouse-mode)
           ;;Having gpm problems, so disabled:
           ;;    (if (string-match "linux" (getenv-internal "TERM" initial-environment))
           ;;        (gpm-mouse-mode)
           ;;      )
           )
         ))
      )

;; horizontal scrolling, if available.
;;(when (fboundp 'horizontal-scroll-bar-mode)
;;  (horizontal-scroll-bar-mode 1))

(global-set-key (kbd "<mouse-7>") #'(lambda ()
                                     (interactive)
                                     (scroll-left 1)))
(global-set-key (kbd "<mouse-6>") #'(lambda ()
                                     (interactive)
                                     (scroll-right 1)))
;; scroll one line/col at a time. Good for my trackpoint.
(setq mouse-wheel-scroll-amount '(1))
;; (split-window-right)
(set-default 'truncate-lines t)

;; Allman-style (BSD) C but with 2 spaces for indentation
(setq-default c-default-style "bsd" c-basic-offset 2)

;; Print UI
(setq lpr-command "gtklp")
(setq ps-lpr-command "gtklp")

;; don't background on C-z (annoying)
(global-unset-key (kbd "C-z"))

;; start column numbers at position 1 instead of 0
;; (line count starts at 1, so so should column count.)
(setq mode-line-position 
      '("%p L%l C" (:eval (format "%d" (1+ (current-column))))))
(add-hook 'post-command-hook 'force-mode-line-update)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM3161APL" :foundry "PfEd" :slant normal :weight normal :height 128 :width normal))))
 '(term-color-blue ((t (:background "#2272D9" :foreground "#2272D9"))))
 '(term-color-cyan ((t (:background "#06989A" :foreground "#06989A"))))
 '(term-color-green ((t (:background "#4E9A06" :foreground "#4E9A06"))))
 '(term-color-magenta ((t (:background "#A168AB" :foreground "#A168AB"))))
 '(term-color-red ((t (:background "#CC0000" :foreground "#CC0000"))))
 '(term-color-white ((t (:background "#D3D7CF" :foreground "#D3D7CF"))))
 '(term-color-yellow ((t (:background "#C4A000" :foreground "#C4A000"))))
 '(tooltip ((t (:inherit tooltip-ui :background "lightyellow" :foreground "black")))))


;; '(italic ((t (:underline nil :slant italic))))


;; When in graphical mode, and only when in graphical mode, set colors
;;(cond ((display-graphic-p)
;; Graphical code: in graphics emacs, when in nov.el mode, we want to
;; redefine italic to actually _be_ italic.
;;       (set-face-attribute 'italic nil :slant 'italic :underline nil)
;;    )
;;      (t
;; console code would go here, IF I HAD ANY
;;   ))

;; backup directory
;;(setq backup-directory-alist `(("." . "~/.emacs-backups")))
;;(set-background-color "#2E3436")
;;(set-foreground-color "#E5E5E5")

(defun set-buffer-local-family (font-family)
  "Sets font in current buffer"
  (interactive "sFont Family: ")
  (setq buffer-face-mode-face font-family)
  ;;  (defface tmp-buffer-local-face 
  ;;  '((t :family font-family))
  ;;  "Temporary buffer-local face")
  ;;(buffer-face-set 'tmp-buffer-local-face))
  )

;; Disable bidirectional text, speeds up line-oriented editing on large lines
;; Since I don't use rtl in emacs
(setq-default bidi-display-reordering nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; override cua keybinding for scim
                                        ;(define-key cua--cua-keys-keymap (kbd "C-S-SPC") 'scim-mode)
                                        ;(define-key cua--cua-keys-keymap (kbd "C-S-SPC") nil)
                                        ; C-\ will also do the job here:
(define-key cua--cua-keys-keymap (kbd "C-S-SPC") 'toggle-input-method)
(set-language-environment "Japanese")

;; convenience stuff for writing html
(defun setup-html-mode-wyatt ()
  (progn

    ;; enter visual-line-mode if not already in it for HTML files
    (if (symbol-value 'visual-line-mode)
        ()
      (visual-line-mode))

    (defun new-p ()
      "Make a new paragraph opening and closing tag, put the cursor in between"
      (interactive)
      (progn (insert "<p>")
             (indent-according-to-mode)
             (insert "\n\n</p>")
             (indent-according-to-mode)
             (beginning-of-line)
             (backward-char 1)
             (indent-according-to-mode)
             (end-of-line)
             ))
    

    (local-set-key (kbd "C-x p")
                   'new-p)
    )

  (defun italic-tags ()
    "Make a new paragraph opening and closing tag, put the cursor in between"
    (interactive)
    (progn (insert "<i></i>")
           (backward-char 4)
           ))
  
  ;; overrides 'insert file':
  (local-set-key (kbd "C-x i")
                 'italic-tags)


;;   (defcustom aj8/buffer-skip-regexp
;;     (rx bos (or (or "*Backtrace*" "*Compile-Log*" "*Completions*"
;;                     "*Messages*" "*package*" "*Warnings*"
;;                     "*Async-native-compile-log*")
;;                 (seq "magit-diff" (zero-or-more anything))
;;                 (seq "magit-process" (zero-or-more anything))
;;                 (seq "magit-revision" (zero-or-more anything))
;;                 (seq "magit-stash" (zero-or-more anything)))
;;         eos)
;;     "Regular expression matching buffers ignored by `next-buffer' and
;; `previous-buffer'."
;;     :type 'regexp)
  
;;   (defun aj8/buffer-skip-p (window buffer bury-or-kill)
;;     "Return t if BUFFER name matches `aj8/buffer-skip-regexp'."
;;     (string-match-p aj8/buffer-skip-regexp (buffer-name buffer)))

;;  (setq switch-to-prev-buffer-skip 'aj8/buffer-skip-p)

  (defcustom my-skippable-buffer-regexp
    (rx bos (or "*Messages*" "*Backtrace*" "*Help*"
                "*Compile-Log*" "*Completions*" "*package*"
                "*Warnings*" "*Async-native-compile-log*"
                ) eos)
    "Matching buffer names are ignored by `my-next-buffer'
and `my-previous-buffer'."
    :type 'regexp)

  (defun my-change-buffer (change-buffer)
    "Call CHANGE-BUFFER until `my-skippable-buffer-regexp' doesn't match."
    (let ((initial (current-buffer)))
      (funcall change-buffer)
      (let ((first-change (current-buffer)))
        (catch 'loop
          (while (string-match-p my-skippable-buffer-regexp (buffer-name))
            (funcall change-buffer)
            (when (eq (current-buffer) first-change)
              (switch-to-buffer initial)
              (throw 'loop t)))))))

  (defun my-next-buffer ()
    "Variant of `next-buffer' that skips `my-skippable-buffer-regexp'."
    (interactive)
    (my-change-buffer 'next-buffer))

  (defun my-previous-buffer ()
    "Variant of `previous-buffer' that skips `my-skippable-buffer-regexp'."
    (interactive)
    (my-change-buffer 'previous-buffer))

  (global-set-key [remap next-buffer] 'my-next-buffer)
  (global-set-key [remap previous-buffer] 'my-previous-buffer)
  
  (defun hard-wrap (&optional maxlength) ;; this macro feels terribly written.
    "macro to enforce text wrapping on words hardcoded into a file."
    (interactive)
    (progn
      (if maxlength
          ()
        (setq maxlength 80)
        )
      ;; Okay, now we know our column count for certain.
      ;; Begin messing with things here.
      (defun is-line-end ()
        "t if the next character is on the following line"
        (interactive)
        (progn
          (forward-char 1)
          (if (eq 0 (current-column))
              (progn (backward-char 1) t)
            (progn (backward-char 1) nil))))

      (defun linefmt ()
        "sanitize line, return the length in characters. also moves as many words from next line onto current one as possible"
        ;; first move to end of whatever word the cursor is hovering over
        ( while (not (or
                      (char-equal (following-char) (string-to-char "\n"))
                      (char-equal (following-char) (string-to-char " "))
                      (char-equal (following-char) (string-to-char "?\t")))
                     )
          (forward-char 1))

        ;; forward delete spaces until end of line or non-space character
        
        (if (is-line-end) ;; if at end of line, just move stuff from next one up and format
            (delete-char 1))
        
        ( while (and
                 (not (char-equal (following-char) (string-to-char "\n")))
                 (or
                  (char-equal (following-char) (string-to-char " "))
                  (char-equal (following-char) (string-to-char "?\t"))))
          (delete-char 1))

        ;; if this function was run when at the end of a line already, then
        ;; </p> from the following line (if present) will need to be moved back
        ;; down to the following line (in html-mode) and re-indented
        (if (not(is-line-end))
              (if (char-equal (following-char) (string-to-char "<"))
                  (progn (insert "\n") (indent-according-to-mode) (beginning-of-line) (backward-char 1))
                
                (insert " ")))
        
        (indent-according-to-mode)
        (end-of-line)
        (current-column))

      (if (< (linefmt) maxlength)
          ;; we are good to go; no-op.
          ()
        ;; we are not good to go. Move cursor to last acceptable width...
        (progn
          (move-to-column (- maxlength 2))
          ;; -1 because 79 is the 80th char, and -1 more because we read the
          ;; char ahead of the cursor.
          
          ;; now seek backwards until we find a space to break on
          (while (not(or
                      (char-equal (following-char) (string-to-char " "))
                      (char-equal (following-char) (string-to-char "?\t"))
                      (eq (current-column) 0)
                      ))
            (backward-char 1)
            )
                                        ; back through whitespace
          (while (or
                  (char-equal (following-char) (string-to-char " "))
                  (char-equal (following-char) (string-to-char "?\t"))
                  (eq (current-column) 1)
                  )
            (backward-char 1)
            )
          (forward-char 1)
          (if (eq 0 (current-column))
              (backward-char 1))))
      ;; now we should be at a word.
      ;; (following-char) gives us the character under the cursor
      ;;(char-is-non-newline-whitespace `(string-to-char " "))
      ;; if it isn't a space character, then keep going back.
      ;; Okay, so at last we are ready to add a newline here.
      (if (not(is-line-end))
          (progn
            (insert "\n") 
            (indent-according-to-mode)
            ;; now we need to get back to our old position.
            (beginning-of-line)
            (backward-char 1)
            ))

      ;; TO-DO: handle merging short lines with following lines
      ;; (complete paragraphs probably).

      
      ))
  

  (local-set-key (kbd "C-x w")
                 'hard-wrap)
  )

;; nlinum (y u remove linum-mode!??!)
;;(autoload 'nlinum-mode "nlinum-mode" "nlinum: linum-mode replacement." t)
(load "nlinum-mode")
(defun linum-mode ()
  "linum-mode wrapper for nlinum"
  (interactive)
  (nlinum-mode))


(add-hook 'html-mode-hook 'setup-html-mode-wyatt)

(global-set-key [M-up] (lambda () (interactive) (scroll-down 1)))
(global-set-key [M-down] (lambda () (interactive) (scroll-up 1)))
