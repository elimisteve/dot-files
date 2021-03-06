(add-hook 'text-mode-hook 'text-mode-hook-identify)
;(add-hook 'text-mode-hook 'longlines-mode) ; Ended 2011.01.05 ; 2011.02.08
(add-hook 'text-mode-hook 'visual-line-mode)

(server-start) ; emacs23; 2010.02.16

(defun kill-buffer-this ()
  (interactive)
  (kill-buffer nil))

(setq latex-mode-hook
      '(lambda ()
	 (local-set-key [(meta n)] 'latex-new-chapter)
	 (local-set-key [(meta s)] 'latex-new-section)
	 (local-set-key [(meta shift s)] 'latex-new-subsection)
	 (local-set-key [(ctrl j)] 'newline-and-indent)
	 (local-set-key [(shift meta p)] 'new-paper-heading-tex)
	 ))

(setq python-mode-hook
      '(lambda ()
	 (local-set-key [(control %)] 'dj-insert-ttag)
	 (local-set-key [(control {)] 'dj-insert-var)
	 (local-set-key [(control \#)] 'dj-insert-comment)
	 (local-set-key "\"" 'skeleton-pair-insert-maybe)
	 (local-set-key "'" 'skeleton-pair-insert-maybe)
	 (local-set-key [(meta shift c)] 'new-py-file-signed)
;	 (local-set-key [(control meta shift p)] 'new-py-file)
	 (local-set-key [(meta p)] 'py-print-noquotes)
	 (local-set-key [(meta shift p)] 'py-print-quotes)
	 (local-set-key "\C-c\C-c" 'comment-region)
	 (local-set-key "\C-c\C-u" 'uncomment-region)
	 (local-set-key [f10] 'py-compile)
	 (local-set-key [f11] 'my-scroll-4)
	 ))

(setq ruby-mode-hook
	  '(lambda ()
	 (local-set-key [(control %)] 'rails-insert-code)
;	 (local-set-key [(control {)] 'rails-insert-var)
	 ;; (local-set-key [(control \+)] 'rails-insert-println)
;	 (local-set-key [(control \_)] 'rails-insert-print)
	 (local-set-key "\"" 'skeleton-pair-insert-maybe)
	 (local-set-key "'" 'skeleton-pair-insert-maybe)
	 (local-set-key "{" 'skeleton-pair-insert-maybe)
	 (local-set-key "\C-c\C-c" 'comment-region)
	 (local-set-key "\C-c\C-u" 'uncomment-region)
	 (local-set-key [(meta shift c)] 'new-rb-file-signed)
	 (local-set-key [f10] 'rb-compile)
	 ))

(setq sh-mode-hook
      '(lambda ()
	 (local-set-key [(meta shift c)] 'new-sh-file-signed);'new-sh-file)
;	 (local-set-key [(control meta shift b)] 'new-sh-file-signed) ; maxes window
	 ;; (local-set-key "\C-c\C-c" 'comment-region)
	 ;; (local-set-key "\C-c\C-u" 'uncomment-region)
	 ))

(setq html-mode-hook
      '(lambda ()
	 (local-set-key "<" 'skeleton-pair-insert-maybe)
	 (local-set-key "\"" 'skeleton-pair-insert-maybe)
	 (local-set-key "'" 'skeleton-pair-insert-maybe)
	 ;; (local-set-key [(control %)] 'rails-insert-code)
	 ;; (local-set-key [(control \=)] 'rails-insert-println)
	 ;; (local-set-key [(control \_)] 'rails-insert-print)
	 (local-set-key [(control %)] 'dj-insert-ttag)
	 (local-set-key [(control {)] 'dj-insert-var)
	 (local-set-key [(control \#)] 'dj-insert-comment)
	 (local-set-key "\C-c\C-c" 'comment-region)
	 (local-set-key "\C-c\C-u" 'uncomment-region)
     (longlines-mode 0) ; turn it off
	 ))

(setq c-mode-hook
      '(lambda ()
	 (local-set-key [(control meta h)] 'backward-kill-word)
	 (local-set-key [f10] 'c-compile)
	 (local-set-key [(meta p)] 'c-printf)
	 (local-set-key [(meta shift c)] 'new-c-file)
	 (local-set-key [(control shift j)] 'my-paren-newline-indent)
	 ))

(setq go-mode-hook
      '(lambda ()
     (setq tab-width 4
     indent-tabs-mode t
     c-basic-offset 4)

	 ;(local-set-key [(control shift j)] 'my-newline-indent)
	 (local-set-key [(control shift j)] 'my-paren-newline-indent)
	 (local-set-key "\"" 'skeleton-pair-insert-maybe)
	 (local-set-key "'" 'skeleton-pair-insert-maybe)
	 (local-set-key [(meta p)] 'go-print)
	 (local-set-key [(meta shift c)] 'new-go-file)
	 (local-set-key [f10] 'go-compile)
	 (local-set-key [f11] 'my-scroll-4)
     (local-set-key [(control \#)] 'go-html-comment)
     (local-set-key [(control \{)] 'go-html-var)
	 ))

(setq clojure-mode-hook
      '(lambda ()
	 (local-set-key [(meta shift c)] 'new-clj-file-signed)
	 (local-set-key [(meta p)] 'clj-print)
	 ))

(setq coffee-mode-hook
      '(lambda ()
	 ;(local-set-key [(meta shift c)] 'new-clj-file-signed)
		 ))

(setq java-mode-hook
      '(lambda ()
		 (local-set-key [(control meta h)] 'backward-kill-word)
		 ))

;(add-hook 'slime-mode-hook
(setq slime-mode-hook
          (lambda ()
            (setq slime-truncate-lines nil)
;           (slime-redirect-inferior-output)
			))

(setq css-mode-hook
          (lambda ()
			(local-set-key [(control shift j)] 'my-paren-newline-indent)
			))

(add-hook 'haml-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(add-to-list 'load-path "~/.emacs.d/plugins/haml-mode")
(require 'haml-mode)


;;; See below
;; (setq org-mode-hook
;;      '(lambda ()
;; 	))

(setq indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil) ; 2011.03.25
;; (highlight-tabs)
;; (highlight-trailing-whitespace)

(setq compilation-window-height 7)
(setq compilation-scroll-output nil)
;(set-default-font "-adobe-courier-medium-r-normal--20-140-100-100-m-110-iso8859-1")
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-20-*-*-*-m-0-iso10646-1")
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

 ;;;; Set keyboard shortcuts
(global-set-key [f1] 'shell-command)
(global-set-key [(shift f1)] 'insert-date-brackets) ; [2006.09.06]
(global-set-key [f1] 'insert-date) ; 2006.09.06
(global-set-key [(meta shift f1)] 'insert-date-orgfile)
;(global-set-key [f2] )
(global-set-key [f3] 'kill-buffer-this);'slime-selector)
(global-set-key [f4] 'insert-output-from-eval)
(global-set-key [f5] 'eval-expression)
(global-set-key [f6] 'insert-output-from-shell-command)
(global-set-key [f7] 'call-last-kbd-macro)
(global-set-key [f8] 'start-kbd-macro)
(global-set-key [f9] 'end-kbd-macro)
;(global-set-key [(control -)] 'undo) ; blocked as of 2010.03.07 (use C-/ instead)
(global-set-key [(control /)] 'undo) ; default
(global-set-key [(control meta \[)] 'timeclock-in)
(global-set-key [(control meta \])] 'timeclock-out)
(global-set-key [(control meta d)] 'delete-leading-whitespace) ; custom
(global-set-key [(control h)] 'backward-delete-char)
(global-set-key [(control meta h)] 'backward-kill-word)
(global-set-key [(meta p)] 'insert-time-phil) ; 2010.02.09
(global-set-key [(meta h)] 'insert-time-hacking) ; 2010.01.16
(global-set-key [(meta r)] 'insert-time-programming) ; 2010.02.10
(global-set-key [(shift meta h)] 'insert-time)
(global-set-key [(control meta l)] 'previous-buffer-lisp)
(global-set-key [(control p)] 'transpose-chars)
(global-set-key [(control meta p)] 'transpose-sexps)
(global-set-key [(control t)] 'previous-line)
(global-set-key [(control meta t)] 'backward-list)
(global-set-key [(shift meta d)] 'describe-key)
(global-set-key [(meta g)] 'goto-line)
(global-set-key [\C-x n] 'save-buffer)
(global-set-key "\C-c\C-c" 'comment-region) ; 2010.12.16
(global-set-key "\C-c\C-u" 'uncomment-region) ; 2010.12.16
(global-set-key [(control meta g)] 'grep) ; 2011.04.12

(setq skeleton-pair t)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)
;(global-set-key "\"" 'skeleton-pair-insert-maybe)
;(global-set-key "`" 'skeleton-pair-insert-maybe) ; Blocked 2011.05.27
;(global-set-key "<" 'skeleton-pair-insert-maybe) ; HTML only
;; ;;(global-set-key [(meta ,)] 'tabbar-backward)
;; ;;(global-set-key [(meta .)] 'tabbar-forward)
(global-set-key [(meta ,)] 'next-buffer) ; 2010.12.18
(global-set-key [(meta .)] 'previous-buffer) ; 2010.12.18
(global-set-key [(control meta o)] 'other-window) ; 2010.12.18

;; For CoffeeScript, probably others
(setq-default tab-width 4)

;; decrease time required
(setq jit-lock-stealth-time 0.01)

;; sets properties for new frames (windows) ;; find more fonts
(setq default-frame-alist '((scroll-bar-mode . nil) ; why isn't this working?
			    (tool-bar-mode . nil)
			    (width . 85)
			    (height . 26)
;			    (font . "-b&h-lucidatypewriter-medium-r-normal-sans-25-180-100-100-m-150-iso8859-1")
;			    (font . "-unknown-DejaVu Sans Mono-bold-normal-normal-*-24-*-*-*-m-0-iso10646-1")
			    (font . "-unknown-DejaVu Sans Mono-bold-normal-normal-*-18-*-*-*-m-0-iso10646-1")
			    ))

;"-adobe-courier-medium-r-normal--20-140-100-100-m-110-iso8859-1")))

;; ;;(add-to-list 'load-path "~/m/lisp")
;; ;;(require 'tabbar-extension)
;; ;;(require 'tabbar)
;; ;;(tabbar-mode 1)

(add-to-list 'load-path "~/.emacs.d/plugins/markdown")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))


;; Rinari
(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
(require 'rinari) ;Taken out on 2011.04.23
(require 'rinari-merb)

;; rails-autoload
(add-to-list 'load-path "~/.emacs.d/plugins/rails-reloaded")
(require 'rails-autoload)

(add-to-list 'load-path "~/.emacs.d/plugins/go")
(require 'go-mode)
(require 'go-autocomplete)
;(require 'auto-complete-config)

(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))


;; org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-c\C-a" 'org-agenda)
;(define-key global-map [(control ac)] 'org-agenda)

;; javascript-mode
(add-to-list 'load-path "~/.emacs.d/plugins/javascript")
(require 'javascript-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode)) ; 2011.08.31

;;;; yasnippits
(add-to-list 'load-path
                  "~/.emacs.d/plugins/yasnippet-0.6.1c")
    (require 'yasnippet) ;; not yasnippet-bundle
    (yas/initialize)
    (yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;;;; zencoding
(add-to-list 'load-path "~/.emacs.d/plugins/zencoding/")
    (require 'zencoding-mode)
    (add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

(add-to-list 'load-path "~/.emacs.d/elpa/clojure-mode-1.7.1/")
    (require 'clojure-mode)
;    (add-to-list 'clojure-mode)  ;; ??

;;;; SLIME
(add-to-list 'load-path "~/.emacs.d/elpa/slime-20100404")
(require 'slime)
;(slime-setup '(slime-fancy slime-asdf))

;; (setq slime-multiprocessing t)

(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq slime-lisp-implementations
	  '((clisp   ("/usr/bin/clisp" "-K full"))
		(clojure ("/home/steve/bin/clojure.sh"))))
(setf slime-default-lisp 'clojure)
(global-set-key [f6] 'slime)

;; (setq slime-lisp-implementations
;;       (append slime-lisp-implementations
;;               `((clojure ,(swank-clojure-cmd) :init swank-clojure-init))))


;/home/steve/Dropbox/programming/clojure-contrib/src/main/clojure/clojure/contrib/

(progn
  (setq cdt-dir "/home/steve/.emacs.d/plugins/cdt")
;  (setq cdt-source-path "/home/steve/Dropbox/programming/clojure/src/jvm:/home/steve/Dropbox/programming/clojure/src/clj:/home/steve/Dropbox/programming/clojure-contrib/src/main/clojure:")
  (setq cdt-source-path "/home/steve/src-clj/clojure-1.2.0/src/jvm:/home/steve/src-clj/clojure-1.2.0/src/clj:/home/steve/src-clj/clojure-contrib-1.2.0/src/main/clojure")
  (load-file (format "%s/cdt.el" cdt-dir)))


(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
(require 'color-theme)
;(color-theme-initialize)
;(my-theme)

;;;; ido
;(require 'ido)
;    (ido-mode t)
;    (setq ido-enable-flex-matching t)

;;;; pymacs
;(require 'pymacs)

(setq org-special-ctrl-a/e t)

(setq org-cycle-separator-lines 1) ;Display blank lines, like outline-blank-lines
(setq org-return-follows-link t)
(setq org-mode-hook
      '(lambda ()
	 (local-set-key "\M-n" 'org-insert-heading)
	 (local-set-key [(meta shift o)] 'org-insert-heading-promote)
	 (local-set-key [(meta o)] 'org-insert-heading-demote)
	 (local-set-key "\M-9" 'org-do-promote)
	 (local-set-key "\M-0" 'org-do-demote)
	 	 ;(global-set-key [(control a)
;	 (local-set-key "\M-m" 'org-my-line-beginning)
	 (local-set-key "\M-m" 'org-my-phil-line-beginning)
	 (local-set-key [(meta shift c)] 'new-org-file-heading)
	 (local-set-key [(meta shift n)] 'new-org-entry) ; 2010.12.19
	 (local-set-key [(ctrl meta shift p)] 'new-paper-heading-org)
	 (local-set-key [(meta p)] 'insert-time-phil)
	 (local-set-key [(meta h)] 'insert-time-hacking) ; 2010.01.16
	 (local-set-key [(meta r)] 'insert-time-programming) ; 2010.10.25
	 (local-set-key "\C-c\C-c" 'my-org-done) ; 2010.10.25
	 ))


(eval-after-load "org"
  '(progn
     (define-prefix-command 'org-todo-state-map)

     (define-key org-mode-map "\C-cx" 'org-todo-state-map)

     (define-key org-todo-state-map "x"
       #'(lambda nil (interactive) (org-todo "CANC")))
     (define-key org-todo-state-map "d"
       #'(lambda nil (interactive) (org-todo "DONE")))
;     (define-key org-todo-state-map "f"
;       #'(lambda nil (interactive) (org-todo "DEFERRED")))
     (define-key org-todo-state-map "l"
       #'(lambda nil (interactive) (org-todo "DELEGATED")))
     (define-key org-todo-state-map "s"
       #'(lambda nil (interactive) (org-todo "START")))
     (define-key org-todo-state-map "w"
       #'(lambda nil (interactive) (org-todo "WAIT")))

;     (define-key org-agenda-mode-map "\C-n" 'next-line)
;     (define-key org-agenda-keymap "\C-n" 'next-line)
;     (define-key org-agenda-mode-map "\C-p" 'previous-line)
;     (define-key org-agenda-keymap "\C-p" 'previous-line)
     ))

; Added 2009.11.01
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "ASCII")
 '(display-time-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(nil nil t)
 '(org-agenda-custom-commands (quote (("d" todo "DONE|START|DELEGATED" nil) ("c" todo "CANC" nil) ("w" todo "WAIT" nil) ("W" agenda "" ((org-agenda-ndays 21))) ("A" agenda "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]"))) (org-agenda-ndays 1) (org-agenda-overriding-header "Today's Priority #A tasks: "))) ("u" alltodo "" ((org-agenda-skip-function (lambda nil (org-agenda-skip-entry-if (quote scheduled) (quote deadline) (quote regexp) "<[^>
]+>"))) (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
 '(org-agenda-files-directory (quote ("~/dlo/plan/")))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday t)
 '(org-deadline-warning-days 7)
 '(org-default-notes-file "~/dlo/notes.org")
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-remember-store-without-prompt t)
 '(org-remember-templates (quote ((116 "* TODO %?
  %u" "~/dlo/plan.org" "Tasks") (110 "* %u %?" "~/dlo/notes.org" "Notes"))))
 '(org-reverse-note-order nil)
 '(remember-annotation-functions (quote (org-remember-annotation)))
 '(remember-handler-functions (quote (org-remember-handler)))
 '(save-place t nil (saveplace))
 '(show-paren-mode t nil (paren))
 '(timeclock-ask-before-exiting nil))

(setq org-agenda-files (file-expand-wildcards "~/dlo/2010*.org"))

;; save buffers between sessions

(desktop-save-mode 1)
(setq history-length 25)

(setq desktop-globals-to-save
      (append '((extended-command-history . 30)
                (file-name-history        . 100)
                (grep-history             . 30)
                (compile-history          . 30)
                (minibuffer-history       . 50)
                (query-replace-history    . 60)
                (read-expression-history  . 60)
                (regexp-history           . 60)
                (regexp-search-ring       . 20)
                (search-ring              . 20)
                (shell-command-history    . 50)
                tags-file-name
                register-alist)))

(winner-mode 1) ;2009.04.01

;; word wrap
(setq-default auto-fill-mode t) ; remember to use Text Mode when appropriate

;; use mouse wheel
(mouse-wheel-mode t)

;; display time in 24h format, and date
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)


;;;; Custom functions

;; If it's 4:27pm, insert "[1627] " and place cursor at end of line

(defun insert-time () ; M-shift h
 (interactive)
 (shell-command "echo -n [ ; echo -n `date +%H%M` ; echo -n ] ; echo -n \" \"" 1)
 (forward-char 6)
 (self-insert-command 0)
 (forward-char 1))

(defun insert-time-phil ()
 (interactive)
 (shell-command "echo -n [`date +%H%M`] ; echo -n \" Phil: \"" 1)
 (forward-char 12)
 (self-insert-command 0)
 (forward-char 1))

(defun insert-time-hacking ()
 (interactive)
 (shell-command "echo -n [`date +%H%M`] ; echo -n \" Hacking: \"" 1)
 (forward-char 15)
 (self-insert-command 0)
 (forward-char 1))

(defun insert-time-programming ()
 (interactive)
 (shell-command "echo -n [`date +%H%M`] ; echo -n \" Programming: \"" 1)
 (forward-char 19)
 (self-insert-command 0)
 (forward-char 1))

(defun insert-date-brackets ()
 (interactive)
 (shell-command "echo -n `date +%m`/`date +%d`" 1)
 (forward-word 2))
; (end-of-line))

(defun insert-date () ; f1
 (interactive)
 (shell-command "echo -n `date +%Y`.`date +%m`.`date +%d`" 1)
 (forward-char 10))

(defun insert-date-orgfile ()
  (interactive)
  (shell-command "echo -n `date +%Y%m%d.org`" 1)
  (end-of-line))

(defun insert-output-from-shell-command (commandstr) ; f6
 (interactive "*sInsert from command: ")
 (shell-command commandstr 1))

(defun insert-output-from-eval (eval-me) ; f4 (doesn't work)
 (interactive "*sEval me: ")
 (eval-expression eval-me t))

(defun delete-leading-whitespace ()	; C-M d
 (interactive)
 (save-excursion
   (back-to-indentation)
   (open-line 1)
   (delete-trailing-whitespace)
   (delete-char 1)))

(defun set-fill-column-70 ()
 (setq fill-column 70))

(defun set-fill-column-100 ()
 (setq fill-column 100))

(defun new-file-heading ()
 (interactive)
 (shell-command "echo Words: ; echo Thoughts: ; echo" 1)
 (end-of-buffer))

(defun new-org-file-heading ()
 (interactive)
; (longlines-mode)
 (shell-command "echo -n \\* Today \\(`date +%Y`.`date +%m`.`date +%d`\\)" 1)
 (move-end-of-line nil)
 (newline 4)
 (end-of-buffer)
 (shell-command "echo -ne \"* Plan\"" 1)
 (beginning-of-buffer)
 (next-line 1))
; (end-of-buffer)
; (longlines-mode)
; (previous-line 4)
; (save-buffer)


(defun new-org-entry ()
  (interactive)
  (beginning-of-buffer)
  (search-forward "* Plan")
;  (org-cycle 1)
  (backward-paragraph)
  (forward-paragraph)
  (newline 2)
  (open-line 1)
  (insert-time)
  (next-line 2)
  (recenter-top-bottom 2)
  (previous-line 2)
  (move-end-of-line 1))
  ;; (forward-word)
  ;; (org-cycle)
  ;; (previous-line)
  ;; (backward-word)
  ;; (end-of-line))

(defun new-paper-heading-org ()
  (interactive)
  (shell-command "echo '\* Author: Steven D. Phillips\\n\* Date: '" 1)
  (next-line)
  (move-end-of-line)
  (insert-date)
  (shell-command "echo '\\n\* Title: " 1))

(defun new-paper-heading-tex ()
 (interactive)
 (shell-command "echo '\\'documentclass[a4paper,12pt]{article} ; echo '\\'usepackage{pxfonts} ; echo '\\'usepackage{txfonts} ; echo '\\'usepackage{setspace} ; echo ''; echo '\\'pdfpagewidth\ 8.5in ; echo '\\'pdfpageheight\ 11in ; echo '\\'setlength'\\'topmargin{0in} ; echo '\\'setlength'\\'headheight{0in} ; echo '\\'setlength'\\'oddsidemargin{0in} ; echo '\\'setlength'\\'evensidemargin{0in} ; echo '\\'setlength'\\'textheight{7.7in} ; echo '\\'setlength'\\'textwidth{6.5in} ; echo '' ; echo '\\'author{Steven Phillips} ; echo -n '\\'date{" 1)
 (end-of-buffer)
 (insert-date)
 (shell-command "echo }; echo '\\'title{ ; echo '\\'begin{document} ; echo '\\'maketitle ; echo '\\'abstract{} ; echo '' ; echo '\\'doublespacing ; echo '\\'newpage ; echo  ; echo '\\'section*{'\\'centering\ }; echo '' ; echo '' ; echo '\\'end{document} " 1)
 (save-buffer))

(defun my-justify-paragraph ()
  "Justify a paragraph and move to its end."
 (interactive)
 (fill-paragraph nil)
 (save-excursion
   (forward-paragraph)
 (kill-line)))

(defun latex-new-chapter ()
  "Create a new chapter in LaTeX"
  (interactive)
  (shell-command "echo -n '\\'chapter*{'\\'centering \ }" 1)
  (move-end-of-line nil)
  (backward-char))

(defun latex-new-section ()
  "Create a new section in LaTeX"
  (interactive)
  (shell-command "echo -n '\\'section*{'\\'centering \ }" 1)
  (move-end-of-line nil)
  (backward-char))

(defun latex-new-subsection ()
  "Create a new subsection in LaTeX"
  (interactive)
  (shell-command "echo -n '\\'subsection*{'\\'centering \ }" 1)
  (move-end-of-line nil)
  (backward-char))

(defun previous-buffer-lisp ()
  "Switch to previous buffer"
  (interactive)
  (switch-to-buffer nil))

(defun new-html ()
  "Create new HTML file"
  (interactive)
  (shell-command "echo \\<html\\> ; echo \\<head\\> ; echo \\<title\\> ; echo \\</title\\>\\</head\\> ; echo \\<body\\>" 1))

(defun org-my-line-beginning ()
  "Go to beginning of line, excluding stars"
  (interactive)
  (move-beginning-of-line nil)
  (forward-word)
  (backward-word))

(defun org-my-phil-line-beginning ()
  "Go to beginning of line, excluding stars"
  (interactive)
  (move-beginning-of-line nil)
  (forward-word)
  (forward-char 2))

(defun org-insert-heading-promote ()
  "Insert heading then promote"
  (interactive)
  (org-insert-heading)
  (org-do-promote))

(defun org-insert-heading-demote ()
  "Insert heading then demote"
  (interactive)
  (org-insert-heading)
  (org-do-demote))

(defun py-compile ()
  "Use compile to run python programs"
  (interactive)
  (compile (concat "python " (buffer-name))))

(defun py-print-quotes ()
  (interactive)
  (shell-command "echo -n 'print \"\"'" 1)
  (forward-char 7))

(defun py-print-noquotes ()
  (interactive)
  (shell-command "echo -n 'print '" 1)
  (forward-char 6))

(defun rails-insert-code ()
  (interactive)
  (shell-command "echo -n '<%  %>'" 1)
  (forward-char 3))

(defun rails-insert-println ()
  (interactive)
  (shell-command "echo -n '<%=  %>'" 1)
  (forward-char 4))

(defun rails-insert-print ()
  (interactive)
  (shell-command "echo -n '<%-  %>'" 1)
  (forward-char 4))

(defun dj-insert-ttag ()
  "Begin {% %} Django template tag"
  (interactive)
  (shell-command "echo -n '{%  %}'" 1)
  (forward-char 3))

(defun dj-insert-var ()
  "Begin {{ }} Django variable"
  (interactive)
  (shell-command "echo -n '{{  }}'" 1)
  (forward-char 3))

(defun dj-insert-comment ()
  "Begin {# #} Django comment"
  (interactive)
  (shell-command "echo -n '{#  #}'" 1)
  (forward-char 3))

(defun c-printf ()
  "Create new printf statement in c-mode"
  (interactive)
;  (shell-command "echo -n printf\\(\\\"'\\n'\\\"\\)\\;" 1)
  (shell-command "echo -n 'printf\(\"\\n\"\)\;'" 1)
  (forward-char 8))

(defun new-c-file ()
  (interactive)
  (shell-command "echo -n '#include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]) {\n\n\n    return 0\;\n}'" 1)
  (next-line 4)
;  (c-indent-line-or-region))
  (c-indent-command))

(defun new-py-file ()
  (interactive)
  (shell-command "echo -n '#!/usr/bin/env python\n\n'" 1)
  (next-line 2))

(defun new-py-file-signed ()
  (interactive)
  (shell-command "echo -n '#!/usr/bin/env python\n# Steve Phillips / elimisteve\n# '" 1)
  (next-line 2)
  (move-beginning-of-line nil)
  (forward-char 2)
  (insert-date)
  (newline 2)
  (next-line 2))

(defun new-rb-file-signed ()
  (interactive)
  (shell-command "echo -n '#!/usr/bin/env ruby\n# Steve Phillips / elimisteve\n# '" 1)
  (next-line 2)
  (move-beginning-of-line nil)
  (forward-char 2)
  (insert-date)
  (newline 2)
  (next-line 2))

(defun rb-compile ()
  "Use compile to run ruby programs"
  (interactive)
  (compile (concat "[[ -s \"/home/steve/.rvm/scripts/rvm\" ]] && . \"/home/steve/.rvm/scripts/rvm\" && /home/steve/.rvm/rubies/ruby-1.9.2-p180/bin/ruby " (buffer-name))))

(defun new-clj-file-signed ()
  (interactive)
  (shell-command "echo -n '; Steve Phillips / elimisteve\n; '" 1)
  (next-line 1)
  (move-beginning-of-line nil)
  (forward-char 2)
  (insert-date)
  (newline 2)
  (next-line 2))

(defun clj-print ()
  (interactive)
  (shell-command "echo -n '(println )'" 1)
  (forward-char 9))

(defun new-sh-file ()
  (interactive)
  (shell-command "echo -n '#!/bin/bash\n\n'" 1)
  (end-of-buffer)
  )

(defun new-sh-file-signed ()
  (interactive)
  (shell-command "echo -n '#!/bin/bash\n# Steve Phillips / elimisteve\n# '" 1)
  (end-of-buffer)
  (insert-date)
  (shell-command "echo '\n'" 1)
  (end-of-buffer)
  )

(defun new-go-file ()
  (interactive)
  (shell-command "echo -n '// Steve Phillips / elimisteve\n// ' " 1)
  (end-of-buffer)
  (insert-date)
  (shell-command "echo -ne '\n\npackage main\n\nimport (\n	\"fmt\"\n)\n\nfunc main() {\n\n}' " 1)
  (end-of-buffer)
  (previous-line)
  (indent-for-tab-command)
  ;(save-buffer)
  )

(defun my-org-done ()
  (interactive)
  (org-todo "DONE")) ; 2010.12.19

(defun my-newline-indent ()
  (interactive)
  (newline-and-indent)
  (newline-and-indent)
  (previous-line)
  (indent-for-tab-command))

(defun my-paren-newline-indent ()
  (interactive)
  ;; (shell-command "echo -n '{}'" 1)
  ;; (forward-char 1)
  (shell-command "echo -n ' {}'" 1)
  (forward-char 2)
  (newline-and-indent)
  (newline-and-indent)
  (previous-line)
  (indent-for-tab-command))

(defun go-print ()
  (interactive)
  (shell-command "echo -n 'fmt.Printf(\"\\n\")'" 1)
  (forward-char 12))

(defun go-compile ()
  (interactive)
  ;(compile (concat "~/bin/gc.sh " (buffer-name)))
  (compile (concat "~/bin/go1full.sh " (buffer-name) " " (buffer-file-name)))
  ;(compile (concat "~/bin/pygo " (buffer-name))) ; 2011.03.26, and gofull
  ;; (my-scroll-4)
  )
  ; 2010.12.17

(defun go-html-var ()
  "Begin {{}} Go template ~statement"
  (interactive)
  (shell-command "echo -n '{{}}'" 1)
  (forward-char 2))

(defun go-html-comment ()
  "Begin {/*  */} Go template comment"
  (interactive)
  (shell-command "echo -n '{{/*  */}}'" 1)
  (forward-char 5))

(defun c-compile ()
  (interactive)
  (compile (concat "gcc " (buffer-file-name) " -o " (file-name-sans-extension (buffer-file-name)) " && " (file-name-sans-extension (buffer-file-name))))
  ;; (shell-command (file-name-sans-extension (buffer-file-name)) 1)
  ;; (my-scroll-4)
  )

(defun my-scroll-4 ()
  (interactive)
  (scroll-other-window 4))

 ;;;; Aliases
(defalias 'slql 'slime-quit-lisp)
(defalias 'lm 'longlines-mode)     ; 2010.02.08
(defalias 'pc 'py-compile)         ; 2010.02.09
(defalias 'er 'eval-region)        ; 2010.08.22
(defalias 'cr 'comment-region)     ; 2010.12.16
(defalias 'md 'make-directory)     ; 2010.12.16
(defalias 'at 'ansi-term)          ; 2010.12.16
(defalias 'il 'inferior-lisp)      ; 2011.01.19
(defalias 'rm 'ruby-mode)          ; 2011.03.09
(defalias 'rd 'redraw-display)     ; 2011.03.17
(defalias 'wc 'whitespace-cleanup) ; 2011.03.26
(defalias 'rf 'rename-file)        ; 2011.05.29
(defalias 'df 'delete-file)        ; 2011.06.23
(defalias 'om 'org-mode)           ; 2011.08.01

;;(defun tabbar-buffer-groups ()
;; "Return the list of group names the current buffer belongs to.
;; This function is a custom function for tabbar-mode's
;; tabbar-buffer-groups.  This function group all buffers into 3 groups:
;; Those Dired, those user buffer, and those emacs buffer.  Emacs buffer
;; are those starting with '*'."
;; (list
;;  (cond
;;   ((string-equal "*" (substring (buffer-name) 0 1))
;;    "Emacs Buffer"
;;    )
;;   ((or (eq major-mode 'python-mode) (eq major-mode 'c-mode) (eq
;;    major-mode 'html-mode) (eq major-mode 'css-mode) (eq
;;    major-mode 'java-mode))
;;    "code"
;;    )
;;   ((eq major-mode 'org-mode)
;;    "org"
;;    )
;;   (t
;;    "User Buffer"
;;    )
;;   )))

;;(lambda ()
;;  (remove-if
;;   (lambda(buffer)
;;     (find (aref (buffer-name buffer) 0) " *"))
;;   (buffer-list)))

;;;;;;

 ;; TeX (load "auctex")
(setq TeX-mode-map (make-sparse-keymap))
;(TeX-define-common-keys TeX-mode-map)

(define-key TeX-mode-map [(meta i)] 'TeX-complete-symbol)
;(define-key TeX-mode-map [(control "[")] 'TeX-insert-braces) ;not quite
;(define-key TeX-mode-map "\{" 'TeX-insert-braces) ; see skeleton
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.

;;;; emacs 23.3 doesn't like this!

;; (when t
;;     (load
;;      (expand-file-name "/home/steve/.emacs.d/elpa/package.el"))
;;   (package-initialize))

;; auto-complete
(add-to-list 'load-path "/home/steve/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/steve/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

;;;;;;

;; swank
;; (require 'swank-clojure)
;; (setq swank-clojure-classpath
;;       (append
;;        (directory-files "~/Dropbox/programming/clojure" t ".jar$")))

;; (setq inferior-lisp-program "java -cp $CLASSPATH:/usr/share/java/jline.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/debug-repl/src jline.ConsoleRunner clojure.main")
;; (setq inferior-lisp-proc "java -cp $CLASSPATH:/usr/share/java/jline.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/debug-repl/src jline.ConsoleRunner clojure.main")
;(setq inferior-lisp "java -cp $CLASSPATH:/usr/share/java/jline.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/debug-repl/src jline.ConsoleRunner clojure.main")

(setq inferior-lisp "java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8888 -client -cp /home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/clojure-1.2.0/src:/home/steve/src-clj/clojure-1.2.0/src/clj:/home/steve/src-clj/clojure-1.2.0/src/jvm:/home/steve/src-clj/clojure-contrib-1.2.0/src/main/clojure/clojure/:/home/steve/.emacs.d/plugins/cdt/:/home/steve/.emacs.d/plugins/cdt/cdt.el clojure.main --repl")

(setq inferior-lisp-program "java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8888 -client -cp /home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/clojure-1.2.0/src:/home/steve/src-clj/clojure-1.2.0/src/clj:/home/steve/src-clj/clojure-1.2.0/src/jvm:/home/steve/src-clj/clojure-contrib-1.2.0/src/main/clojure/clojure/:/home/steve/.emacs.d/plugins/cdt/:/home/steve/.emacs.d/plugins/cdt/cdt.el clojure.main --repl")

(setq inferior-lisp-proc "java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8888 -client -cp /home/steve/Dropbox/programming/cdt/lib/clojure-contrib-1.2.0.jar:/home/steve/Dropbox/programming/cdt/lib/clojure-1.2.0.jar:/home/steve/src-clj/clojure-1.2.0/src:/home/steve/src-clj/clojure-1.2.0/src/clj:/home/steve/src-clj/clojure-1.2.0/src/jvm:/home/steve/src-clj/clojure-contrib-1.2.0/src/main/clojure/clojure/:/home/steve/.emacs.d/plugins/cdt/:/home/steve/.emacs.d/plugins/cdt/cdt.el clojure.main --repl")

;; (add-to-list 'package-archives
;;              '("technomancy" . "http://repo.technomancy.us/emacs/") t)

(defun my-theme ()
  (interactive)
  (color-theme-install
   '(my-theme
      ((background-color . "#000000")
      (background-mode . light)
      (border-color . "#1a1a1a")
      (cursor-color . "#ffffff")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     ;(region ((t (:background "#f3963f"))))
	 ;(region ((t (:background "#ff5500"))))
     (region ((t (:background "#888888"))))
     (font-lock-builtin-face ((t (:foreground "#d9f22c"))))
     (font-lock-comment-face ((t (:foreground "#ad0009"))))
     (font-lock-function-name-face ((t (:foreground "#006fed"))))
     (font-lock-keyword-face ((t (:foreground "#a433e6"))))
     (font-lock-string-face ((t (:foreground "#eb5296"))))
     (font-lock-type-face ((t (:foreground"#06a214"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'my-theme)

;(require 'color-theme)
;(color-theme-initialize)
(my-theme)

;; (setq tramp-syntax 'url)
;; (require 'tramp)
