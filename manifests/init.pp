class ffmpeg {
  include 'apt'

  apt::ppa { 'ppa:jon-severinsson/ffmpeg': }

  package { 'ffmpeg':
    ensure  => 'present',
    require => Apt::Ppa['ppa:jon-severinsson/ffmpeg'],
  }

  file { '/usr/share/ffmpeg/libx264-medium.ffpreset':
    ensure  => $ensure,
    source  => 'puppet:///modules/ffmpeg/libx264-medium.ffpreset',
    require => Package['ffmpeg'],
  }
}
