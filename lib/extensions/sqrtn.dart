extension GetSqrt on num{
  double getSqrtN(num degree){
    double eps = 0.00001;
    double root = this / degree;
    num rn = this;
    while ((root - rn).abs()>=eps){
      rn = this;
      for (int i = 1; i < degree; i++){
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
    }
    return root;
  }
}