import pickle
import mysql.connector
import os
import random
import time


def previous_orders():
    """
    Displays the user's previous orders by reading from their personal file.
    """
    clear_screen()

    if not os.path.exists(userpersonalfile):
        print("No previous orders found.")
        time.sleep(2)
        clear_screen()
        interface()
        return

    with open(userpersonalfile, "r",encoding='utf-8') as file:
        content = file.readlines()

    if not content:
        print("No previous orders found.")
        time.sleep(2)
        clear_screen()
        interface()
        return

    print("Your Previous Orders:")
    print("Sno   Restaurant               Item                              Price")

    # Process and print each line as an individual order
    for sno, line in enumerate(content, start=1):
        parts = line.strip().split()
        rest_name = parts[0]
        item_name = " ".join(parts[1:-1])
        item_price = parts[-1]

        # Print the formatted output
        print(f"{sno:<6} {rest_name:<20} {item_name:<30} {item_price}")

    input("Press Enter to go back to the main menu...")
    clear_screen()
    interface()



    # tracks the order just placed by using the random module and time module
def track_order():
    global orderplaced
    global cart


    if orderplaced==1:
        clear_screen()
        order_statuses = ["Order Placed", "Preparing", "Out for Delivery", "Delivered"]
        eta = random.randint(20, 40)  # Random initial ETA between 20 and 40 minutes

        for status in order_statuses:
            print(f"Status: {status}")
            
            if eta > 0:
                print(f"Estimated Time Left: {eta} minutes")
            
            # Simulate the passing of time and ensure the next random ETA is lower
            time.sleep(2)  # Simulate time delay for each status
            
            if eta > 1:
                eta = random.randint(1, eta - 1)  # Generate next ETA that's lower than the current
            
        print("Your order has been delivered! Enjoy your meal.")
        time.sleep(2)
        cart.clear()
        clear_screen()
        interface()

    else:
        clear_screen()
        print("No Order Placed")
        time.sleep(2)
        clear_screen()
        interface()


def restraunt():
    clear_screen()
    print("ALL AVAILABLE RESTAURANTS!!!")
    print("1. Singla")
    print("2. Mcdonalds")
    print("3. Burger_King")
    print("4. Dominos")
    print("5. Pizza_Hut")
    print("6. Kali_Ghata")
    print("7. KFC")
    print("8. Haldiram")
    print("9. Pinch_Of_Spice")
    print("10. Cafe_Manhattan")
    print("11. Go Back")

    chosenone = int(input("Select Restaurant: "))

    if chosenone==11:
        clear_screen()
        interface()
    restlist = ["Singla", "Mcdonalds", "Burger_King", "Dominos", "Pizza_Hut", "Kali_Ghata", "KFC", "Haldiram", "Pinch_Of_Spice", "Cafe_Manhattan"]
    realchosenone = restlist[chosenone - 1]
    lookingforchosenone = "SELECT * FROM {}".format(realchosenone)
    cursor.execute(lookingforchosenone)
    result = cursor.fetchall()
    

    y="yes"
    print("Here's The Menu!!")
    print("S.no   Item                          Price")

    for i in result:
        item_name = i[1]
        price = i[2]
        strprice="₹"+str(price)
    
        # Manually adding spaces to align the output
        serial_number = str(i[0])
        spaces_after_serial = " " * (6 - len(serial_number))  # Adjust space based on serial number length
        spaces_after_item = " " * (40 - len(item_name))       # Adjust space based on item name length
    
        # Printing the output
        print(serial_number + spaces_after_serial + item_name + spaces_after_item + strprice)

    while y in ["yes","YES","y","Y"]:
        cartinput=int(input("ADD TO CART!"))
        cart.append((realchosenone,result[cartinput-1][1],result[cartinput-1][2]))
        print("Item Added!")
        y=input("Add More Items?")

    if y in ["No","NO","N","n","no"]:
        clear_screen()
        interface()


def exit():
    clear_screen()
    quit()


def cartfunc():
    """
    Handles cart operations: displays items, checks out, or returns to the main interface.
    """

    if len(cart) == 0:
        clear_screen()
        print("NO Items Added!!")
        time.sleep(2)
        clear_screen()
        interface()

    else:
        x = 1
    y = 0
    cartlist = list(cart)
    printed_items = []  # To keep track of items that have already been printed

    print("Sno   Restaurant               Item                              Price                       Quantity")

    for i in cart:
        quantityvar = 0
        # Calculate the quantity of the current item in the cart
        for j in cart:
            if j[2] == i[2]:
                quantityvar += 1

        # Prepare the strings for printing
        cartno = str(x)
        cartrest = i[0]
        cartitem = i[1]
        cartprice = str(i[2])
        trueprice = "₹" + cartprice

        # Manually adding spaces to align the output
        spaces_after_serial = " " * (6 - len(cartno))  # Adjust space based on serial number length
        spaces_after_rest = " " * (20 - len(cartrest))  # Adjust space based on restaurant name length
        spaces_after_item = " " * (40 - len(cartitem))  # Adjust space based on item name length
        spaces_after_price =" "* (30-len(trueprice))

        # Check if the item has already been printed
        if i[1] not in printed_items:
            # Print the output
            print(cartno + spaces_after_serial + cartrest + spaces_after_rest + cartitem + spaces_after_item + trueprice +spaces_after_price + str(quantityvar))
            printed_items.append(i[1])  # Add the item to the printed list

        else:
            continue

        x += 1
        y += 1


    gob = input("Check Out or Go back?").strip().lower()
    
    if gob == "go back":
        clear_screen()
        interface()
    
    if gob == "check out":
        clear_screen()
        address = input("Please Provide Address: ")
        print("CHOOSE PAYMENT METHOD!")
        print("1. Cash on Delivery")
        print("2. UPI")
        print("3. Net Banking")
        print("4. Credit Card")
        print("5. Debit Card")
        method = int(input("Select Method!"))

        global orderplaced
        orderplaced=orderplaced+1
        prevorder=open(userpersonalfile,"a+",encoding='utf-8')

        for i in cart:
                    cartitema = " ".join(i[1].split())
                    cartstr = f"{i[0]} {cartitema} ₹{i[2]}\n"
                    prevorder.write(cartstr)
        prevorder.close()
        clear_screen()
        print("CHECKING OUT!")
        time.sleep(2)
        interface()

def account():
    clear_screen()
    print("1. Online Ordering Help")
    print("2. About")
    print("3. Send Feedback")
    print("4. Go back")
    accinput=int(input())


    # Provides help to the user
    if accinput == 1:
        clear_screen()
        print("How can We Help You?")
        userhelp=input()
        print("Customer Will Contact You As Soon As Possible")
        time.sleep(2)
        clear_screen()
        interface()

    #tell about the app
    if accinput == 2:
        print("""Welcome to FeastFast, your go-to app for delicious meals and a seamless food ordering experience. Whether you’re craving fast food, fine dining, or local specialties, we bring a wide variety of restaurants right to your fingertips.

What We Offer:

Easy Ordering: Browse menus, customize your order, and place it within seconds.
              
Fast Delivery & Pickup: Get your food delivered to your doorstep or opt for a convenient pickup.
              
Exclusive Deals: Enjoy exclusive offers, discounts, and combo deals available only through our app.
              
Real-Time Order Tracking: Stay updated with real-time tracking of your order, from preparation to delivery.
              
Multiple Payment Options: Secure and hassle-free payments via credit cards, wallets, UPI, and more.
              
User-Friendly Design: An intuitive interface that makes browsing and ordering simple and enjoyable.
              
Diverse Cuisine Options: From local favorites to international delights, explore a vast range of cuisines that cater to all tastes and preferences.
              
Personalized Recommendations: Get tailored suggestions based on your previous orders and favorite cuisines.
              
High-Quality Restaurant Partners: We partner with only the best restaurants to ensure you receive top-notch quality and service.
              
Customer Reviews and Ratings: Read feedback from other users to make informed choices and find the best dishes.
              
Customizable Orders: Modify ingredients, select portion sizes, and make special requests to suit your dietary needs.
              
Scheduled Ordering: Plan and place your order in advance for a specific time, ensuring your meal is ready when you need it.
              
Dietary Preferences: Filter options based on dietary restrictions such as vegetarian, vegan, gluten-free, and more.
              
Allergen Information: Easily access allergen information to avoid any potential issues with your meal.
              
Rewards Program: Earn points with every order and redeem them for exciting rewards and discounts.
              
Referral Bonuses: Invite friends to join FeastFast and receive bonus credits for every successful referral.
              
24/7 Customer Support: Our dedicated support team is available round the clock to assist you with any issues or queries.
              
Order History: Keep track of your previous orders for easy reordering and meal planning.
              
Interactive Map: Use our interactive map to find restaurants near you and explore new dining options.
              
Special Occasion Orders: Celebrate special occasions with curated meal options and customized services.
              
Health and Safety Standards: Our restaurant partners adhere to the highest health and safety standards to ensure your meal is safe and hygienic.
              
Social Media Integration: Share your dining experiences and favorite meals on social media directly from the app.
              
Push Notifications: Receive timely updates and notifications about your order status, promotions, and app features.
              
Local Partnerships: Benefit from our collaborations with local businesses to offer unique and community-focused deals.
              
Sustainability Efforts: We are committed to sustainable practices, including eco-friendly packaging and supporting restaurants that share our values.
              
Flexible Delivery Options: Choose from various delivery options, including contactless delivery, to suit your preferences and needs.
              
Gift Cards: Purchase and send digital gift cards to friends and family for a convenient and thoughtful gift.
              
In-App Feedback: Share your thoughts and suggestions directly through the app to help us improve your experience.
              
Language Support: Enjoy the app in multiple languages to make it accessible to a broader audience.
              
Updates and Upgrades: Regular updates to enhance app functionality, introduce new features, and ensure a smooth user experience.
              
Community Engagement: Participate in community events and initiatives sponsored by FeastFast to give back and stay connected.
              
Accessibility Features: Designed to be accessible for all users, including those with disabilities, to ensure everyone can enjoy our services.
              
Exclusive Content: Access special content, including behind-the-scenes looks at our restaurant partners and food preparation processes.
              
Why Choose Us?

At FeastFast, we are committed to offering you the best dining experience, with access to a wide variety of restaurants, quick service, and unbeatable deals. Our focus is on convenience, quality, and customer satisfaction, ensuring every meal you order through our app is a delightful experience.

Download now and let your cravings be satisfied!""")
        returnuser=input("Press enter to return!!")
        clear_screen()
        interface()

    #Asks the user for feedback for the devloper
    if accinput == 3:
        feedback=input("Please Provide Feedback")
        print("Thanks For the Feedback")
        x=input("Press enter to return!!")
        clear_screen()
        interface()

    #returns to the interface
    if accinput == 4:
        clear_screen()
        interface()



    #displays the user's previous orders


def clear_screen():
    """
    Clears the console screen based on the operating system.
    """
    os.system('cls' if os.name == 'nt' else 'clear')


def search():
    """
    Searches for food or restaurant based on user input and displays results.
    """
    clear_screen()
    searchresult = []
    
    searchr = input("Search for Food or Restaurant: ").strip().lower()
    searcht = searchr + "%"
    
    # Query to find restaurants matching the search term
    sqlsearchr = "SELECT names FROM restraunts WHERE names LIKE %s"
    cursor.execute(sqlsearchr, (searcht,))
    results = cursor.fetchall()
    
    sno = 1
    print("Restaurants Found =>")

    for i in results:
        invdresult = (sno, i[0])
        print(sno, ".", i[0])
        searchresult.append(invdresult)
        sno += 1
    
    if len(results) == 0:
        print("No Restaurants Found :(")
    
    # Query to list all restaurant names
    sqlsearchforrest = "SELECT names FROM restraunts"
    cursor.execute(sqlsearchforrest)
    print("Food found =>")
    
    restrauntnames = cursor.fetchall()
    y = 0
    
    # For each restaurant, search for food items
    for i in restrauntnames:
        table = i[0]
        
        # Construct query to search for food items in the current restaurant's table
        sqlsearchf = "SELECT item, price FROM `{}` WHERE item LIKE %s".format(table)
        cursor.execute(sqlsearchf, (searcht,))
        resultsf = cursor.fetchall()
        
        # Print food items found
        for j in resultsf:
            searchno=str(sno)
            searchrestraunt=table
            searchitem=j[0]
            searchprice=str(j[1])
            truesearchprice="₹"+searchprice
            space_after_no=" " * (6-len(searchno))
            space_after_rest=" " * (30-len(searchrestraunt))
            space_after_item=" " * (50-len(searchitem))

            print(searchno + space_after_no + searchrestraunt + space_after_rest + searchitem + space_after_item + truesearchprice)
            a = "₹" + str(j[1]) 
            invdfood = (sno, table, j[0], a)
            sno += 1
            searchresult.append(invdfood)
            y += 1
    
    if y == 0:
        print("No Food Found :(")
    
    if len(searchresult) != 0:
        inputsearch = int(input("Please Select!"))
        
        if len(searchresult[inputsearch - 1]) == 2:
            clear_screen()
            restrauntm = searchresult[inputsearch - 1][1]
            
            # Query to show the menu of the selected restaurant
            sqlshowmenu = "SELECT * FROM {}".format(restrauntm)
            cursor.execute(sqlshowmenu)
            resultm = cursor.fetchall()
            
            header =("Sno           Item                            Price")
            print(header)
            
            gb = 1
            menulist = []
            
            for i in resultm:
                menuno=str(i[0])
                menuitem=i[1]
                menuprice=str(i[2])
                trueprice="₹"+menuprice
                # Manually adding spaces to align the output
                spaces_after_serial = " " * (6 - len(menuno))  # Adjust space based on serial number length
                spaces_after_item = " " * (40 - len(menuitem))       # Adjust space based on restraunt name length
    
                # Printing the output
                print(menuno + spaces_after_serial + menuitem + spaces_after_item + trueprice)
                menulist.append((i[1], i[2]))
                gb += 1
            
            gbdot = str(gb) + "."
            print(gbdot, "GO BACK!")
            
            y = "yes"
            
            while y == "yes":
                menuinput = int(input("Add to Cart!"))
                
                if menuinput == gb:
                    clear_screen()
                    interface()
                else:
                    cart.append((restrauntm, menulist[menuinput - 1][0], menulist[menuinput - 1][1]))
                    print("Item ADDED!!")
                    y = input("Add more items? ").strip().lower()
                    if y == "no":
                        clear_screen()
                        interface()
        
        else:
            cart.append((searchresult[inputsearch - 1][1], searchresult[inputsearch - 1][2], searchresult[inputsearch - 1][3]))
            clear_screen()
            interface()
    else:
        clear_screen()
        interface()

def interface():
    """
    Displays the main menu and handles user choices.
    """
    clear_screen()
    
    print("1. Search For Food or Restaurant")
    print("2. Cart")
    print("3. All Available Restaurants")
    print("4. Track Order")
    print("5. Previous Orders")
    print("6. Account")
    print("7. Exit")
    
    todo = int(input())
    
    if todo == 1:
        search()
    elif todo == 2:
        cartfunc()
    elif todo == 3:
        restraunt()
    elif todo == 4:
        track_order()
    elif todo == 5:
        previous_orders()
    elif todo == 6:
        account()
    elif todo == 7:
        exit()

def signup():
    """
    Handles user signup process.
    """
    clear_screen()
    
    print("Please provide the following:")
    username = input("Please Provide Your Username: ")
    address = input("Please Provide Your Address: ")
    cntno = input("Please Provide Your Contact Number (10 digits): ")
    
    # Validate contact number
    if len(cntno) != 10 or not cntno.isdigit():
        print("Invalid contact number. It should be 10 digits.")
        return
    
    psswrd = input("Please Create Password: ")
    cnfpsswrd = input("Please Confirm Password: ")
    
    if psswrd != cnfpsswrd:
        print("Passwords do not match.")
        return
    

    # Record to be added
    record = [(username, address, cntno, psswrd)]

    # Try to open and load from the file
    try:
        with open("signupfile.dat", "rb") as signupfile:
            try:
                totalrecords = pickle.load(signupfile)
            except EOFError:
                # Handle the case where the file is empty
                totalrecords = []
    except FileNotFoundError:
        # Handle the case where the file does not exist
        totalrecords = []

    # Extend the records with the new entry
    totalrecords.extend(record)

    # Write the updated records back to the file
    with open("signupfile.dat", "wb") as signupfile2:
        pickle.dump(totalrecords, signupfile2)

    # Create a user-specific file
    global userpersonalfile
    userpersonalfile = username + psswrd + ".txt"
    with open(userpersonalfile, "w") as userfile:
        pass  # Just create the file or open it

    # Note: No need to call close() explicitly as 'with' handles it.

    print("Signup successful!")
    interface()

def login():
    """
    Handles user login process.
    """
    clear_screen()
    
    username = input("Please Provide Your Username: ")
    psswrd = input("Please Give Password: ")
    
    global userpersonalfile
    userpersonalfile=username+psswrd+".txt"
    loginfile = open("signupfile.dat", "rb")
    recordchecker = pickle.load(loginfile)
    checker = 0
    for i in recordchecker:
        if username in i and psswrd in i:
            print("Login Successful!")
            checker = 1
            interface()
            break
        else:
            continue
    
    if checker == 0:
        print("Please Signup!")

def sign_or_login():
    """
    Prompts user to choose between signup and login.
    """
    action = input("Do you want to SIGNUP or LOGIN? ").strip().lower()
    
    if action == "signup":
        signup()
    elif action == "login":
        login()
    else:
        print("Invalid option. Please choose 'SIGNUP' or 'LOGIN'.")

# Main execution block
if __name__ == "__main__":
    clear_screen()
    # Connect to the MySQL database
    cnx = mysql.connector.connect(
        host='localhost',
        user='root',
        password='12345',
        database='class12project'
    )
    cursor = cnx.cursor()
    
    print("WELCOME\nPlease login or signup.")
    cart = []
    order = "no"
    orderplaced=0
    userpersonalfile=""
    sign_or_login()
