<!-- markdownlint-disable MD033 -->
<!-- markdownlint-disable MD041 -->

<h1 align="center">
  Derongi
</h1>

<div align="center">
  <strong>
    Project-specific ".gitignore" generator. 🏜
  </strong>
</div>

## Usage

```shell
$ derongi generate Nim MacOS
Fetch github.com/gitignore/gitignore/Nim.gitignore
Fetch github.com/gitignore/gitignore MacOS.gitignore

Blending...
Generated .gitignore !

$ cat .gitignore
### https://raw.github.com/github/gitignore/499ae899e7b54e701e878759f73d9092302fd07a/Nim.gitignore

nimcache/

### https://raw.github.com/github/gitignore/499ae899e7b54e701e878759f73d9092302fd07a/Global/macOS.gitignore

# General
.DS_Store
.AppleDouble
.LSOverride

...
```
