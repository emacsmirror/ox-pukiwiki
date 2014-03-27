(let ((dir-list '("lisp" "testing" "contrib/lisp"))
      (prefix (or (getenv "ORG_DIR") "~/src/org-mode")))
  (mapc (lambda (dir)
          (add-to-list 'load-path (concat (file-name-as-directory prefix) dir)))
        dir-list))

(add-to-list 'load-path ".")

(mapc (lambda (p)
        (princ (concat p "\n"))) load-path)

(load "test-ox-pukiwiki.el")
(setq org-startup-folded nil)
(ert-run-tests-batch-and-exit)