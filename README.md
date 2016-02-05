<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#orgheadline7">1. dotfiles</a>
<ul>
<li><a href="#orgheadline6">1.1. Quick Start</a>
<ul>
<li><a href="#orgheadline1">1.1.1. Clone this repository</a></li>
<li><a href="#orgheadline4">1.1.2. Upgrade your software</a></li>
<li><a href="#orgheadline5">1.1.3. GNU Stow</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

# dotfiles<a id="orgheadline7"></a>

A repository of configuration files optimized for FactSet Engineering environments

## Quick Start<a id="orgheadline6"></a>

### Clone this repository<a id="orgheadline1"></a>

`$ git clone git@gitlab.factset.com:amavrakis/dotfiles.git =~=`

### Upgrade your software<a id="orgheadline4"></a>

1.  Quick Upgrade `[not recommended]`

    In the process of setting up my environment I've installed a few dependencies into my `local/bin/` dir add the following line to your `.profile-user` to bootstrap the setup process:
    `export PATH=home/user/amavrakis/local/bin/:$PATH`

2.  Custom Upgrade

    It is recommended that you check out all of the software in that directory and install them one by one by adding them to your path or installing them from source.
    `export PATH=home/user/amavrakis/local/bin/emacs:$PATH`
    `export PATH=home/user/amavrakis/local/bin/git:$PATH`
    If you wish to install software from source, most likely you will need to prefix the configuration with a flag&#x2026;something like this:
    `$ ./configure --prefix=/home/user/amavrakis/local/`

### GNU Stow<a id="orgheadline5"></a>

GNU stow is a simple utility to make configuration file management easier. If you want to use a configuration in this directory and you have stow installed or you've sourced my `local/bin/` directory, follow the steps below to quickly soft link these files into your home dir.
