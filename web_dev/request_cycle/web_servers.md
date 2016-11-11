1. What are some of the key design philosophies of the Linux operating system?
There are 9 major design philosophies of Linux
Small is Beautiful
Each program does one thing well
Prototype as soon as possible
Choose portibility over efficiency
Store data in flat text files
Use software leverage
Use shell scripts to increase leverage and portability
Avoid captive user interfaces
Make every program a filter

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A virtual private server is a server that is hosted in a virtual environment on either a local or networked machine. The server can be running a number of different operating systems but linux is most common. The server can then have a port that is opened up that allows users to connect to the server over the internet and access files on that server. A VPS is typically less expensive than a physical server, and it has abilities to balance the network traffic and allocate resources accordingly.

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
It's a bad idea to run programs as the root user on a linux system because the root user has permissions to the file structure that a regular user wouldn't have. It's always best practice to allow a user to run standard applications with user permissions, and elevate certain privelages on an as-needed basis for the root user to amdministrate.