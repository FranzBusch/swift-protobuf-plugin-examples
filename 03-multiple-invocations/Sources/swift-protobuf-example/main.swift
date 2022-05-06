// Create a Foo.
let foo = Foo.with { $0.name = "Foo" }

// Create a Bar.
let bar = Bar.with { $0.name = "Bar" }

// Print their names.
print(foo.name)
print(bar.name)
