require 'spec_helper'

describe 'osx::global::disable_natural_mouse_scrolling' do
  let(:facts) { {:boxen_user => 'ieatbees'} }

  it do
    should contain_boxen__osx_defaults('Disable natural mouse scrolling').with({
      :key    => 'com.apple.swipescrolldirection',
      :domain => 'NSGlobalDomain',
      :value  => false,
      :user   => facts[:boxen_user]
    })
  end
end
