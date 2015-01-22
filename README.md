[![License GPL 3][badge-license]][copying]
# Pixie Mode

A major mode for the [Pixie programming language] built on top of
[clojure-mode] and providing sane defaults for REPL interaction via
[inf-clojure].

## Installation

Available via MELPA through `package.el`. Install with:

<kbd>M-x package-install [RET] pixie-mode [RET]</kbd>

If you want to interact with the REPL, add this line to your emacs
configuration:

```el
(add-hook 'pixie-mode-hook #'inf-clojure-minor-mode)
```

and ensure that pixie-vm is available on your path.

## Usage
### Launching a REPL

Use `M-x inf-clojure` or `C-c C-z` within a Pixie source file, as you
would if you were to use [inf-clojure] with Clojure.

## Shortcuts and Commands

The following commands from inf-clojure work in pixie-mode:

Keyboard Shortcut    | Command
---------------------|----------------------------
<kbd>C-x C-e</kbd>   | inf-clojure-eval-last-sexpr
<kbd>M-C-x</kbd>     | inf-clojure-eval-defun 
<kbd>C-x C-e</kbd>   | inf-clojure-eval-last-sexp
<kbd>C-c C-e</kbd>   | inf-clojure-eval-defun
<kbd>C-c C-r</kbd>   | inf-clojure-eval-region
<kbd>C-c C-n</kbd>   | inf-clojure-eval-form-and-next
<kbd>C-c C-p</kbd>   | inf-clojure-eval-paragraph
<kbd>C-c C-z</kbd>   | inf-clojure-switch-to-repl
<kbd>C-c C-l</kbd>   | inf-clojure-load-file
<kbd>C-c C-v</kbd>   | inf-clojure-show-var-documentation
<!--
<kbd>C-c C-i</kbd>   | inf-clojure-show-ns-vars
<kbd>C-c C-A</kbd>   | inf-clojure-apropos
<kbd>C-c C-m</kbd>   | inf-clojure-macroexpand
<kbd>C-c C-a</kbd>   | inf-clojure-show-arglist
<kbd>C-c C-s</kbd>   | inf-clojure-show-var-source
<kbd>C-c M-n</kbd>   | inf-clojure-set-ns
-->

## License
   Copyright © 2015 John Walker and [contributors][]. Licensed under GPLv3.

[badge-license]: https://img.shields.io/badge/license-GPL_3-green.svg
[contributors]: https://github.com/johnwalker/pixie-mode/contributors
[COPYING]: http://www.gnu.org/copyleft/gpl.html
[Pixie programming language]: https://github.com/pixie-lang/pixie
[inf-clojure]: https://github.com/clojure-emacs/inf-clojure
[clojure-mode]: https://github.com/clojure-emacs/clojure-mode