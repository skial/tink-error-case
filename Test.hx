package ;

@:asserts
class Test {

    public function new() {}

    public function test() {
        // Either of these causes a compiler hang.
        var def0:Foo = { make : null };
        // But on ctrl-c, no stack trace is returned for this expression.
        //var def0:Foo = new FooLike();
        
        // This causes the compiler hang.
        asserts.assert( def0.make != null );

        // Whereas this works.
        var check = def0.make != null;
        asserts.assert( check );
        return asserts.done();
    }

}

typedef Foo = {
	function make<T>(v:T):Foo;
}

class FooLike {

    public function new() {}

    public function make<T>(v:T):FooLike return this;

}