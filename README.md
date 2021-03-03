# Redmine GTT S.M.A.S.H Plugin

![CI #develop](https://github.com/gtt-project/redmine_gtt_smash/workflows/Test%20with%20Redmine/badge.svg)

The Geo-Task-Tracker (GTT) S.M.A.S.H plugin adds support for the mobile app [S.M.A.S.H](https://github.com/moovida/smash):

- Authenticate from S.M.A.S.H with a Redmine account
- Upload mobile notes as issues
- Retreive custom notes configurations
- and more ...

## Requirements

Redmine GTT S.M.A.S.H **requires PostgreSQL/PostGIS** and will not work with SQLite or MariaDB/MySQL!!!

- Redmine >= 4.0.0
- [redmine_gtt](https://github.com/gtt-project/redmine_gtt/) plugin

## Installation

To install Redmine GTT S.M.A.S.H plugin, download or clone this repository in your Redmine installation plugins directory!

```
cd path/to/plugin/directory
git clone https://github.com/gtt-project/redmine_gtt_smash.git
```

Then run

```
bundle install
bundle exec rake redmine:plugins:migrate
```

After restarting Redmine, you should be able to see the Redmine GTT plugin in the Plugins page.

More information on installing (and uninstalling) Redmine plugins can be found here: http://www.redmine.org/wiki/redmine/Plugins

## How to use

- Make sure REST web services is enabled: http://localhost:3000/settings?tab=api
- Enable the plugin in project settings

The Geo-Task-Tracker (GTT) S.M.A.S.H plugin is connects the S.M.A.S.H mobile app with Redmine GTT. It provides a new API endpoint to provide the tracker type configuration as custom notes. 

```
http://localhost:3000/projects/<project-id>/smash_tags.json
```

Example output for tracker type `Support`:

```
  {
    "sectionname": "Support",
    "sectiondescription": "",
    "sectionicon": "image",
    "forms": [
      {
        "formname": "Support",
        "formitems": [
          {
            "key": "project_id",
            "value": "1",
            "type": "hidden",
            "mandatory": "yes"
          },
          {
            "key": "tracker_id",
            "value": "3",
            "type": "hidden",
            "mandatory": "yes"
          },
          {
            "key": "subject",
            "label": "Subject",
            "value": "",
            "type": "string",
            "mandatory": "yes"
          },
          {
            "key": "priority_id",
            "label": "Priority",
            "values": {
              "items": [
                {
                  "item": "Low"
                },
                {
                  "item": "Normal"
                },
                {
                  "item": "High"
                },
                {
                  "item": "Urgent"
                },
                {
                  "item": "Immediate"
                }
              ]
            },
            "value": "Normal",
            "type": "stringcombo",
            "mandatory": "yes"
          },
          {
            "key": "is_private",
            "label": "Private",
            "type": "boolean",
            "mandatory": "yes"
          },
          {
            "key": "description",
            "label": "Description",
            "value": "",
            "type": "string"
          },
          {
            "key": "attachments",
            "value": "",
            "type": "pictures"
          }
        ]
      }
    ]
  }
]
```

## Contributing and Support

The GTT Project appreciates any [contributions](https://github.com/gtt-project/.github/blob/main/CONTRIBUTING.md)! Feel free to contact us for [reporting problems and support](https://github.com/gtt-project/.github/blob/main/CONTRIBUTING.md).

## Version History

See [all releases](https://github.com/gtt-project/redmine_gtt_smash/releases) with release notes.

## Authors

- [Ko Nagase](https://github.com/sanak)
- ... [and others](https://github.com/gtt-project/redmine_gtt_smash/graphs/contributors)

## LICENSE

This program is free software. See [LICENSE](LICENSE) for more information.

