using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using StudentManagementSystem.ManagingClass;

namespace StudentManagementSystem
{
   public class ManagementClass
    {

        public List<DepartmentInfo> GetAllDepartment()
        {
            var std = new STUDENTEntities();
            var query = from dept in std.DepartmentInfoes
                        select dept;
            return query.ToList();

        }
        public List<SexInfo> GetAllGendar()
        {
            var std = new STUDENTEntities();
            var query = from sex in std.SexInfoes
                        select sex;
            return query.ToList();
        }
        public List<SemesterInfo> GetAllSemester()
        {
            var std = new STUDENTEntities();
            var query = from sem in std.SemesterInfoes
                        select sem;
            return query.ToList();
        }
        public List<BloodInfo> GetAllBloodGroup()
        {
            var std = new STUDENTEntities();
            var query = from bl in std.BloodInfoes
                        select bl;
            return query.ToList();
        }
        //public List<VexInfo> GetAllVex()
        //{
        //    var std = new STUDENTEntities();
        //    var query = from vx in std.VexInfoes
        //                select vx;
        //    return query.ToList();
        //}
     
       public List<ShiftInfo> GetAllShift()
        {
            var std = new STUDENTEntities();

            var q = from sf in std.ShiftInfoes
                    select sf;
            return q.ToList();
        }



       public List<SP_STUDENTINFOSEARCH_Result> GetAllStudentRecord(int studentId,string stuentName)
       {
           var context = new STUDENTEntities();
           var q = context.SP_STUDENTINFOSEARCH(studentId, stuentName);
         return  q.ToList();
       }

       public List<SP_DEPARMENT_WISE_REPORT_Result> GetAllStudentByDepartmentId(int roll,int did)
       {
           var context = new STUDENTEntities();
           var q = context.SP_DEPARMENT_WISE_REPORT(roll,did);
           return q.ToList();
       }

       public List<Designation_Info> GetAllDesignation()
       {
           var gf = new STUDENTEntities();
           var q = from sf in gf.Designation_Info
                   select sf;
           return q.ToList();
       }

       public List<Type_Info> GetAllType()
       {
           var gf = new STUDENTEntities();
           var q = from tp in gf.Type_Info
                   select tp;
           return q.ToList();
       }

       public List<StudentView>GetAllStudentInformation()
       {
           var obj = new List<StudentView>();
           var context = new STUDENTEntities();

           var q = from student in context.STUDENTINFOes
                   join dept in context.DepartmentInfoes on student.DeptId equals dept.DepartmentId
                   join sh in context.ShiftInfoes on student.ShiftId equals sh.ShiftId
                   join sem in context.SemesterInfoes on student.SemesterId equals sem.Id
                   join sex in context.SexInfoes on student.GendarId equals sex.SexId
                   join bl in context.BloodInfoes on student.BloodId equals bl.Id
                   select new
                              {
                                  student.STUDENTID,
                                  student.NAME,
                                  student.DateOfBirth,
                                  student.Contact,
                                  dept.DeptName,
                                  sem.Semester,
                                  sex.SexType,
                                  sh.Shift_Name,
                                  bl.BloodGroupName,
                                  student.ADDRESS,
                                  student.SESSION
                              };
           foreach (var item in q)
           {
               var stv = new StudentView();
               stv.Studentid = item.STUDENTID;
               stv.Name = item.NAME;
               stv.DateOfBirth = (DateTime) item.DateOfBirth;
               stv.SexType = item.SexType;
               stv.Session = item.SESSION;
               stv.Semester = item.Semester;
               stv.DeptName = item.DeptName;
               stv.Blood = item.BloodGroupName;
               stv.Contact = Convert.ToInt32(item.Contact);
               stv.Address = item.ADDRESS;
               stv.ShiftName = item.Shift_Name;
               obj.Add(stv);
           }
           return obj.ToList();
           
       }

       public List<TeacherView> GetAllTeacherInfo()
       {
           var gf = new List<TeacherView>();
           var context = new STUDENTEntities();

           var q = from tchr in context.TEACHER_INFO
                   join dpt in context.DepartmentInfoes on tchr.DEPARTMENT_ID equals dpt.DepartmentId
                   join sft in context.ShiftInfoes on tchr.SHIFT_ID equals sft.ShiftId
                   join tp in context.Type_Info on tchr.TYPE_ID equals tp.Type_Id
                   join dsg in context.Designation_Info on tchr.DESIGNATION_ID equals dsg.Designation_Id
                   join gdr in context.SexInfoes on tchr.GENDER_ID equals gdr.SexId
                   join bld in context.BloodInfoes on tchr.BLOOD_ID equals bld.Id
                   select new
                              {
                                  tchr.TEACHER_ID,
                                  tchr.NAME,
                                  dpt.DeptName,
                                  sft.Shift_Name,
                                  tp.Type_Name,
                                  dsg.Designation_Name,
                                  gdr.SexType,
                                  bld.BloodGroupName,
                                  tchr.CONTACT_NO,
                                  tchr.ADDRESS,

                              };

           foreach (var itm in q)
           {
               var sv = new TeacherView();
               sv.TeacherId = itm.TEACHER_ID;
               sv.Name = itm.NAME;
               sv.Department = itm.DeptName;
               sv.Designation = itm.Designation_Name;
               sv.Shift = itm.Shift_Name;
               sv.Type = itm.Type_Name;
               sv.Gender = itm.SexType;
               sv.BloodGroup = itm.BloodGroupName;
               sv.Contact = itm.CONTACT_NO;
               sv.Address = itm.ADDRESS;
               gf.Add(sv);
           }
           return gf.ToList();
       }

       public List<Book_View> GetAllBookInfo()
       {
           var bi = new List<Book_View>();
           var context = new STUDENTEntities();

           var q = from book in context.BOOK_INFO
                   join pub in context.Publisher_Info on book.PPUBLISHER_ID equals pub.Publisher_Id
                   join typ in context.Book_Type_Info on book.BOOK_TYPE_ID equals typ.Type_Id
                   join ed in context.Edition_Info on book.EDITION_ID equals ed.Edition_Id
                   join lng in context.Language_Info on book.LANGUAGE_ID equals lng.Language_Id
                   join scr in context.Sources on book.Source equals scr.Source_Id
                   select new
                              {
                                  book.BOOK_ID,
                                  book.BOOK_NAME,
                                  typ.Type_Name,
                                  book.WRITER,
                                  ed.Edition_Name,
                                  pub.Publisher_Name,
                                  book.PUBLISHING_YEAR,
                                  lng.Language_Name,
                                  book.QUANTITY,
                                  scr.Source_Name,
                                  book.Isbn_No,
                                  book.Classification_No,
                                  book.Clue_Page,
                                  book.Supplier,
                                  book.Entry_Date
                              };

           foreach (var bk in q)
           {
               var bv = new Book_View();
               bv.BookId = bk.BOOK_ID;
               bv.Name=  bk.BOOK_NAME;
               bv.Writter = bk.WRITER;
               bv.Publisher = bk.Publisher_Name;
               bv.Publishing_Year =  bk.PUBLISHING_YEAR;
               bv.Language = bk.Language_Name;
               bv.Type = bk.Type_Name;
               bv.Edition = bk.Edition_Name;
               bv.Quantity = bk.QUANTITY;
               bv.ISBN = bk.Isbn_No;
               bv.Classification_No = bk.Classification_No;
               bv.Entry_Date = bk.Entry_Date;
               bv.Source = bk.Source_Name;
               bv.Supplier = bk.Supplier;
               bv.Clue_Page = bk.Clue_Page;

               bi.Add(bv);
           }
           return bi.ToList();
       }

       public List<Book_Type_Info> GetAllBookType()
       {
           var std = new STUDENTEntities();
           var q = from typ in std.Book_Type_Info
                   select typ;

           return q.ToList();
       }

       public List<Language_Info> GetAllLanguage()
       {
           var obj = new STUDENTEntities();
           var q = from lng in obj.Language_Info
                   select lng;
           return q.ToList();
       }

       public List<Publisher_Info> GetAllPublisher()
       {
           var obj = new STUDENTEntities();
           var q = from pub in obj.Publisher_Info
                   select pub;
           return q.ToList();
       }

       public List<Edition_Info> GetAllEdition()
       {
           var obj = new STUDENTEntities();
           var q = from ed in obj.Edition_Info
                   select ed;

           return q.ToList();
       }

       //public List<Book_Type_Info> GetAllBookTypeData()
       //{
       //    var std = new STUDENTEntities();
       //    var q = from typ in std.Book_Type_Info
       //            select new
       //                       {
       //                           typ.Type_Id,
       //                           typ.Type_Name
       //                       };

       //    return q.ToList();

       //}

       public List<Source> GetAllSource()
       {
           var obj = new STUDENTEntities();
           var q = from src in obj.Sources
                   select src;

           return q.ToList();
       }
    }
}
