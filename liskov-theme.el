;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;;
;; Liskov: An dark color theme
;; @author: Andres Urbano Guillermo Gerardo.
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme liskov
  "An cool dark color theme :D")

(let ((liskov-background      "#000000")
      (liskov-foreground      "#d6d6d6")
      (liskov-mid-gray        "#666666")
      (liskov-black           "#000000")
      (liskov-white           "#FFFFFF")
      (liskov-off-white       "#F8F8F0")
      (liskov-light-gray-blue "#d0dfe6")
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      (liskov-light-blue     "#A4D1F2")
      (liskov-comment-white     "#EFFBFF")
      (liskov-light-yellow    "#FFF8DC")
      (liskov-light-purple    "#CAB4CC")
      (liskov-light-green    "#BCEDDE")
      (liskov-light-orange    "#FFDAB5")
      (liskov-region-yellow    "#FFFDD5")
      (liskov-region-letter    "#525252")
      (liskov-linum-yellow    "#F3EFDE")
      (liskov-mode-line-black      "#000000")
      (liskov-mode-line-white      "#EFFBFF")
      )
  
  (custom-theme-set-faces
   'liskov

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,liskov-background :foreground ,liskov-foreground))))
   `(cursor  ((t (:background ,liskov-light-blue))))
   `(hl-line ((t (:background ,liskov-mid-gray))))
   ;; Mode-line
   `(modeline ((t (:background ,liskov-mode-line-black :foreground ,liskov-mode-line-white))))
   `(mode-line-inactive ((t (:box nil :background ,liskov-mid-gray :foreground ,liskov-light-gray-blue))))
   `(mode-line ((t (:box nil :foreground ,liskov-mode-line-white :background ,liskov-mode-line-black))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,liskov-white))))
   ;; Highlight region color
   `(region ((t (:foreground ,liskov-region-letter :background ,liskov-region-yellow))))
   `(fringe ((t (:background ,liskov-black))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtin
   '(font-lock-builtin-face ((t (:foreground "#A4D1F2")))) ;azul claro
   ;; Comments
   '(font-lock-comment-face ((t (:foreground "#EFFBFF")))) ; Comentarios de en linea blanco
   '(font-lock-doc-face ((t (:foreground "#EFFBFF")))) ;Docsting gris chido #9FB3C2 or verde chido #86B187 o verde con un tono poco nitido #8AB8A2.
   ;; Function names
   '(font-lock-function-name-face ((t (:foreground "#FFF8DC")))) ;Funcion names:  amarillo
   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#FFF8DC" :weight normal)))) ; keyword;  amariilas
   ;; Strings
   '(font-lock-string-face ((t (:foreground "#CAB4CC")))) ;Cadenas; moradas
   ;; Variables
   '(font-lock-variable-name-face ((t (:foreground "#BCEDDE")))) ;Color: verde claro
   '(font-lock-type-face ((t (:foreground "#FFDAB5")))) ; Clases y types:  naranjas
   ;; Constant
   '(font-lock-constant-face ((t (:foreground "#BCEDDE")))) ;Contastantes: verde claro   

                                        ; Highlight linum color
   '(linum ((t (:inherit (shadow default) :background "#000000" :foreground "#F3EFDE"))))         

                                        ;Company
   '(company-preview ((t (:background "#373B41" :foreground "wheat"))))
   '(company-preview-common ((t (:inherit company-preview :foreground "wheat"))))
   '(company-tooltip-common ((t (:foreground "#FFFDD5")))) ;Color de las letras en coincidencia en pop
   '(company-tooltip-selection ((t (:background "#7B7B7B")))) ;Color de seleccion resaltado.
   '(company-tooltip ((t (:background "#000000" :foreground "#C5C8C6")))) ;Color fondo y letra
   '(company-scrollbar-bg ((t (:background "#282A2E")))) ;Color de scrollbar
   '(company-scrollbar-fg ((t (:background "#373B41"))))
   '(company-tooltip-annotation ((t (:foreground "#F0DFAF"))))

                                        ;Helm
   '(helm-source-header ((t (:extend t :foreground "#F0DFAF" :weight bold))))
   '(helm-match ((t (:extend t :foreground "#FFFDD5"))))
   '(helm-selection ((t (:extend t :background "gray37" :distant-foreground "black"))))

   '(helm-ff-directory ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-ff-dotted-directory ((t (:extend t :foreground "#d6d6d6"))))

                                        ;Tabs
   '(tab-bar ((t (:inherit variable-pitch :background "#000000" :foreground "#FFDAB5"))))
   '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#000000" :foreground "#d6d6d6")))) 

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,liskov-off-white :foreground ,liskov-background))))

                                        ;Powerline
   '(mode-line ((t (:background "#000000" :foreground "#EFFBFF" :box nil))))
   
   )

)



;;;###Autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'liskov)

;; Local Variables:
;; no-byte-compile: t
;; End:
