;;; create-plantuml-dev-package.el --- create an elpa archive of the plantuml-mode project  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  René Schmelzer

;; Author: René Schmelzer <rene.schmelzer@posteo.de>
;; Keywords: lisp, tools

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

;; This small script will create a local elpa archive for development purposes.
;; The archive will be put in "./dist". That location might be added to
;; `package-archive' as a local archive.
;; So, the latest plantuml-mode.el version can be installed like any
;; other package via the packaging system.
;;
;; Note: this is just for local convenience when developing. The official
;; procedure is to distribute via Melpa by the maintainer.

;;; Code:

(require 'package-x)
(setq package-archive-upload-base "./dist")
(package-upload-file "./plantuml-mode.el")

;; create-plantuml-dev-package.el ends here
