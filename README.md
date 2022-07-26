> 📢 Maintainer wanted
>
> This project is looking for maintainers, please open up an issue if you would love to chime in!

[![MELPA](https://melpa.org/packages/helm-fuzzy-badge.svg)](https://melpa.org/#/helm-fuzzy)
[![MELPA Stable](https://stable.melpa.org/packages/helm-fuzzy-badge.svg)](https://stable.melpa.org/#/helm-fuzzy)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# helm-fuzzy
> Fuzzy matching for helm source.

[![CI](https://github.com/jcs-elpa/helm-fuzzy/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-elpa/helm-fuzzy/actions/workflows/test.yml)

## Featuers

* Work with all `helm` source.
* Decouple from `helm-source`.
* Uses [flx](https://github.com/lewang/flx).

## Differences from other alternatives

* [helm-flx](https://github.com/PythonNut/helm-flx)
  * Doesn't work for sources that don't already support fuzzy matching
* [helm-fuzzier](https://github.com/EphramPerdition/helm-fuzzier)
  * Only enhance matching for sources that have fuzzy-matching enabled
* [helm-fuz](https://github.com/cireu/fuz.el)
  * Uses [fuz.el](https://github.com/cireu/fuz.el).

## Usage

To enable this by putting these line of codes to your configuration.
```el
(require 'helm-fuzzy)
(with-eval-after-load 'helm
  (helm-fuzzy-mode 1))
  ```

If you use `use-package`, you can put these line of codes instead.
```el
(use-package helm-fuzzy
  :init
  (with-eval-after-load 'helm
    (helm-fuzzy-mode 1)))
```

### Inhibit fuzzy matching

You might don't want to fuzzy match some of the action. You can customize 
`helm-fuzzy-not-allow-fuzzy` variable adding or removing the helm 
buffer name.

```el
(setq helm-fuzzy-not-allow-fuzzy '("*helm-ag*"))
```

## Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
