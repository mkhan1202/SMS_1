using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StudentManagementSystem
{
   public class StudentView
    {
       public  int Studentid { get; set;}
       public string Name{ get; set;}
       public string DeptName{ get; set;}
       public string ShiftName{ get; set;}
       public string Semester{get;set;}
       public string SexType{ get; set;}
       public string Address{ get; set;}
       public DateTime DateOfBirth{ get; set;}
       public string Blood{ get; set;}
       public int Contact { get; set;}
       public string Session { get; set; }
       //public int TeacherId { get; set; }
       //public string Tname { get; set; }
       //public string DptName { get; set; }
       //public string Tshiftname { get; set; }
       //public string Designation { get; set; }
       //public string Type { get; set; }
       //public string Gender { get; set; }
       //public string BloodGroup { get; set; }
       //public string Tcontact { get; set; }
       //public string Taddress { get; set; }
    }

   public class TeacherView
   {
       public int TeacherId { get; set; }
       public string Name { get; set; }
       public string Department { get; set; }
       public string Shift { get; set; }
       public string Designation { get; set; }
       public string Type { get; set; }
       public string Gender { get; set; }
       public string BloodGroup { get; set; }
       public string Contact { get; set; }
       public string Address { get; set; }
   }
}
