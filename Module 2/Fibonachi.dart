

void main()
{
  int a = 8 ,y = 0 , x =1 ,fact = 0;

  for (int i = 1;i<=a;i++)
  {
    fact  = y+x;
    y = x;
    x = fact ;
    print(fact);
  }
  
}