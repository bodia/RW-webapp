# -*- coding: utf-8 -*-

"""
mekk. namespace.
"""

# See http://peak.telecommunity.com/DevCenter/setuptools#namespace-packages
try:
    __import__('pkg_resources').declare_namespace(__name__)
except ImportError:
    from pkgutil import extend_path
    #noinspection PyUnboundLocalVariable
    __path__ = extend_path(__path__, __name__)
