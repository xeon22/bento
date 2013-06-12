require File.dirname(__FILE__) + "/../.rhel/session.rb"

iso = "rhel-server-6.4-x86_64-dvd.iso"

session =
  RHEL_SESSION.merge(
    { 
      :boot_cmd_sequence => [ 
        '<Esc>',
        'linux text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
      ],
      :memory_size=> '512',
      :iso_file => iso,
      :iso_md5 => "467b53791903f9a0c477cbb1b24ffd1f",
      :iso_src => "file:///Volumes/usb500/#{iso}" 
    }
  )

  Veewee::Session.declare session
