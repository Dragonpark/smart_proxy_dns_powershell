require 'test_helper'
require 'smart_proxy_dns_powershell/dns_powershell_configuration'
require 'smart_proxy_dns_powershell/dns_powershell_plugin'

class DnsPowershellDefaultSettingsTest < Test::Unit::TestCase
  def test_default_settings
    Proxy::Dns::Powershell::Plugin.load_test_settings({})
    assert_equal "default_value", Proxy::Dns::Powershell::Plugin.settings.required_setting
    assert_equal "/must/exist", Proxy::Dns::Powershell::Plugin.settings.required_path
  end
end
