#include <stdio.h>
#include <stdlib.h>

int main()
{
   int i,j;
   FILE * fp;

   fp = fopen ("file.txt", "w+");
   for (i=0;i<1000;i++){
   fprintf(fp, "branch_addr <= '0';" "\n");
   fprintf(fp, "branch_pred <= '1';" "\n" );
   fprintf(fp, "wait for 10 ns;" "\n" );
   
   for (j=0;j<4;j++){
   fprintf(fp, "branch_addr <= '1';" "\n");
   fprintf(fp, "branch_pred <= '1';" "\n");
   fprintf(fp, "wait for 10 ns;" "\n" );
   }
   fprintf(fp, "branch_addr <= '1';" "\n");
   fprintf(fp, "branch_pred <= '0';" "\n");
   fprintf(fp, "wait for 10 ns;" "\n" );
  }
  fprintf(fp, "branch_addr <= '0';" "\n");
  fprintf(fp, "branch_pred <= '0';" "\n");
  fprintf(fp, "wait for 10 ns;" "\n" );
  
  fclose(fp);
   
   return(0);
}
