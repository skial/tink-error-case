package ;

@:asserts
class Test {

    public function new() {}

    public function test() {
        var def0:Foo = { make : null };
        
        // Comment this line out to compile.
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