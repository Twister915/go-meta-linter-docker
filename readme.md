# Go Meta Linter Docker Image

[![Build Status](https://travis-ci.org/Twister915/go-meta-linter-docker.svg?branch=master)](https://travis-ci.org/Twister915/go-meta-linter-docker)

This is a pretty simple image that can be used like this:

```
docker run -it -w /code -v $PWD:/code --rm twister915/go-meta-linter
```

The tools are placed in `/linter-tools` (which is appended to `PATH` for you), so make sure you avoid overwriting them.
