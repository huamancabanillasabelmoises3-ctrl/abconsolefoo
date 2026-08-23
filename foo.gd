extends Package
class_name FooPackage

var cnsl : ConsoleManager

func cmd_foo(args : Array) -> Variant:
     cnsl.console_output("Hola desde foo")
     return null

func _receive_package_data(data : Dictionary) -> bool:
    if not data:
        print("Can't get data package\
 from foo package")
        return false
    var pkg_data = data
    cnsl = pkg_data.console_manager

func _get_command() -> Dictionary:
    return {
        "foo": {
            "func" : cmd_foo,
            "args" : 2,
            "raw" : [0]
        }
    }

func _package_ready() -> void:
    print("si funciona wey")
