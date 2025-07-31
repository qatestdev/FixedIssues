using System;
using System.Collections.Generic; // Unused import

namespace CSharpIssues
{
    class Program
    {
        // Public field should be private
        public string PublicField = "This should be private";
        
        // Unused parameter
        public void UnusedParam(string unused)
        {
            Console.WriteLine("This method doesn't use its parameter");
        }
        
        // Empty catch block
        public void EmptyCatch()
        {
            try
            {
                Console.WriteLine("Trying something");
            }
            catch (Exception)
            {
                // Empty catch block
            }
        }
        
        // Unused variable
        public void UnusedVariable()
        {
            string unused = "This is never used";
            Console.WriteLine("Method with unused variable");
        }
        
        // Unreachable code
        public void UnreachableCode()
        {
            return;
            Console.WriteLine("This will never be executed"); // Unreachable code
        }
        
        // Method with too many parameters
        public void TooManyParams(int a, int b, int c, int d, int e, int f, int g, int h)
        {
            Console.WriteLine("Method with too many parameters");
        }
        
        static void Main(string[] args)
        {
            // Empty main method
        }
    }
}