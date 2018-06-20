using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {

        static int area(int h, int w)
        {
            return h * w;
        }
        static int pow(int x, int y = 2)
        {
            int result = 1;
            for (int i = 0; i < y; i++)
            {
                result *= x;
            }
            return result;
        }
        static int sum(int x, int y)
        {
           
           return x + y;
            
        }
            
        static void Main(string[] args)
        {
            int res = sum(12, 19);
            Console.WriteLine(res);
            Console.WriteLine(pow(3,40));
            Console.WriteLine(area(12, 17));
           Console.ReadKey();
        }
        
       }
    }

