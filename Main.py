import psycopg2
from tabulate import tabulate


print("                 WELCOME TO VILLANOVA UNIVERSITY                      ")
print("1. To know all the details about university")
print("2. To check all courses available and fees")
print("3. To apply for admission in bachelor course")
print("4. To apply for admission in masters course")
print("5. To check the information of faculty")
print("6. Display all the details of bachelor students")
print("7. Display all the details of master students")
print("8. Accounts & Fees Information")
print("9.Contact & Student Support")

# Connect to PostgreSQL
try:
    mycon = psycopg2.connect(
        host="localhost",
        user="postgres",           
        password="1111", 
        database="University"  
    )
    print("Successfully connected to PostgreSQL")
except Exception as e:
    print("Error while connecting:", e)
    exit()

while True:
    
    ch = int(input("\nEnter your choice: "))

    if ch == 1:
        print("\n" + "="*60)
        print("          🎓 WELCOME TO VILLANOVA UNIVERSITY 🎓")
        print("="*60)
        print("📅  Established          : January 1925")
        print("👩  Faculty Members      : 3000")
        print("🏫  Campus Area          : 3500 hectares")
        print("🏨  Hostels              : Separate for boys and girls")
        print("💼  Placements           : Min 3-5 LPA | Max 14-19 LPA")
        print("⭐  Ranking              : 4.8 / 5")
        print("📚  Features             : Smart class facilities")
        print("-"*60)
        print("🙏 Thank you for visiting!")
        print("="*60 + "\n")


    elif ch == 2:
        print("Enter 'bachelor' to check for bachelor courses")
        print("Enter 'master' to check for master courses")
        print("Enter 'pg' for postgraduate courses")
        x = input("Enter course type: ")

        cursor = mycon.cursor()
        st = "SELECT * FROM courses WHERE coursetype=%s"
        cursor.execute(st, (x,))
        data = cursor.fetchall()
        headers = ["Course ID", "Course Name", "Duration", "Fees", "Course Type"]
        print(tabulate(data, headers=headers, tablefmt="psql"))

    elif ch == 3:
        print("Fill the details for applying Bachelor's course")
        x = input("Enter name of candidate: ")
        y = input("Enter your gender: ")
        z = input("Enter mother's name: ")
        p = input("Enter father's name: ")
        q = input("Enter your date of birth (YYYY-MM-DD): ")
        r = input("Enter your permanent address: ")
        t = input("Enter your contact no: ")
        u = input("Enter your mail id: ")
        v = input("Enter your nationality: ")
        w = input("Enter your board: ")
        total_fee = float(input("Total Fee: "))
        pending_fee = total_fee

        cursor = mycon.cursor()
        st = """INSERT INTO bachler 
        (name, gender, mothersname, fathersname, dob, permanentaddress, contactnumber, mailid, nationality, board,total_fee,pending_fee) 
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        values = (x, y, z, p, q, r, t, u, v, w,total_fee,pending_fee)
        cursor.execute(st, values)
        mycon.commit()
        print("Application submitted successfully!")

    elif ch == 4:
        print("Fill the details for applying Master's course")
        x = input("Enter name of candidate: ")
        y = input("Enter your gender: ")
        z = input("Enter mother's name: ")
        p = input("Enter father's name: ")
        q = input("Enter your date of birth (YYYY-MM-DD): ")
        r = input("Enter your permanent address: ")
        t = input("Enter your contact no: ")
        u = input("Enter your mail id: ")
        v = input("Enter your nationality: ")
        w = input("Enter your board: ")
        total_fee = float(input("Total Fee: "))
        pending_fee = total_fee

        cursor = mycon.cursor()
        st = """INSERT INTO master 
        (name, gender, mothersname, fathersname, dob, permanentaddress, contactnumber, mailid, nationality, board,total_fee,pending_fee) 
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        values = (x, y, z, p, q, r, t, u, v, w,total_fee,pending_fee)
        cursor.execute(st, values)
        mycon.commit()
        print("Application submitted successfully!")

    elif ch == 5:
        print("Faculty Information:")
        cursor = mycon.cursor()
        cursor.execute("SELECT * FROM faculty ORDER BY name ASC")
        rows = cursor.fetchall()
        headers = ["Faculty ID", "Name", "Department", "Designation", "Email", "Contact No"]
        print(tabulate(rows, headers=headers, tablefmt="rounded_grid"))

    elif ch == 6:
        print("Details of bachelor students:")

        cursor = mycon.cursor()

        # Ask user which view they want
        view_choice = input("Enter 'quick' for summary view or 'full' for complete details: ").lower()

        if view_choice == "quick":
            # Quick view: Only important columns
            cursor.execute("SELECT student_id, name, gender, contactnumber, mailid,pending_fee FROM bachler ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["Student ID", "Name", "Gender", "Contact No", "Email","Pendinf Fees"]
            print(tabulate(rows, headers=headers, tablefmt="rounded_grid"))

        elif view_choice == "full":
            # Full view: All columns
            cursor.execute("SELECT student_id,name,gender,mothersname,fathersname,dob,permanentaddress,contactnumber,mailid,pending_fee FROM bachler ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["ID", "Name", "Gender", "Mother", "Father", "DOB",
                   "Address", "Contact", "Email","Pending Fees"]

            # Shorten long addresses to avoid overlapping
            short_rows = []
            for row in rows:
                row = list(row)
                if row[6] and len(row[6]) > 25:   # Address field
                    row[6] = row[6][:25] + "..."
                short_rows.append(row)

            print(tabulate(short_rows, headers=headers, tablefmt="rounded_grid"))

        else:
            print("Invalid choice! Showing quick view by default.")
            cursor.execute("SELECT student_id, name, gender, contactnumber, mailid,pending_fee FROM bachler ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["Student ID", "Name", "Gender", "Contact No", "Email","Pending Fees"]
            print(tabulate(rows, headers=headers, tablefmt="fancy_grid"))

    elif ch == 7:
        print("Details of master students:")

        cursor = mycon.cursor()

        # Ask user which view they want
        view_choice = input("Enter 'quick' for summary view or 'full' for complete details: ").lower()

        if view_choice == "quick":
            # Quick view: Only important columns
            cursor.execute("SELECT student_id, name, gender, contactnumber, mailid,pending_fee FROM master ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["Student ID", "Name", "Gender", "Contact No", "Email","Pending Fees"]
            print(tabulate(rows, headers=headers, tablefmt="fancy_grid"))

        elif view_choice == "full":
            # Full view: All columns
            cursor.execute("SELECT student_id,name,gender,mothersname,fathersname,dob,permanentaddress,contactnumber,mailid,pending_fee FROM master ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["ID", "Name", "Gender", "Mother", "Father", "DOB",
                   "Address", "Contact", "Email","Pending Fees"]

            # Shorten long addresses to avoid overlapping
            short_rows = []
            for row in rows:
                row = list(row)
                if row[6] and len(row[6]) > 25:   # Address field
                    row[6] = row[6][:25] + "..."
                short_rows.append(row)

            print(tabulate(short_rows, headers=headers, tablefmt="rounded_grid"))

        else:
            print("Invalid choice! Showing quick view by default.")
            cursor.execute("SELECT student_id, name, gender, contactnumber, mailid, pending_fee FROM master ORDER BY name ASC")
            rows = cursor.fetchall()
            headers = ["Student ID", "Name", "Gender", "Contact No", "Email","Pending fees"]
            print(tabulate(rows, headers=headers, tablefmt="fancy_grid"))
    # ------------------- ACCOUNTS & FEES -------------------
    elif ch == 8:
        print("\n================ ACCOUNTS & FEES PORTAL ================\n")
        print("1. Check Bachelor Student Fees")
        print("2. Check Master Student Fees")
        print("3. Pay Fees (Bachelor)")
        print("4. Pay Fees (Master)")
        print("5. Generate Fee Receipt (Bachelor)")
        print("6. Generate Fee Receipt (Master)")
    
        sub_choice = int(input("Enter your choice: "))

    # ------------------- CHECK FEES -------------------
        if sub_choice == 1:
            sid = int(input("Enter Bachelor Student ID: "))
            cursor.execute("SELECT name, total_fee, pending_fee FROM bachler WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                print(tabulate([row], headers=["Name", "Total Fee", "Pending Fee"], tablefmt="fancy_grid"))
            else:
                print("No record found!")

        elif sub_choice == 2:
            sid = int(input("Enter Master Student ID: "))
            cursor.execute("SELECT name, total_fee, pending_fee FROM master WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                print(tabulate([row], headers=["Name", "Total Fee", "Pending Fee"], tablefmt="fancy_grid"))
            else:
                print("No record found!")

    # ------------------- PAY FEES -------------------
        elif sub_choice == 3:
            sid = int(input("Enter Bachelor Student ID: "))
            cursor.execute("SELECT name, pending_fee FROM bachler WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                print(f"Student: {row[0]} | Pending Fee: ₹{row[1]}")
                pay_amt = float(input("Enter amount to pay: "))
                if pay_amt <= row[1]:
                    cursor.execute("UPDATE bachler SET pending_fee = pending_fee - %s WHERE student_id=%s", (pay_amt, sid))
                    mycon.commit()
                    print(f"Payment of ₹{pay_amt} successful ")
                else:
                    print("Error: Amount exceeds pending fee!")
            else:
                print("No record found!")

        elif sub_choice == 4:
            sid = int(input("Enter Master Student ID: "))
            cursor.execute("SELECT name, pending_fee FROM master WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                print(f"Student: {row[0]} | Pending Fee: ₹{row[1]}")
                pay_amt = float(input("Enter amount to pay: "))
                if pay_amt <= row[1]:
                    cursor.execute("UPDATE master SET pending_fee = pending_fee - %s WHERE student_id=%s", (pay_amt, sid))
                    mycon.commit()
                    print(f"Payment of ₹{pay_amt} successful ")
                else:
                    print("Error: Amount exceeds pending fee!")
            else:
                print("No record found!")

    # ------------------- GENERATE RECEIPT -------------------
        elif sub_choice == 5:
            sid = int(input("Enter Bachelor Student ID: "))
            cursor.execute("SELECT name, total_fee, pending_fee FROM bachler WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                paid = row[1] - row[2]
                receipt = [
                    ["Student Name", row[0]],
                    ["Total Fee", row[1]],
                    ["Paid Amount", paid],
                    ["Pending Fee", row[2]],
                    ["Status", "PAID " if row[2]==0 else "PENDING "]
                ]
                print(tabulate(receipt, headers=["Details", "Amount"], tablefmt="fancy_grid"))
            else:
                print("No record found!")

        elif sub_choice == 6:
            sid = int(input("Enter Master Student ID: "))
            cursor.execute("SELECT name, total_fee, pending_fee FROM master WHERE student_id=%s", (sid,))
            row = cursor.fetchone()
            if row:
                paid = row[1] - row[2]
                receipt = [
                    ["Student Name", row[0]],
                    ["Total Fee", row[1]],
                    ["Paid Amount", paid],
                    ["Pending Fee", row[2]],
                    ["Status", "PAID " if row[2]==0 else "PENDING "]
                ]
                print(tabulate(receipt, headers=["Details", "Amount"], tablefmt="fancy_grid"))
            else:
                print("No record found!")
    elif ch == 9:
        print("\n================ CONTACT & STUDENT SUPPORT =================\n")
        print("")
        print("             University Contact Information:")
        print("-------------------------------------------------------------")
        print("Address       : Villanova University, 123 University Road, Hardoi, India")
        print("Phone         : +91-9569526931")
        print("Email         : support@villanovauniv.edu")
        print("Website       : www.villanovauniv.edu")
        print("")
        print("\n         Student Support Services:")
        print("-------------------------------------------------------------")
        print("1. Academic Advising        : academic.advising@villanovauniv.edu")
        print("2. Career Services          : career.services@villanovauniv.edu")
        print("3. Counseling & Wellbeing   : counseling@villanovauniv.edu")
        print("4. IT Support               : it.support@villanovauniv.edu")
        print("5. Library Services         : library@villanovauniv.edu")
        print("6. Hostel & Accommodation   : hostel@villanovauniv.edu")
        print("")
        print("\nFor emergencies, contact +91-9999999999")
        print("===============================================================")
        print("Thank you for visiting Villanova University Support Portal!")    

    else:
        print("Invalid choice!")
    
    cont = input("\nEnter 0 to exit or 1 to continue: ")
    if cont== "1":
        print("1. To know all the details about university")
        print("2. To check all courses available and fees")
        print("3. To apply for admission in bachelor course")
        print("4. To apply for admission in masters course")
        print("5. To check the information of faculty")
        print("6. Display all the details of bachelor students")
        print("7. Display all the details of master students")
        print("8. Accounts & Fees Information")
        print("9.Contact & Student Support")
        print("                                      ")
    if cont == "0":
        print("Thank you! Exiting system.")
        cursor.close()
        mycon.close()
        print("Database connection closed ✅")
        break
