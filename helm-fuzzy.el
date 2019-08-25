;;; helm-fuzzy.el --- Fuzzy matching for helm source.  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Shen, Jen-Chieh
;; Created date 2019-08-26 00:18:09

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Fuzzy matching for helm source.
;; Keyword: fuzzy helm matching source
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.3") (helm "1.7.9") (flx "0.5"))
;; URL: https://github.com/jcs090218/helm-fuzzy

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Fuzzy matching for helm source.
;;

;;; Code:

(require 'flx)
(require 'helm)


(defgroup helm-fuzzy nil
  "Fuzzy matching for helm source."
  :prefix "helm-fuzzy-"
  :group 'convenience
  :link '(url-link :tag "Repository" "https://github.com/jcs090218/helm-fuzzy"))



(defun helm-fuzzy--helm-after-initialize-hook ()
  ""
  (with-current-buffer (get-buffer helm-buffer)
    (message "-- %s" (buffer-string)))
  )


(defun helm-fuzzy--enable ()
  "Enable `helm-fuzzy'."
  (add-hook 'helm-after-initialize-hook #'helm-fuzzy--helm-after-initialize-hook)
  )

(defun helm-fuzzy--disable ()
  "Disable `helm-fuzzy'."
  (remove-hook 'helm-after-initialize-hook #'helm-fuzzy--helm-after-initialize-hook)
  )

;;;###autoload
(define-minor-mode helm-fuzzy-mode
  "Minor mode 'helm-fuzzy-mode'."
  :lighter " HelmFuzzy"
  :group helm-fuzzy-mode
  (if helm-fuzzy-mode
      (helm-fuzzy--enable)
    (helm-fuzzy--disable)))


(provide 'helm-fuzzy)
;;; helm-fuzzy.el ends here
