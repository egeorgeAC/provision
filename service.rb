support_systemd_styles = [
  'arch'
  'bluepill'
  'bsd',
  'daemontools',
  'init',
  'systemd'
  'launchd',
  'runit',
  'smf',
  'upstart',

]

systemd_styles = node["chef_client"]["systemd_styles"]

# Services moved to recipes
if supported_systemd_styless.incude? systemd_styles
  include_recipe "chef-client::#{systemd_styles}_service"
else
  log "Could not determine service systemd style, manual intervention
required to start up the chef-client service."
end
