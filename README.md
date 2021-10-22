# CommandLineTool

a test application to play with swift on linux.
build using [this tutorial](https://www.swiftbysundell.com/articles/building-a-command-line-tool-using-the-swift-package-manager)
it demonstrates a lot of interesting concepts like having a proper project structure to allow for testing, or how to add dependencies.

## reminder for me

```bash
# create project
$ mkdir CommandLineTool
$ cd CommandLineTool
$ swift package init --type executable
```

```bash
# update project dependcies
$ swift package update
```

```bash
# release build 
$ swift build -c release
$ cd .build/release
$ cp -f CommandLineTool /usr/local/bin/commandlinetool
```
