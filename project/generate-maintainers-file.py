#!/usr/bin/python

import argparse
import os
import sys

import yaml

YAML_PATH = os.path.dirname(__file__)
ALUMNI_INFO_FN = os.path.join(YAML_PATH, 'flux-project-alumni.yaml')
MAINTAINER_INFO_FN = os.path.join(YAML_PATH, 'flux-project-maintainers.yaml')
ROLODEX_FN = os.path.join(YAML_PATH, 'rolodex.yaml')

SLACK_INFO = {
    'flagger': 'flagger'
}

INFO_HEADER = '''The maintainers are generally available in Slack at
https://cloud-native.slack.com/messages/{slack}/ (obtain an invitation
at https://slack.cncf.io/).
'''

FLUX2_TEXT = '''
These maintainers are shared with other Flux v2-related git
repositories under https://github.com/fluxcd, as noted in their
respective MAINTAINERS files.

For convenience, they are reflected in the GitHub team
@fluxcd/flux2-maintainers -- if the list here changes, that team also
should.
'''

LIST_PIECE = '''
In alphabetical order:
'''

RETIRED1_TEXT = '''

Retired maintainers:
'''

RETIRED2_TEXT = '''

Thank you for your involvement, and let us not say "farewell" ...'''


class ProjectData():
    def __init__(self):
        self.alumni_info = yaml.safe_load(open(ALUMNI_INFO_FN).read())
        self.maintainer_info = yaml.safe_load(open(MAINTAINER_INFO_FN).read())
        self.rolodex = yaml.safe_load(open(ROLODEX_FN).read())

    def _header(self, repository):
        if repository in SLACK_INFO:
            slack = SLACK_INFO[repository]
        else:
            slack = 'flux'
        text = INFO_HEADER.format(slack=slack)

        if repository == 'flux2':
            text += FLUX2_TEXT
        return text

    def _maintainer_list(self, repository):
        text = LIST_PIECE
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
        return text

    def _alumni_list(self, repository):
        text = ""
        if repository in self.alumni_info:
            text += RETIRED1_TEXT
            for gh_handle in self.alumni_info[repository]:
                data = [a for a in self.rolodex['alumni'] if gh_handle in a]
                if not data:
                    print('«{}» not in maintainers rolodex.'.format(gh_handle), sys.stderr)
                    return None
                maintainer = data[0][gh_handle]
                text += '''
- {}'''.format(
    maintainer['name']
    )
            text += RETIRED2_TEXT
        return text

    def generate_maintainer_file_text(self, repository):
        if repository not in self.maintainer_info:
            print('«{}» not defined in fluxcd projects list.'.format(repository), sys.stderr)
            return None

        text = self._header(repository)
        text += self._maintainer_list(repository)
        text += self._alumni_list(repository)
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
