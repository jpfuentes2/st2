# Sublime Text 2 CLI management

st2 lets you easily create new Sublime projects and switch between them. It's simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well.

st2 was forked and inspired from [rbenv][]. Thanks, Sam!

## Table of Contents

* [How It Works](#how-it-works)
* [Installation](#installation)
  * [Basic GitHub Checkout](#basic-github-checkout)
    * [Upgrading](#upgrading)
  * [Homebrew on Mac OS X](#homebrew-on-mac-os-x)
* [Usage](#usage)
  * [st2 open](#st2-open)
  * [st2 project](#st2-project)
  * [st2 projects](#st2-projects)
* [Development](#development)
  * [Version History](#version-history)
  * [License](#license)

## How It Works ##

st2 operates on the per-user directory `~/.st2`. Project settings are stored in `~/.st2/projects`.

## Installation ##

If you're on Mac OS X, consider
[installing with Homebrew](#homebrew-on-mac-os-x).

### Basic GitHub Checkout ###

This will get you going with the latest version of st2 and make it
easy to fork and contribute any changes back upstream.

1. Check out st2 into `~/.st2`.

    ~~~ sh
    $ git clone git://github.com/jpfuentes2/st2.git ~/.st2
    ~~~

2. Add `~/.st2/bin` to your `$PATH` for access to the `st2`
   command-line utility.

    ~~~ sh
    $ echo 'export PATH="$HOME/.st2/bin:$PATH"' >> ~/.bash_profile
    ~~~

    **Zsh note**: Modify your `~/.zshenv` file instead of `~/.bash_profile`.

    **Ubuntu note**: Ubuntu uses `~/.profile` for enabling certain path
    changes. This file won't be read if you create a `~/.bash_profile`.
    Therefore, it's recommended that you add this line and the one in
    point 3 below to your `~/.profile`. This has the added advantage
    of working under both bash and zsh.

3. Add `st2 init` to your shell to enable shims and autocompletion.

    ~~~ sh
    $ echo 'eval "$(st2 init -)"' >> ~/.bash_profile
    ~~~

    **Zsh / Ubuntu note**: Same as above.

4. Restart your shell as a login shell so the path changes take effect.
    You can now begin using st2.

    ~~~ sh
    $ exec $SHELL -l
    ~~~

#### Upgrading ####

If you've installed st2 manually using git, you can upgrade your
installation to the cutting-edge version at any time.

~~~ sh
$ cd ~/.st2
$ git pull
~~~

### Homebrew on Mac OS X ###

You can also install st2 using the [Homebrew][] on Mac OS X.

~~~
$ brew update
$ brew install st2
~~~

To later update these installs, use `upgrade` instead of `install`.

Afterwards you'll still need to add `eval "$(st2 init -)"` to your
profile as stated in the caveats. You'll only ever have to do this
once.

## Usage ##

Like `git`, the `st2` command delegates to subcommands based on its
first argument. The most common subcommands are:

### st2 open ###

Opens an existing project or file/directory.

    $ st2 open /path/to/code
    $ st2 open my_project

### st2 project ###

Creates a new Sublime Text 2 project where the first argument is the name and all subsequent arguments are directories included in the project.

    $ st2 project awesome_project /path/to/code /path/to/more/code

### st2 projects ###

Lists all projects defined through st2.

    $ st2 projects

## Development ##

The st2 source code is [hosted on
GitHub](https://github.com/jpfuentes2/st2). It's clean, modular,
and easy to understand, even if you're not a shell hacker.

Please feel free to submit pull requests and file bugs on the [issue
tracker](https://github.com/jpfuentes2/st2/issues).

### Version History ###

**0.1.0** (August 11, 2011)

* Initial public release.

### License ###

(The MIT license)

Copyright (c) 2011 Sam Stephenson

Copyright (c) 2012 Jacques Fuentes

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

  [homebrew]: http://mxcl.github.com/homebrew/
  [rbenv]: https://github.com/sstephenson/rbenv
