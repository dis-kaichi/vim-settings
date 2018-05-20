#!/usr/bin/env python
# coding: utf-8
import argparse
import os

def _create_parser():  # Parserの作成
    parser = argparse.ArgumentParser()
    #parser.add_argument('-c', '--config', help='Config file.(.vimrc)')
    #parser.add_argument('files', nargs='*', default=[], help='Files to open.')
    parser.add_argument('version', default=2, help='Python Version.')
    # Option追加
    #for dic in _create_options():
    #    parser.add_argument(
    #        '-%s' % (dic.get('short')),
    #        '--%s' % (dic.get('type')),
    #        action=dic.get('action'),
    #        help=dic.get('help'))
    return parser



if __name__ == '__main__':
    parser = _create_parser()
    args = parser.parse_args()

    if args.version == "3":
        first_bin = "python3.5"
        second_bin = "python2.7"
    else:
        first_bin = "python2.7"
        second_bin = "python3.5"
    exec_cmds = ["sudo update-alternatives --install /usr/bin/python python /usr/bin/{0} 1".format(first_bin),
                 "sudo update-alternatives --install /usr/bin/python python /usr/bin/{0} 2".format(second_bin)]
    # 起動
    for cmd in exec_cmds:
        os.system(cmd)

