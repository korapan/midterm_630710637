class tran {

  void ctof (int x) {
    int y;
    y = ((x*9.5)+32) as int;
  }

  void ctok(int x) {
    int y;
    y = (x+273.15) as int;
  }

  void ftoc(int x) {
    int y;
    y = (x-32)*(5/9) as int;
  }

  void ftok(int x){
    int y;
    y =(x+459.67)*(5/9) as int;
  }

  void ktoc(int x){
    int y;
    y = x-273.15 as int;
  }

  void ktof(int x){
    int y;
    y = (x*(9/5))-459.67 as int;
  }
}