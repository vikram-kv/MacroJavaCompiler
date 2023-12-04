//no error
class test {
    public static void main(String[] a){
        System.out.println(new A().run(new D(),5,3));
    }
}
class C {
    int x;
}
class B extends C {
    int hi;
}
class D extends B {
    int hello;
}
class A {
    public int run(C cobj,int hi ,int g){
        return 5;
    }
}