using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StudentManagementSystem.ManagingClass
{
    public class Book_View
    {
        public int BookId { get; set; }
        public string Name { get; set; }
        public string Writter { get; set; }
        public int? Publishing_Year { get; set; }
        public int? Quantity { get; set; }
        public string Publisher { get; set; }
        public string Language { get; set; }
        public string Type { get; set; }
        public string Edition { get; set; }
        public string Supplier { get; set; }
        public int? ISBN { get; set; }
        public decimal? Classification_No { get; set; }
        public DateTime? Entry_Date { get; set; }
        public int? Clue_Page { get; set; }
        public string Source { get; set; }
    }
}
