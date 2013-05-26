# Public: Disables 'natural' mouse scrolling. Requires re-login.
class osx::global::disable_natural_mouse_scrolling {
  boxen::osx_defaults { 'Disable natural mouse scrolling':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'boolean',
    value  => false,
    user   => $::boxen_user;
  }
}
