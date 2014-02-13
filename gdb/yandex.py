import gdb
import gdb.printing
import re


class StrokaPrinter:
    def __init__(self, val):
        self.val = val
    def to_string(self):
        return self.val["p"]
    def display_hint(self):
        return "string"

class YtEnumBasePrinter:
    def __init__(self, val):
        self.val = val
    def to_string(self):
        return self.val["Value"]


def ya_printer():
    pp = gdb.printing.RegexpCollectionPrettyPrinter("yandex")
    pp.add_printer("Stroka", r"^Stroka$", StrokaPrinter)
    pp.add_printer("YtEnumBase", r"^NYT::TEnumBase<", YtEnumBasePrinter)
    return pp


def ya_register(obj):
    gdb.printing.register_pretty_printer(obj, ya_printer())

