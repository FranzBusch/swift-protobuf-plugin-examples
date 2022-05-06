// Create a Foo.
let foo = Foo.with { $0.name = "Foo" }

let bar = Bar.with { $0.foo = foo }

// Print its name.
print(bar.foo.name)
