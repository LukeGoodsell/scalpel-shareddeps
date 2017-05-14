# scalpel-shareddeps

This is a repository for a fork of the scalpel indel caller that uses shared site installations of its dependencies rather than packaged static versions.

For the original scalpel indel caller, please go to [http://scalpel.sourceforge.net/](http://scalpel.sourceforge.net/).

## Introduction

### What is Scalpel?

Scalpel is a DNA micro-assembly pipeline for detecting 
INDEL (INsertion and DEletion) mutations in Next-Generation Sequencing (NGS) data.

### What is Scalpel-SharedDeps?

Scalpel has a number of dependencies (executable binaries, Perl modules ...), which the original codebase includes statically-linked. In environments that have those dependencies already, sometimes with optimisations for the specific environment, it is preferable to use those shared, site installations of the dependencies. Scalpel-SharedDeps is a fork of the original Scalpel repo that does not include its dependencies, instead using shared installations of them.

## Dependencies

To run scalpel, you will need:

* Bamtools >= 2.3.0
* BCFtools >= 1.1
* Samtools >= 1.1
* Microassembler
* Perl modules:
    * Parallel::ForkManager
    * Text::NSP
    * MLDBM

## Installation

1. Clone/extract this repository to your desired installation directory ("*[SCALPEL_BASE]*").

2. Add *[SCALPEL_BASE]*/lib/perl to your PERL5LIB environment variable. E.g.:

    ```
    export PERL5LIB=$PERL5LIB:[SCALPEL_BASE]/lib/perl
    ```
    You may also wish to add the above line to your ~/.bashrc file to automatically run in all new shells.

3. Add *[SCALPEL_BASE]*/bin to your PATH environment variable. E.g.:

    ```
    export PATH=$PATH:[SCALPEL_BASE]/bin
    ```
    You may also wish to add the above line to your ~/.bashrc file to automatically run in all new shells.

## Usage

See included file MANUAL for details.

## License

Scalpel is released under the MIT License.
Copyright (c) 2013-2014 Giuseppe Narzisi and Michael C. Schatz

Modifications to Scalpel to enable it to use shared dependencies are released under the same license.
Copyright (c) 2017 Luke Goodsell.

See included file LICENSE for details.

## Contact

If you have questions, comments, suggestions, bug reports, etc. about this Scalpel-SharedDeps fork, please use the issue-tracking functionality in the [GitHub repo](https://github.com/LukeGoodsell/scalpel-shareddeps).

If you have questions, comments, suggestions, bug reports, etc. about Scalpel please send them to:

Giuseppe Narzisi 
New York Genome Center
Email: gnarzisi@nygenome.org
Project Website: [http://sourceforge.net/projects/scalpel/](http://sourceforge.net/projects/scalpel/)

