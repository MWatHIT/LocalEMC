class plone {

  package { "development tools":
    ensure => present,
  }
  package { "python-devel":
    ensure => present,
  }
  package { "libjpeg-devel":
    ensure => present,
  }
  package { "libxml2-devel":
    ensure => present,
  }
  package { "libxslt-devel":
    ensure => present,
  }
  package { "git":
    ensure => present,
  }
  package { "zlib-devel":
    ensure => present,
  }
  package { "openssl-devel":
    ensure => present,
  }

  # Optional packages to enable indexing of office/pdf docs
  package { "wv":
    ensure => present,
  }
  package { "poppler-utils":
    ensure => present,
  }

  # used for creating a PuTTy-compatible key file
  package { "putty-tools":
    ensure => present,
  }

}

include plone
