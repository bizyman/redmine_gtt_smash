require 'redmine'

Redmine::Plugin.register :redmine_gtt_smash do
  name 'Redmine GTT SMASH plugin'
  author 'Georepublic'
  author_url 'https://github.com/georepublic'
  url 'https://github.com/gtt-project/redmine_gtt_smash'
  description 'Adds SMASH integration capabilities for GTT projects'
  version '1.0.0'

  requires_redmine :version_or_higher => '4.0.0'

  # settings default: {
  # }, partial: 'settings/gtt_smash_settings'

  project_module :gtt_smash do
    permission :view_gtt_smash, {
      smash_tags: %i( project_tags global_tags )
    }, require: :member, read: true
  end

end
