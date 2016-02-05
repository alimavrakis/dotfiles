<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#orgheadline5">1. dotfiles</a>
<ul>
<li><a href="#orgheadline4">1.1. A repository of configuration files optimized for FactSet Engineering environments</a>
<ul>
<li><a href="#orgheadline3">1.1.1. Quick Start</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

# dotfiles<a id="orgheadline5"></a>

## A repository of configuration files optimized for FactSet Engineering environments<a id="orgheadline4"></a>

### Quick Start<a id="orgheadline3"></a>

1.  Upgrade your software

    In the process of setting up my environment I've installed a few dependencies into my `local/bin/` dir add the following line to your `.profile-user` to bootstrap the setup process:
    `export PATH=home/user/amavrakis/local/bin/:$PATH`

2.  GNU Stow

    GNU stow is a simple utility to make configuration file management easier
