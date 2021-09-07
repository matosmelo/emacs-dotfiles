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

(package-initialize)
;; Ivy Posframe
(ivy-posframe-mode 1)

;; Treemacs
(require 'treemacs-all-the-icons)
(treemacs-load-theme "all-the-icons")
(setq doom-themes-treemacs-theme "all-the-icons")
(treemacs-resize-icons 18)

;; tema claro      
;;(setq doom-theme 'doom-one-light)

;; Theme kaolin
(require 'kaolin-themes)
;;dark
;;aurora
;;ocean
;;valley-dark
(load-theme 'kaolin-dark t)

;; tabbar
(use-package tabbar
  :ensure t
  :bind
  ("<M-left>" . tabbar-backward)
  ("<M-right>" . tabbar-forward)

  :config
  (set-face-attribute
   'tabbar-button nil
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-selected nil
   :foreground "white"
   :background "gray19"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-unselected nil
   :foreground "gray75"
   :background "gray25"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-highlight nil
   :foreground "black"
   :background "white"
   :underline nil
   :box '(:line-width 1 :color "gray19" :style nil))

  (set-face-attribute
   'tabbar-modified nil
   :foreground "white"
   :background "gray25"
   :box '(:line-width 1 :color "gray19"))

  (set-face-attribute
   'tabbar-selected-modified nil
   :foreground "white"
   :background "gray19"
   :box '(:line-width 1 :color "gray19"))

  (custom-set-variables
   '(tabbar-separator (quote (0.2))))

  (defun tabbar-buffer-tab-label (tab)
    "Return a label for TAB.
  That is, a string used to represent it on the tab bar."
    (let ((label  (if tabbar--buffer-show-groups
                      (format " [%s] " (tabbar-tab-tabset tab))
                    (format " %s " (tabbar-tab-value tab)))))
      (if tabbar-auto-scroll-flag
          label
        (tabbar-shorten
         label (max 1 (/ (window-width)
                         (length (tabbar-view
                                  (tabbar-current-tabset)))))))))

  (defun px-tabbar-buffer-select-tab (event tab)
    "On mouse EVENT, select TAB."
    (let ((mouse-button (event-basic-type event))
          (buffer (tabbar-tab-value tab)))
      (cond
       ((eq mouse-button 'mouse-2) (with-current-buffer buffer (kill-buffer)))
       ((eq mouse-button 'mouse-3) (pop-to-buffer buffer t))
       (t (switch-to-buffer buffer)))
      (tabbar-buffer-show-groups nil)))

  (defun px-tabbar-buffer-help-on-tab (tab)
    "Return the help string shown when mouse is onto TAB."
    (if tabbar--buffer-show-groups
        (let* ((tabset (tabbar-tab-tabset tab))
               (tab (tabbar-selected-tab tabset)))
          (format "mouse-1: switch to buffer %S in group [%s]"
                  (buffer-name (tabbar-tab-value tab)) tabset))
      (format "\
mouse-1: switch to %S\n\
mouse-2: kill %S\n\
mouse-3: Open %S in another window"
              (buffer-name (tabbar-tab-value tab))
              (buffer-name (tabbar-tab-value tab))
              (buffer-name (tabbar-tab-value tab)))))

  (defun px-tabbar-buffer-groups ()
    "Sort tab groups."
    (list (cond ((or
                  (eq major-mode 'dired-mode)
                  (string-equal "*" (substring (buffer-name) 0 1))) "emacs")
                (t "user"))))
  (setq tabbar-help-on-tab-function 'px-tabbar-buffer-help-on-tab
        tabbar-select-tab-function 'px-tabbar-buffer-select-tab
        tabbar-buffer-groups-function 'px-tabbar-buffer-groups)

  :init
  (tabbar-mode 1))

;; margem limite  
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

;; Standard Jedi.el setting ;; auto completar...
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


;; traparencia    
;;(set-frame-parameter (selected-frame) 'alpha '(90 50))
;;(add-to-list 'default-frame-alist '(alpha 90 50))


