

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `library-system`
--


-- --------------------------------------------------------
-- RAW Table:

CREATE TABLE raw_data (
    bid INT,
    title VARCHAR(255),
    author VARCHAR(255),
    category VARCHAR(100),
    book_status VARCHAR(50),
    category_id INT,
    shelf_id INT,
    author_id INT,
    transaction_id INT,
    Student_Name VARCHAR(255),
    Student_ID INT,
    major VARCHAR(100),
    age INT,
    Issued_Date DATE
);

# Rishit, Maheshwaran, Srihari 
INSERT INTO raw_data (bid, title, author, category, book_status, category_id, shelf_id, author_id, transaction_id, Student_Name, Student_ID, major, age, Issued_Date)
VALUES
(1, 'Steve Jobs', 'Walter Issacson', 'Biography', 'issued', 1, 1, 15, 7, 'Alexander Lewis', 7, 'Data Science', 26, '2024-03-19'),
(2, 'Discovery of India', 'Jawaharlal Nehru', 'History', 'issued', 2, 2, 27, 10, 'Mark Taylor', 10, 'Arts', 25, '2023-12-10'),
(3, 'My Experiments with Truth', 'Mahatma Gandhi', 'Autobiography', 'issued', 3, 1, 5, 1, 'John Doe', 1, 'Arts', 18, '2024-03-18'),
(4, 'Object Oriented Programming with C++', 'E Balagurusamy', 'Education', 'issued', 4, 2, 35, 12, 'Ava Garcia', 12, 'Law', 19, '2024-01-05'),
(5, 'Thinking with type', 'Ellen Lupton', 'Arts', 'issued', 5, 2, 54, 14, 'Jude Bellingham', 14, 'Math', 19, '2024-03-11'),
(6, 'The Photographer''s', 'Lindsay Adler', 'Photography', 'issued', 6, 4, 7, 3, 'Sophia Diaz', 3, 'Arts', 21, '2024-01-25'),
(7, 'Think and Grow', 'Napoleon Hill', 'Economics', 'issued', 7, 3, 41, 13, 'Martin Tyler', 13, 'Medical', 26, '2024-03-25'),
(8, 'The Fifth Discipline : The Art', 'Peter M.Senge', 'Management', 'issued', 22, 3, 38, 13, 'Martin Tyler', 13, 'Medical', 26, '2024-01-05'),
(9, 'A Theory of Justice', 'John Rawls', 'Law', 'issued', 8, 3, 19, 9, 'Benjamin Murphy', 9, 'Data Science', 27, '2023-12-10'),
(10, 'Eat to Live', 'Joel Fuhrman', 'Health', 'issued', 9, 6, 45, 14, 'Jude Bellingham', 14, 'Math', 19, '2024-01-24'),
(11, 'City of Heavenly Fire', 'Cassandra Clare', 'Fiction', 'available', 10, 7, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Da Vinci Code', 'Dan Brown', 'Fiction', 'available', 10, 7, 55, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'War and Peace', 'Leo Tolstoy', 'Philosophical fiction', 'issued', 11, 5, 18, 9, 'Benjamin Murphy', 9, 'Data Science', 27, '2024-01-17'),
(14, 'Python For All', 'John Shovic', 'Education', 'available', 4, 2, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Automate The Boring Stuff With Python', 'Al Sweigart', 'Education', 'available', 4, 2, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Wings Of Fire', 'APJ Abdul Kalam', 'Autobiography', 'available', 3, 1, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Ikigai', 'Hector Garcia', 'Personal Development', 'available', 13, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Who Will Cry When You Will Die', 'Robin Sharma', 'Personal Development', 'available', 13, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Business', 'available', 14, 3, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Immortals of Meluha', 'Amish Tirpathi', 'High Fantasy', 'available', 15, 7, 56, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'A Brief History Of Time', 'Stephen Hawking', 'SPACE', 'issued', 16, 8, 10, 5, 'Harper Lee', 5, 'Computer Science', 15, '2024-01-17'),
(22, 'I Know Why The Cage Bird Sings', 'Maya Angelou', 'Story', 'available', 17, 7, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Lord Of Flies', 'William Golding', 'Fiction', 'issued', 10, 7, 33, 12, 'Ava Garcia', 12, 'Law', 19, '2023-12-30'),
(24, 'Lorna Doone', 'R.D. Blackmore', 'Fiction', 'issued', 10, 7, 24, 10, 'Mark Taylor', 10, 'Arts', 25, '2024-03-18'),
(25, 'Jamaica Inn', 'Daphne Du Maurier', 'Fiction', 'issued', 10, 7, 29, 11, 'Emily Brown', 11, 'Computer Science', 18, '2024-02-11'),
(26, 'Kidnapped', 'Robert Louis Stevenson', 'Fiction', 'available', 10, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Treasure Island', 'Robert Louis Stevenson', 'Fiction', 'available', 10, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'The Call Of The Wild', 'Jack London', 'Fiction', 'available', 10, 7, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Charlotte''s Web', 'E.B. White', 'Fiction', 'available', 10, 7, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'The Wind In The Willows', 'Kenneth Grahame', 'Fiction', 'available', 10, 7, 22, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Being and Time', 'Martin Heidegger', 'Philosophy', 'available', 18, 5, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'The Republic', 'Plato', 'Philosophy', 'issued', 18, 5, 17, 8, 'Amelia Scott', 8, 'Arts', 26, '2024-03-19'),
(33, 'Critique of Pure Reason', 'Immanuel Kant', 'Philosophy', 'available', 18, 5, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'The Prince', 'Niccolò Machiavelli', 'Philosophy', 'available', 18, 5, 25, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Ethics', 'Baruch Spinoza', 'Philosophy', 'available', 18, 5, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Long Walk To Freedom', 'Nelson Mandela', 'Autobiography', 'available', 3, 1, 23, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'The Diary Of A Young Girl', 'Anne Frank', 'Autobiography', 'available', 3, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Autobiography', 'Mark Twain', 'Autobiography', 'available', 3, 1, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Mein Kampf', 'Adolf Hitler', 'Autobiography', 'available', 3, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Freakonomics', 'Steven D. Levitt and Stephen J. Dubner', 'Economics', 'issued', 7, 3, 8, 4, 'William Sanchez', 4, 'Arts', 18, '2024-02-11'),
(41, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Economics', 'available', 7, 3, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '23 Things They Don''t Tell You About Capitalism', 'Ha-Joon Chang', 'Economics', 'available', 7, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Animal Spirits', 'George A. Akerlof and Robert J. Shiller', 'Economics', 'available', 7, 3, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'The Black Swan', 'Nassim Nicholas Taleb', 'Economics', 'issued', 7, 3, 32, 11, 'Emily Brown', 11, 'Computer Science', 18, '2024-03-06'),
(45, '1984', 'George Orwell', 'Story', 'available', 17, 7, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'The Lord Of The Rings', 'J.R.R. Tolkien', 'Story', 'issued', 17, 7, 37, 13, 'Martin Tyler', 13, 'Medical', 26, '2024-03-19'),
(47, 'The Kite Runner', 'Khaled Hosseini', 'Story', 'available', 17, 7, 34, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Harry Potter', 'J.K. Rowling', 'Story', 'available', 17, 7, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'The Book Thief', 'Markus Zusak', 'Story', 'available', 17, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'A History of the Twentieth Century', 'Martin Gilbert', 'History', 'available', 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Guns, Germs, and Steel', 'Jared Diamond', 'History', 'issued', 2, 2, 6, 2, 'Jane Smith', 2, 'Medical', 30, '2024-03-06'),
(52, 'A World Lit Only by Fire', 'William Manchester', 'History', 'issued', 2, 2, 12, 6, 'James Clark', 6, 'Law', 17, '2023-12-24'),
(53, 'The Crusades', 'Thomas Asbridge', 'History', 'available', 2, 2, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Over The Edge Of The World', 'Laurence Bergreen', 'History', 'available', 2, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'A Beautiful Mind', 'Sylvia Nasar', 'Biography', 'available', 1, 1, 49, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'The Enigma', 'Andrew Hodges', 'Biography', 'available', 1, 1, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Alexander Hamilton', 'Ron Chernow', 'Biography', 'available', 1, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Barracoon', 'Zora Neale Hurston', 'Biography', 'available', 1, 1, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'CHURCHILL : A Life', 'Martin Gilbert', 'Biography', 'available', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'A Tale of Two Cities', 'Charles Dickens', 'Historical novel', 'issued', 20, 2, 59, 14, 'Jude Bellingham', 14, 'Math', 19, '2024-01-17'),
(61, 'Les Misérables', 'Victor Hugo', 'Historical fiction', 'available', 21, 7, 26, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO author (authorid, name,status)
SELECT DISTINCT author_id, author, "Enable" as status
FROM raw_data

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `rackid` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `publisherid` int(11) NOT NULL,
  `isbn` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_copy` int(5) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO book (bookid, categoryid, authorid, rackid, name, picture , publisherid,
isbn,no_of_copy,status,added_on,updated_on)
SELECT distinct bid, category_id , author_id, shelf_id, title , "" as picture, 0 as publisherid,
0 as isbn, 0 as no_of_copy, "Enable" as status, "2022-06-12 11:12:48" as added_on, "2022-06-12 11:12:48" as updated_on
FROM raw_data;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO category (categoryid, name, status)
SELECT DISTINCT category_id, category, "Enable" as status
FROM raw_data;

-- --------------------------------------------------------

--
-- Table structure for table `issued_book`
--

CREATE TABLE `issued_book` (
  `issuebookid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issue_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `expected_return_date` datetime NOT NULL,
  `return_date_time` datetime NOT NULL,
  `status` enum('Issued','Returned','Not Return') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issued_book`
--

INSERT INTO `issued_book` (`issuebookid`, `bookid`, `userid`, `issue_date_time`, `expected_return_date`, `return_date_time`, `status`) VALUES
(1, 2, 2, '2022-06-12 15:33:45', '2022-06-15 16:27:59', '2022-06-16 16:27:59', 'Not Return'),
(3, 1, 2, '2022-06-12 18:46:07', '2022-06-30 18:46:02', '2022-06-12 18:46:14', 'Returned'),
(4, 7, 2, '2023-03-25 14:32:57', '2023-03-25 14:32:47', '2023-03-26 14:32:51', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `name`, `status`) VALUES
(2, 'Amazon publishing', 'Enable'),
(3, 'Penguin books ltd.', 'Enable'),
(4, 'Vintage Publishing', 'Enable'),
(5, 'Macmillan Publishers', 'Enable'),
(6, 'Simon &amp; Schuster', 'Enable'),
(7, 'HarperCollins', 'Enable'),
(8, 'Plum Island', 'Enable'),
(9, 'O’Reilly', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE `rack` (
  `rackid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rack`
--

INSERT INTO rack (rackid, name, status)
VALUES
    (3, "R3", "Enable"),
    (4, "R4", "Enable"),
    (5, "R5", "Enable"),
    (6, "R6","Enable"),
    (7, "R7", "Enable"),
    (8, "R8" ,"Enable");
-- --------------------------------------------------------
--
-- Table structure for table `Student Data`
--ls


-- Srihari
-- Student Data
CREATE TABLE student_data (
  Student_ID INT PRIMARY KEY,
  transaction_id INT,
  Student_name VARCHAR(255) NOT NULL,
  Age INT,
  Major VARCHAR(255)
);

-- --------------------------------------------------------
--
-- Table structure for table `Transactions`
--

CREATE TABLE Transactions (
  transaction_id INT,
  book_id INT,
  Issued_Date DATE,
  Age INT,
  Major VARCHAR(255),
  Student_ID INT,
  FOREIGN KEY (book_id) REFERENCES Books(book_id),
  FOREIGN KEY (Student_ID) REFERENCES student_data(Student_ID)
);

-- --------------------------------------------------------
--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role` enum('admin','user') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(2, 'Mark', 'Wood', 'mark@webdamn.com', '123', 'user'),
(3, 'George', 'Smith', 'goerge@webdamn.com', '123', 'admin'),
(4, 'Adam', NULL, 'adam@webdamn.com', '123', 'admin'),
(6, 'aaa', 'bbbbb', 'ab@webdamn.com', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `issued_book`
--
ALTER TABLE `issued_book`
  ADD PRIMARY KEY (`issuebookid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
  ADD PRIMARY KEY (`rackid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `issued_book`
--
ALTER TABLE `issued_book`
  MODIFY `issuebookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
  MODIFY `rackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

