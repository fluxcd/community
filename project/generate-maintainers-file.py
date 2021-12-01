#!/usr/bin/python

import argparse
import os
import sys

import yaml

YAML_PATH = os.path.dirname(__file__)
MAINTAINER_INFO_FN = os.path.join(YAML_PATH, 'flux-project-maintainers.yaml')
ROLODEX_FN = os.path.join(YAML_PATH, 'rolodex.yaml')

INFO_HEADER = '''The maintainers are generally available in Slack at
https://cloud-native.slack.com in #flux (https://cloud-native.slack.com/messages/CLAJ40HV3)
(obtain an invitation at https://slack.cncf.io/).

In alphabetical order:
'''

class ProjectData():
    def __init__(self):
        self.maintainer_info = yaml.safe_load(open(MAINTAINER_INFO_FN).read())
        self.rolodex = yaml.safe_load(open(ROLODEX_FN).read())

    def generate_maintainer_file_text(self, repository):
        if repository not in self.maintainer_info:
            print('«{}» not defined in fluxcd projects list.'.format(repository), sys.stderr)
            return None

        text = INFO_HEADER
        for gh_handle in self.maintainer_info[repository]:
            data = [a for a in self.rolodex['maintainers'] if gh_handle in a]
            if not data:
                print('«{}» not in maintainers rolodex.'.format(gh_handle), sys.stderr)
                return None
            maintainer = data[0][gh_handle]
            text += '''
{}, {} <{}> (github: @{}, slack: {})'''.format(
    maintainer['name'], maintainer['affiliation'], maintainer['email'],
    gh_handle, maintainer['slack']
    )
        text += '\n'
        return text


def main():
    parser = argparse.ArgumentParser(description='Print MAINTAINERS file for given repository.')
    parser.add_argument('repository', type=str, help='repository name')
    parser.add_argument('-o', '--file', type=str, help='MAINTAINERS file location')
    args = parser.parse_args()

    project = ProjectData()
    text = project.generate_maintainer_file_text(args.repository)
    if not text:
        sys.exit(0)

    if not args.file:
        args.file = os.path.join(YAML_PATH, '../MAINTAINERS')
    open(args.file, 'w').write(text)


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Aborted.', sys.stderr)
        sys.exit(1)
