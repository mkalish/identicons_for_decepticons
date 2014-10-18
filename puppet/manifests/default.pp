include 'scala'

exec { "apt-get update":
    path => "/usr/bin"
}

package { 'maven':
    ensure => latest
}

package { 'jdk':
    ensure => installed,
    name => 'openjdk-7-jdk'
}

file { "/etc/environment":
    content => inline_template("JAVA_OPTS=-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M")
}
