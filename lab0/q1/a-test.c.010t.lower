
;; Function fibonacci (fibonacci, funcdef_no=0, decl_uid=2345, cgraph_uid=1, symbol_order=0)

int fibonacci (int n)
{
  int i;
  int c;
  int b;
  int a;
  int D.2361;

  if (n <= 1) goto <D.2359>; else goto <D.2360>;
  <D.2359>:
  D.2361 = n;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.2362>;
  <D.2360>:
  a = 0;
  b = 1;
  i = 2;
  goto <D.2354>;
  <D.2353>:
  c = a + b;
  a = b;
  b = c;
  i = i + 1;
  <D.2354>:
  if (i <= n) goto <D.2353>; else goto <D.2351>;
  <D.2351>:
  D.2361 = b;
  goto <D.2362>;
  <D.2362>:
  return D.2361;
}



;; Function main (main, funcdef_no=1, decl_uid=2355, cgraph_uid=2, symbol_order=1)

int main ()
{
  int n;
  int D.2363;

  n = 10;
  _1 = fibonacci (n);
  printf ("The %dth Fibonacci number is: %d\n", n, _1);
  _2 = n * n;
  printf ("SQUARE(%d) = %d\n", n, _2);
  D.2363 = 0;
  goto <D.2364>;
  D.2363 = 0;
  goto <D.2364>;
  <D.2364>:
  return D.2363;
}


