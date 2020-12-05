using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinyRoad
{
    class Program
    {
        // Метод определения длинны отрезка

        static double FindTheSegmentLength(int X1, int Y1, int X2, int Y2)
        {
            // Метод Math.Sqrt - извлечение квадратного корня, Math.Pow - метод возведения в степень
            
            return Math.Sqrt(Math.Pow(X2 - X1, 2) + (Math.Pow(Y2 - Y1, 2)));
        }

        // Метод определения расстояния от точки до прямой

        static double FindTheDistancePointLine(double X1, double Y1, double X2, double Y2, double X3, double Y3) 
        {
            double distance;

            // Уравнение прямой A*x + B*y + C = 0.

            double A = (Y1 - Y2);
            double B = (X2 - X1);
            double C = (X1*Y2 - X2*Y1);

            //  Формула для вычисления расстояния от точки до прямой на плоскости d = (A*Mx + B*My + C) / V(A^2 + B^2)

            distance = (A * X3 + B * Y3 + C) / Math.Sqrt(Math.Pow(A, 2) + Math.Pow(B, 2));

            return distance;
        }

        // Метод ввода исходных данных

        static int ReadData(string text) 
        {
            Console.WriteLine(text);

            int c;
            c = int.Parse(Console.ReadLine());

            return c;
        }

        static void Main(string[] args)
        {
            int xVinyStart, yVinyStart;

            int xVinyFinish, yVinyFinish;

            int xRavineCenter, yRavineCenter;

            int ravineRadius;

            // Ввод исходных данных

            xVinyStart = ReadData("Введите координату Х дома Винни (начало пути):");
            yVinyStart = ReadData("Введите координату Y дома Винни (начало пути):");

            xVinyFinish = ReadData("Введите координату Х дома Пятачка (конец пути):");
            yVinyFinish = ReadData("Введите координату Y дома Пятачка (конец пути):");

            xRavineCenter = ReadData("Введите координату Х центра оврага:");
            yRavineCenter = ReadData("Введите координату Y центра оврага:");

            ravineRadius = ReadData("Введите радиус оврага:");

            // Расчет длин отрезков

            double startFinish, startCenter, finishCenter;

            startFinish = FindTheSegmentLength(xVinyStart, yVinyStart, xVinyFinish, yVinyFinish);
            Console.WriteLine($"Длинна отрезка (начало пути - конец пути) = {startFinish}.");

            startCenter = FindTheSegmentLength(xVinyStart, yVinyStart, xRavineCenter, yRavineCenter);
            Console.WriteLine($"Длинна отрезка (начало пути - центр оврага) = {startCenter}.");

            finishCenter = FindTheSegmentLength(xVinyFinish, yVinyFinish, xRavineCenter, yRavineCenter);
            Console.WriteLine($"Длинна отрезка (конец пути - центр оврага) = {finishCenter}.");

            // Расчет расстояния от центра оврага до прямой между началом и концом пути.

            double distanceFromTheCenter = FindTheDistancePointLine(xVinyStart, yVinyStart, xVinyFinish, yVinyFinish, xRavineCenter, yRavineCenter);

            Console.WriteLine($"Расстояние от центра оврага до прямой между началом и концом пути = {distanceFromTheCenter}.");

            Console.ReadKey();

        }
    }
}
