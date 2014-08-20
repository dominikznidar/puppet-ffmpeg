puppet-ffmpeg
=============

Simple puppet module that installs ffmpeg

Using
-----

    class { 'ffmpeg': }

The module depends on `apt` module and installs a new apt repository `ppa:jon-severinsson/ffmpeg`.
