class AllCases{
	public static void main( String[] a){
		System.out.println( new Allcase().ComputeFac(( 10 + 0)));
		}
	}
class Allcase{
	public int ComputeFac( int num){
		int num_aux;
		if(( num <= 1) &&( num != 1)) num_aux =( 1 + 0);
		else num_aux = num *( this.ComputeFac( num - 1));
		return num_aux;
		}
	public int Tester(){
		int l;
		int m;
		int n;
		l = 1;
		m = 2;
		n = 34;
		{
			l = l + m;
			m = n + l;
			l = l - m;
			}
		{
			System.out.println( 1);
			}
		{
			l = 2 * l;
			}
		{
			m = m + n;
			n = m - n;
			m = m - n;
			}
		n =((( 1 * 1) +( 2 * 2)) +(( 3 * 3) +( 4 * 4)));
		m =( 3);
		l =( 3 *( n * n));
		m =( n * l);
		return l;
		}
	}
