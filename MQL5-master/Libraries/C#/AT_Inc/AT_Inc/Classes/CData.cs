using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AT_Inc
{
    public class CData
    {
/*
        public struct MqlRates
        {
            DateTime time;         // Period start time
            double open;         // Open price
            double high;         // The highest price of the period
            double low;          // The lowest price of the period
            double close;        // Close price
            long tick_volume;  // Tick volume
            int spread;       // Spread
            long real_volume;  // Trade volume
        };
*/
        public struct Tmp
        {
            public double ask;
            public double bid;
        }
        public static void SetRates(double[] askbid)
        {

        }
        public static void SetRates(Tmp[]rates)
        {
           //CMA.MyForm.SetSet();
        }


    }
}
