class base {
  include sudo
  include ssh
}

node default {
    include defaultclass
}

node 'ppclient1' {
    include base
}

node 'ppclient2' {
    include base
    include postfix
}
