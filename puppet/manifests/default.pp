exec { "apt-get update":
    path => "/usr/bin"
}

package { 'scala':
    ensure => latest
}

package { 'maven':
    ensure => latest
}

package { 'jdk':
    ensure => installed,
    name => 'openjdk-7-jdk'
}
