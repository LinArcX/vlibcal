namespace VLibCal.Math{
    int fdiv(int a, int b) {
        return (a - (a < 0 ? b - 1 : 0)) / b ;
    }

    private uint32 floor(uint32 n) {
        return n - (n % 1) ;
    }

    private int mod(int x, int y) {
        return x - fdiv (x, y) * y ;
    }

    struct division_struct {
        public int quot ;
        public int rem ;
    }

    private division_struct division(int numer, int denom) {
        division_struct result = { 0, 0 } ;
        result.quot = numer / denom ;
        result.rem = numer % denom ;
        return result ;
    }

    division_struct pdiv(int y, int x) {
        division_struct rv = division (y, x) ;
        if( rv.rem < 0 ){
            if( x > 0 ){
                rv.quot -= 1 ;
                rv.rem += x ;
            } else {
                rv.quot += 1 ;
                rv.rem -= x ;
            }
        }
        return rv ;
    }
}
