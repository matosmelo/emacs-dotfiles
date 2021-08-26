;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; CUA Config
(cua-mode +1)

(define-key evil-insert-state-map (kbd "C-c") (lambda () (interactive) (cua-copy-region nil)))

(define-key evil-insert-state-map (kbd "C-v") (lambda () (interactive) (cua-paste nil)))

(define-key evil-insert-state-map (kbd "C-x") (lambda () (interactive) (cua-cut-region nil)))

(define-key evil-insert-state-map (kbd "C-f") (lambda () (interactive) (isearch-forward-regexp nil)))

(define-key evil-insert-state-map (kbd "C-z") 'evil-undo)

(define-key evil-insert-state-map (kbd "C-y") 'evil-redo)

(define-key evil-insert-state-map (kbd "C-a") 'mark-whole-buffer)

(setq cua-keep-region-after-copy t)

;; Keybindings
(global-set-key (kbd "C-s") 'evil-write)
(global-set-key (kbd "C-v") 'cua-paste)
(global-set-key (kbd "C-\\") 'treemacs)
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<down>") 'windmove-down)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<left>") 'windmove-left)
(global-set-key (kbd "M-x") 'ivy-posframe)
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "C-S-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-<up>") 'mc/mark-previous-like-this)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Ivy Posframe
(ivy-posframe-mode 1)

;; Treemacs
(require 'treemacs-all-the-icons)
(treemacs-load-theme "all-the-icons")
(setq doom-themes-treemacs-theme "all-the-icons")
(treemacs-resize-icons 18)

;; Cursor
;;(setq evil-insert-state-cursor '((bar . 1) "black")
;;      evil-normal-state-cursor '(box "black"))

;; tema claro      
;;(setq doom-theme 'doom-one-light)

(require 'kaolin-themes)
;;dark
;;aurora
;;ocean
;;valley-dark
(load-theme 'kaolin-dark t)

