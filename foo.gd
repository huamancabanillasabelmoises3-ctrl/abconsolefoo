extends Package
class_name FooPackage

var cnsl : ConsoleManager

func _receive_package_data(data : Dictionary) -> bool:
    if not data:
        print("Can't get data package from foo package")
        return false
    var pkg_data = data
    cnsl = pkg_data.console_manager

func _get_command() -> Dictionary:
    return {
        "foo" = {
            "func" : foo_bar,
            "args" : 2,
            "raw" : [0]
        }
    }

