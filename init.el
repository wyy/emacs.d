(menu-bar-mode -1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)
(ido-mode 1)
(setq c-basic-offset 4)
(setq-default indent-tabs-mode nil)
;(setq js-indent-level 2)

(defun duplicate-line ()
  "Duplicate current line"
  (interactive)
  (let ((column (current-column))
        (line (buffer-substring
                (line-beginning-position)
                (line-end-position))))
    (move-end-of-line 1)
    (newline)
    (insert line)
    (move-to-column column)))

(global-set-key (kbd "C-,") 'duplicate-line)
