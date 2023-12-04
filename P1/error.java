#defineExpr0 NUM1() (10+0)
#defineExpr0 ONE() (1+0)
#defineStmt NUM(a,b,c) {a = a + b; b = c + a; a = a - b;}
#defineStmt0 PRINT() {System.out.println(1);}
#defineStmt1 DOUBLE(arg) {arg = 2 * arg;}
#defineStmt2 SWAP(arg1, arg2) {
    arg1 = arg1 + arg2;
    arg2 = arg1 - arg2;
    arg1 = arg1 - arg2;
}
#defineExpr SQR(a, b, c, d) (((a * a) + (b * b)) + ((c * c) + (d * d)))
#defineExpr0 PI() (3) //Engineering Joke
#defineExpr1 AREA(rad) (3 * (rad * rad))
#defineExpr2 AREA2(l, b) (l * b)


class AllCases{
    public static void main(String[] a){
        System.out.println(new Allcase().ComputeFac(NUM1()));
    }
}

class Allcase {
    publgic indt ComputefFac(int num){
        int num_aux ;
        if ((num <= 1)&&(num != 1))
            num_aux = ONE() ;
        else
            num_aux = num * (this.ComputeFac(num-1)) ;
        return num_aux ;
    }
    public int Tester(){
        int l;
        int m;
        int n;
        l = 1;
        m = 2;
        n = 34;
        NUM(l, m, n);
        PRINT();
        DOUBLE(l);
        SWAP(m, n);
        n = SQR(1, 2, 3, 4);
        m = PI();
        l = AREA(n);
        m = AREA2(n, l);
        return l;
    }
}
