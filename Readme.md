# Repo

Repo is a Minimalistic shell script that adds hooks to git repositories.

Repositories are automaticaly checked out after commiting and ready for hosting.
It's one step away from the smallest PaaS implementation you'll ever see.

## Installing

    $ git clone -q https://github.com/cmilhench/repo.git
    $ cd repo
    $ make install

or
    
    curl -s https://raw.github.com/cmilhench/repo/master/bootstrap.sh | sudo sh

or

    $ wget -qO- https://raw.github.com/cmilhench/repo/master/bootstrap.sh | sudo bash
    
## Examples

    $ repo init project

Executing this command will create a git repository `project.git` as well as a
directory structure to host the projects `source`, `logs` and `pids`.
    
  - project.git
  - project
    - /source
    - /shared
        - /logs
        - /pids
      
A git hook will also be created, that will checkout master from the git repo in
to the `project/source` directory each time a new revision is pushed.


## License
    
(The MIT License)

Copyright (c) Colin Milhench <colin@milhen.ch>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.