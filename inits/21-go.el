;; go get golang.org/x/tools/cmd/goimports
(setq gofmt-command "goimports")

(add-hook 'go-mode-hook
          '(lambda()
             (setq c-basic-offset 4)
             (setq tab-width 2 indent-tabs-mode t)
             (local-set-key (kbd "M-.") 'godef-jump)
             (add-hook 'before-save-hook 'gofmt-before-save)
             ))

(require 'golint)

;; ego
(setq auto-mode-alist (cons '("\\.ego$" . html-mode) auto-mode-alist))
