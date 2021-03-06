 (deftheme gloom
  "Created 2021-07-21.")

(custom-theme-set-variables
 'gloom
 '(ansi-color-names-vector [nil nil nil nil nil nil nil nil]))

(custom-theme-set-faces
 'gloom
 '(cursor ((t (:background "#8eaee0"))))
 '(ffap ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#2a2944" :foreground "#a0a0c5"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "#8eaee0" :background "#383a62"))))
 '(header-line ((((class color) (min-colors 89)) (:foreground "#ccccff"))))
 '(hl-line ((((class color) (min-colors 89)) (:background "#383a62"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#ccccff" :background "#383a62"))))
 '(link ((((class color) (min-colors 89)) (:foreground "#efe4a1" :underline t))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:normal t :foreground "#ccccff"))))
 '(region ((((class color) (min-colors 89)) (:background "#663399"))))
 '(tooltip ((((class color) (min-colors 89)) (:foreground "#ccccff" :background "#383a62"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) :foreground nil :background "#ff79c6")))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#383a62"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#ff79c6"))))
 '(whitespace-space ((((class color) (min-colors 89)) (:foreground "#333353"))))
 '(whitespace-newline ((((class color) (min-colors 89)) (:foreground "#333353"))))
 '(whitespace-trailing ((((class color) (min-colors 89)) :inherit trailing-whitespace)))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#666699"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#efe4a1"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#666699"))))
 '(font-lock-function-name-face ((t (:foreground "#2de0a7" :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "#7aa5ff" :weight normal))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#ff79c6"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#6dfedf"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#ae81ff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:foreground "#ff79c6" :background "#383a62"))))
 '(company-echo-common ((((class color) (min-colors 89)) (:foreground "#2a2944" :background "#f1eff8"))))
 '(company-preview ((((class color) (min-colors 89)) (:background "#2a2944" :foreground "#7aa5ff"))))
 '(company-preview-common ((((class color) (min-colors 89)) (:foreground "#383a62" :foreground "#8eaee0"))))
 '(company-preview-search ((((class color) (min-colors 89)) (:foreground "#ae81ff" :background "#2a2944"))))
 '(company-scrollbar-bg ((((class color) (min-colors 89)) (:background "#383a62"))))
 '(company-scrollbar-fg ((((class color) (min-colors 89)) (:foreground "#7aa5ff"))))
 '(company-tooltip ((((class color) (min-colors 89)) (:inherit tooltip :normal t))))
 '(company-tooltip-annotation ((((class color) (min-colors 89)) (:foreground "#efe4a1"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:foreground "#6dfedf"))))
 '(company-tooltip-mouse ((((class color) (min-colors 89)) (:inherit highlight))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:background "#383a62" :foreground "#8eaee0"))))
 '(evil-ex-lazy-highlight ((((class color) (min-colors 89)) (:inherit lazy-highlight))))
 '(isearch ((((class color) (min-colors 89)) (:normal t :foreground "#ff79c6" :background "#383a62"))))
 '(isearch-fail ((((class color) (min-colors 89)) (:foreground "#383a62" :background "#ff79c6"))))
 '(magit-diff-context-highlight ((((class color) (min-colors 89)) (:background "#383a62" :foreground "#8eaee0"))))
 '(magit-diff-added-highlight ((((class color) (min-colors 89)) (:background "#383a62" :foreground "#6dfedf"))))
 '(magit-diff-removed-highlight ((((class color) (min-colors 89)) (:background "#383a62" :foreground "#ff79c6"))))
 '(magit-diff-added ((((class color) (min-colors 89)) (:background "#2a2944" :foreground "#6dfedf"))))
 '(magit-diff-removed ((((class color) (min-colors 89)) (:background "#2a2944" :foreground "#ff79c6"))))
 '(magit-diffstat-added ((((class color) (min-colors 89)) (:foreground "#ae81ff"))))
 '(magit-diffstat-removed ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(magit-diff-hunk-heading ((((class color) (min-colors 89)) (:background "#53495d"))))
 '(magit-diff-hunk-heading-highlight ((((class color) (min-colors 89)) (:background "#663399"))))
 '(magit-log-author ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(magit-process-ng ((((class color) (min-colors 89)) (:foreground "#ff79c6" :weight normal))))
 '(magit-process-ok ((((class color) (min-colors 89)) (:foreground "#2de0a7" :weight normal))))
 '(magit-section-heading ((((class color) (min-colors 89)) (:foreground "#7aa5ff" :weight normal))))
 '(magit-section-highlight ((((class color) (min-colors 89)) (:background "#383a62"))))
 '(mode-line ((((class color) (min-colors 89)) (:foreground "#ae81ff" :background "#663399"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inherit mode-line :background "#2a2944" :foreground "#666699" :box "#666699"))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:foreground "#f1eff8"))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#a0a0c5" :underline nil))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#666699"))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#ccccff"))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#6dfedf"))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#2de0a7"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#53495d"))))
 '(org-column-title ((((class color) (min-colors 89)) (:inherit org-column :weight normal :underline t))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#a0a0c5" :underline t))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#7aa5ff"))))
 '(org-document-info-keyword ((((class color) (min-colors 89)) (:foreground "#666699"))))
 '(org-document-title ((((class color) (min-colors 89)) (:weight normal :foreground "#6dfedf" :height 1.44))))
 '(org-done ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#666699"))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#7aa5ff"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#ae81ff"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#666699" :normal nil :strike-through t))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#2a2944" :background "#2a2944"))))
 '(org-level-1 ((((class color) (min-colors 89)) (:inherit normal :foreground "#ae81ff" :height 1.3))))
 '(org-level-2 ((((class color) (min-colors 89)) (:inherit normal :foreground "#ccccff" :height 1.1))))
 '(org-level-3 ((((class color) (min-colors 89)) (:normal nil :foreground "#8eaee0" :height 1.0))))
 '(org-level-4 ((((class color) (min-colors 89)) (:normal nil :foreground "#2de0a7"))))
 '(org-level-5 ((((class color) (min-colors 89)) (:normal nil :foreground "#a0a0c5"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:normal nil :foreground "#6dfedf"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:normal nil :foreground "#7aa5ff"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:normal nil :foreground "#666699"))))
 '(org-link ((((class color) (min-colors 89)) (:foreground "#a0a0c5" :underline t))))
 '(org-priority ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#2de0a7"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(org-sexp-date ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#2de0a7"))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#ccccff"))))
 '(org-tag ((((class color) (min-colors 89)) (:foreground "#ae81ff" :normal t :background "#383a62"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#6dfedf" :normal t :background "#383a62"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#2de0a7"))))
 '(org-warning ((((class color) (min-colors 89)) (:weight normal :foreground "#ae81ff"))))
 '(outline-1 ((((class color) (min-colors 89)) (:foreground "#8eaee0"))))
 '(outline-2 ((((class color) (min-colors 89)) (:foreground "#ccccff"))))
 '(outline-3 ((((class color) (min-colors 89)) (:foreground "#a0a0c5"))))
 '(outline-4 ((((class color) (min-colors 89)) (:foreground "#6dfedf"))))
 '(outline-5 ((((class color) (min-colors 89)) (:foreground "#6dfedf"))))
 '(outline-6 ((((class color) (min-colors 89)) (:foreground "#7aa5ff"))))
 '(powerline-active1 ((((class color) (min-colors 89)) (:inherit mode-line))))
 '(powerline-active2 ((((class color) (min-colors 89)) (:inherit powerline-active :background "#383a62"))))
 '(powerline-inactive1 ((((class color) (min-colors 89)) (:inherit mode-line-inactive))))
 '(powerline-inactive2 ((((class color) (min-colors 89)) (:inherit powerline-inactive))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 89)) :foreground "#666699")))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) :foreground "#a0a0c5")))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) :foreground "#ccccff")))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) :foreground "#ae81ff")))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) :foreground "#6dfedf")))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) :foreground "#8eaee0")))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) :foreground "#2de0a7")))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) :foreground "#7aa5ff")))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) :foreground "#ff79c6")))
 '(which-func ((((class color) (min-colors 89)) (:inherit font-lock-function-name-face))))
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#2de0a7" :weight normal))))
 '(dired-flagged ((((class color) (min-colors 89)) (:foreground "#7aa5ff"))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#ae81ff"))))
 '(dired-ignored ((((class color) (min-colors 89)) (:inherit shadow))))
 '(dired-mark ((((class color) (min-colors 89)) (:foreground "#a0a0c5" :weight normal))))
 '(dired-marked ((((class color) (min-colors 89)) (:foreground "#8eaee0" :weight normal))))
 '(dired-perm-write ((((class color) (min-colors 89)) (:foreground "#8eaee0" :underline t))))
 '(dired-symlink ((((class color) (min-colors 89)) (:foreground "#6dfedf" :weight normal :slant italic))))
 '(dired-warning ((((class color) (min-colors 89)) (:foreground "#ff79c6" :underline t))))
 '(default ((t (:background "#2a2944" :foreground "#f1eff8")))))

(provide-theme 'gloom)
