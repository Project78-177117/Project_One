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

        static int Read(string text) 
        {
            Console.WriteLine(text);

            int c;
            c = int.Parse(Console.ReadLine());

            return c;
        }

        static void Main(string[] args)
        {
            int x, y, z;

            x = Program.Read("Введите первое слогаемое");

            y = Program.Read("Введите второе слогаемое");

            z = Sum(x, y);

            Console.WriteLine("Сумма " + x + " и " + y + " равна - " + z +"!");
            Console.ReadLine();
        }
    }
}
