# PyPi mirror/upload/test/staging

As stated by their authors [`devpi`][devpi] isn't only PyPi mirror, it can also
be used to:

* uploading, testing and staging
* index inheritance
* web interface and search
* replication
* jenkins integration

More details about it's usage can be seen in [devpi documentation][devpi-docs]

## Usage

This image exposes the port `3141` from where PyPi mirror can be accessed.
Besides that, the volume `/devpi/server` is expected to be available, this is
the path where all files from the mirror are served.

To start a server instance one can simply:

```bash
docker run -i -t --rm joaodubas/devpi
```

And this will start devpi server with all the needed defaults.

[devpi]: https://pypi.python.org/pypi/devpi
[devpi-docs]: http://doc.devpi.net/latest/
