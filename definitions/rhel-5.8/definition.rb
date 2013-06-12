require File.dirname(__FILE__) + "/../.rhel/session.rb"

iso = "rhel-server-5.8-x86_64-dvd.iso"

session =
  RHEL_SESSION.merge(
    { 
      :iso_file => iso,
      :iso_md5 => "e55f3a142ce6d36e8061be45f72b3c17",
      :iso_src => "file:///Volumes/usb500/#{iso}" 
    }
  )

Veewee::Session.declare session
