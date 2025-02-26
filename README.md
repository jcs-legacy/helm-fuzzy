**📢 Maintainer wanted This project is looking for maintainers, please open up an issue if you would love to chime in!**

---

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![MELPA](https://melpa.org/packages/helm-fuzzy-badge.svg)](https://melpa.org/#/helm-fuzzy)
[![MELPA Stable](https://stable.melpa.org/packages/helm-fuzzy-badge.svg)](https://stable.melpa.org/#/helm-fuzzy)

# helm-fuzzy
> Fuzzy matching for helm source.

[![CI](https://github.com/jcs-legacy/helm-fuzzy/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-legacy/helm-fuzzy/actions/workflows/test.yml)

## 🏆 Featuers

- Work with all `helm` source.
- Decouple from `helm-source`.
- Uses [flx](https://github.com/lewang/flx).

## ❓ Differences from other alternatives

* [helm-flx](https://github.com/PythonNut/helm-flx)
  * Doesn't work for sources that don't already support fuzzy matching
* [helm-fuzzier](https://github.com/EphramPerdition/helm-fuzzier)
  * Only enhance matching for sources that have fuzzy-matching enabled
* [helm-fuz](https://github.com/cireu/fuz.el)
  * Uses [fuz.el](https://github.com/cireu/fuz.el).

## 🔧 Usage

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

## 🛠️ Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

### 🔬 Development

To run the test locally, you will need the following tools:

- [Eask](https://emacs-eask.github.io/)
- [Make](https://www.gnu.org/software/make/) (optional)

Install all dependencies and development dependencies:

```sh
eask install-deps --dev
```

To test the package's installation:

```sh
eask package
eask install
```

To test compilation:

```sh
eask compile
```

**🪧 The following steps are optional, but we recommend you follow these lint results!**

The built-in `checkdoc` linter:

```sh
eask lint checkdoc
```

The standard `package` linter:

```sh
eask lint package
```

*📝 P.S. For more information, find the Eask manual at https://emacs-eask.github.io/.*

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE.txt) for details.
