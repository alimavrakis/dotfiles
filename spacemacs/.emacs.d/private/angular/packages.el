;;; packages.el --- angular layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Ali Mavrakis <amavrakis@fxdeva11.factset.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `angular-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `angular/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `angular/pre-init-PACKAGE' and/or
;;   `angular/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst angular-packages
  '(angular-mode
    ))

(defun angular/init-angular-mode ()
  "Initialize my package"
  (use-package angular-mode)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . angular-mode))
  )

;;; packages.el ends here
