require File.dirname(__FILE__) + "/../.rhel/session.rb"

iso = "rhel-server-6.3-x86_64-dvd.iso"

session =
  RHEL_SESSION.merge(
    { 
      :iso_file => iso,
      :iso_md5 => "bb1f755b8240e34f120b4c988db67a66",
      :iso_src => "file:///Volumes/usb500/#{iso}" 
    }
  )

  Veewee::Session.declare session
