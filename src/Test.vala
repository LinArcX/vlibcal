using VLibCal.SolarHijri;

// jDN
private void show_jdn_from_gr() {
    uint32 _gr_jdn = 0 ;
    gr_to_jdn (ref _gr_jdn, 2020, 04, 20) ;
    print ("Julian Day for 2020/04/20 AP is: " + _gr_jdn.to_string () + "\n") ;
}

private void show_jdn_from_sh() {
    uint32 _sh_jdn = 0 ;
    sh_to_jdn (ref _sh_jdn, 1399, 02, 01) ;
    print ("Julian Day for 1399/02/01 AP is: " + _sh_jdn.to_string () + "\n") ;
}

private void show_jdn_from_is() {
    uint32 _is_jdn = 0 ;
    is_to_jdn (ref _is_jdn, 1441, 8, 26) ;
    print ("Julian Day for 1441/08/26 AP is: " + _is_jdn.to_string () + "\n") ;
}

// GR_SH_IS
private void show_gr_to_sh() {
    int16 y = 0 ;
    uint8 m = 0 ;
    uint16 d = 0 ;
    gr_to_sh (2020, 04, 20, ref y, ref m, ref d) ;
    print ("2020/04/20 is: " +
           y.to_string () + "/" +
           m.to_string () + "/" +
           d.to_string () + "\n") ;

}

private void show_gr_to_is() {
    int16 y = 0 ;
    uint8 m = 0 ;
    uint16 d = 0 ;
    gr_to_is (2020, 04, 20, ref y, ref m, ref d) ;
    print ("2020/04/20 is: " +
           y.to_string () + "/" +
           m.to_string () + "/" +
           d.to_string () + "\n") ;
}

private void show_sh_to_gr() {
    int16 y = 0 ;
    uint8 m = 0 ;
    uint16 d = 0 ;
    sh_to_gr (1399, 02, 01, ref y, ref m, ref d) ;
    print ("1399/02/01 is: " +
           y.to_string () + "/" +
           m.to_string () + "/" +
           d.to_string () + "\n") ;
}

public static int main(string[] args) {
    show_jdn_from_gr () ;
    show_jdn_from_sh () ;
    show_jdn_from_is () ;

    print("\n********************************************\n");

    show_gr_to_sh () ;
    show_gr_to_is () ;
    show_sh_to_gr () ;

    return 0 ;
}
