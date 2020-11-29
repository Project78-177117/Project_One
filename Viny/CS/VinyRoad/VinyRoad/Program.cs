using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinyRoad
{
    class Program
    {
        static int Sum(int a, int b)
        {
            return a + b;
        }

        static int Read() 
        {
            int c;
            c = int.Parse(Console.ReadLine());

            return c;
        }

        static void Main(string[] args)
        {
            int x, y, z;

            Console.WriteLine("Введите первое слогаемое");
            x = Program.Read();

            Console.WriteLine("Введите второе слогаемое");
            y = Program.Read();

            z = Sum(x, y);

            Console.WriteLine("Сумма " + x + " и " + y + " равна - " + z +"!");
            Console.ReadLine();
        }
    }
}
