// Create a Foo.
let foo = Foo.with { $0.name = "Foo" }

// Serialize it.
let data = try foo.serializedData()

// Print the bytes.
print("Protobuf data is: \([UInt8](data))")

// Create another Foo.
let newFoo = try Foo(serializedData: data)

// Print its name.
print(newFoo.name)
