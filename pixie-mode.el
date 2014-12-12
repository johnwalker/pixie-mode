;;; pixie-mode.el --- Major mode for Pixie-lang

;; Copyright © 2014 John Walker
;;
;; Author: John Walker <john.lou.walker@gmail.com>
;; URL: https://github.com/johnwalker/pixie-mode
;; Version: 0.1.0
;; Package-Requires: ((clojure-mode "3.0.1") (inf-clojure "1.0.0"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A major mode for Pixie-lang.

;;; Code:

(defcustom pixie-inf-lisp-command "pixie-vm"
  "The command used by `inferior-lisp-program'."
  :type 'string
  :group 'pixie
  :safe 'stringp)

;;;###autoload
(define-derived-mode pixie-mode clojure-mode "Pixie"
  "Major mode for editing Pixie code.
\\{pixie-mode-map}"
  (define-key pixie-mode-map "\C-x\C-e" 'inf-clojure-eval-last-sexp)
  (setq-local inferior-lisp-program pixie-inf-lisp-command)
  (setq-local inf-clojure-load-command "(load-file \"%s\")")
  (setq-local inf-clojure-program "pixie-vm"))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.pxi\\'" . pixie-mode))

(provide 'pixie-mode)
;;; pixie-mode.el ends here
