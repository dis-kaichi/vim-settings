#!/usr/bin/env python
# coding: utf-8

from unittest import TestCase
from nose.tools import ok_, eq_, raises
from nose.plugins.attrib import attr

#from test-module import test-class, test-functions

# FIXME XXXの部分は対象モジュール名か何かに変更すること
class TestXXX(TestCase):
    @classmethod
    def setup_class(cls):
        """テストの最初に1回"""
        pass

    @classmethod
    def teardown_class(cls):
        """テストの最後に1回"""
        pass

    def setUp(self):
        """各テストの前に1回"""
        pass

    def tearDown(self):
        """各テストの後に1回"""
        pass

    # ----------------------------------------
    # テスト関数
    # ----------------------------------------
    @attr(target=True)
    def test_xxx(self):
        pass

if __name__ == '__main__':
    print "OK"
