[![Build Status](https://travis-ci.com/jcs090218/helm-fuzzy.svg?branch=master)](https://travis-ci.com/jcs090218/helm-fuzzy)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


# helm-fuzzy
> Fuzzy matching for helm source.


<p align="center">
  <img src="./screenshot/demo.gif"/>
</p>


## Featuers

* Work with all `helm` source.
* Decouple from `helm-source`.


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


## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
