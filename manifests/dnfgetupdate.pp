class dnfgetupdate {

  # This apt-get update below is meant to ward
  # off "Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?"
  # errors.
  exec { 'dnf update':
    command => 'sudo /usr/bin/dnf update',
    # unless => "sudo /usr/bin/test -d Plone"
  }

}

include dnfgetupdate
