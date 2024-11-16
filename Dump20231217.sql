-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: programming_learning
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `learn_resources`
--

DROP TABLE IF EXISTS `learn_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learn_resources` (
  `resources_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`resources_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learn_resources`
--

LOCK TABLES `learn_resources` WRITE;
/*!40000 ALTER TABLE `learn_resources` DISABLE KEYS */;
INSERT INTO `learn_resources` VALUES (1,'如何开始学习编程','答案是肯定的，而且自学是学习软件编程极其重要的一个途径。不过最好的方式是自学的同时，有一个可以帮助解决问题的同事或者老师，这样可以避免卡在一个问题上太长时间。\n\n现在有很多途径可以自学，例如IT图书，或者在线视频教程，我们的网站\n也提供一些面对初学者的免费的在线互动课程，可以边学习边实践，\n你也可以尝试一下：\n\n\n\n\n\n\n2、学习编程需要什么基础？\n\n简单地说，只要具备正常的思维能力，就可以学习编程。\n\n让我们从一个实际的梗来理解这一点：如何把大象装进冰箱里？\n\n你也许知道这个搞笑问题的搞笑答案：\n\n\n\n\n\n\n这就是编程所需要的最基本的思维能力：把一个大的问题分解为若干个小的问题，解决了小的问题，大的问题就解决了，这种分而治之的思考方法是一种相当工程化的思维，也是科学技术在过去的两百年里的统治性思维。\n\n回忆一下，你在生活中难道不就是这么做的吗？编程实际上就是把生活中常见的思维活动用编程语言表达出来的一个过程。\n\n3、什么是编程语言？什么是程序？\n如果把计算机看成一个人，编程语言就是你和计算机对话的语言，你需要用计算机能听懂的语言才能和计算机对话，就像你需要用当地的语言才能和老外沟通一个道理。\n\n不过由于发明一种新的编程语言的成本相当低，而成就感相当高，因此目前已经出现了太多的编程语言。即有针对娃娃的图形化编程语言，也有中文的编程语言，更有针对不同计算平台的编程语言，试图学习所有的编程语言是不明智的，也是毫无必要的，因为编程最重要的是思维，语言只是向计算机表达你的思维的一个手段而言。\n\n在和计算机沟通时，一次说一句话是比较低效的，因为它会处理的非常快，大量的时间浪费在等待我们的输入上。所以通常是写很多句话一并告诉计算机照着做，这就是我们常说的计算机程序。例如，对于前面说到的把大象放进冰箱这个任务，可以编写如下包含三句话的计算机程序：\n\nopenFrigDoor putElephantIntoFrig closeFrigDoor\n\n基本上就是我们的操作步骤的翻译，对吧？\n\n4、我应该学习哪种编程语言？\n虽然编程语言不重要，但是初学者选择合适的编程语言却非常重要，因为它会影响你的学习效果和成就感的达成，而且，你终归需要选择一种编程语言才能开始学习编程。\n\n就像大家都喜欢学英语而不是非洲某个国家的法语变种一样，通常你选择一个大家都在用的编程语言是不会有大的问题的，例如看一下权威的TIOBE编程语言排行榜2019年3月的统计：\n\n\n不过贸然地从众选择并不适合所有的情况，每种编程语言都有它特定的优势领域和优势生态，\n我尝试根据你学编程的目的以及特定领域从业企业的主流选择给出适合初学者的几种选择，'),(2,'编程中常见的错误及解决方法','C编译的程序对语法检查并不像其它高级语言那么严格，这就给编程人员留下“灵活的余地”，但还是由于这个灵活给程序的调试带来了许多不便，尤其对初学C语言的人来说，经常会出一些连自己都不知道错在哪里的错误。看着有错的程序，不知该如何改起，通过对C的学习，积累了一些C编程时常犯的错误，以供参考。\n\n\n1、书写标识符时，忽略了大小写字母的区别。 \n\n\nmain() \n{ \n　　int a=5; \n　　printf(“%d”,A); \n} \n\n\n编译程序把a和A认为是两个不同的变量名，而显示出错信息。C认为大写字母和小写字母是两个不同的字符。习惯上，符号常量名用大写，变量名用小写表示，以增加可读性。\n\n2、忽略了变量的类型，进行了不合法的运算。 \n\n\nmain() \n{ \n　　float a,b; \n　　printf(“%d”,a%b); \n} \n%是求余运算，得到a/b的整余数。整型变量a和b可以进行求余运算，而实型变量则不允许进行“求余”运算。\n\n\n3、将字符常量与字符串常量混淆。 \n\n\nchar c; \nc=”a”; \n\n\n在这里就混淆了字符常量与字符串常量，字符常量是由一对单引号括起来的单个字符，字符串常量是一对双引号括起来的字符序列。C规定以“”作字符串结束标志，它是由系统自动加上的，所以字符串“a”实际上包含两个字符：‘a’和‘\0’，而把它赋给一个字符变量是不行的。\n\n4、忽略了“=”与“==”的区别。 \n\n\n在许多高级语言中，用“=”符号作为关系运算符“等于”。如在BASIC程序中可以写 \nif (a=3) then … \n\n\n但C语言中，“=”是赋值运算符，“==”是关系运算符。如： \n\n\nif (a==3) a=b; \n前者是进行比较，a是否和3相等，后者表示如果a和3相等，把b值赋给a。由于习惯问题，初学者往往会犯这样的错误。\n\n\n5、忘记加分号。 \n\n分号是C语句中不可缺少的一部分，语句末尾必须有分号。\n\n \na=1 \nb=2 \n\n\n编译时，编译程序在“a=1”后面没发现分号，就把下一行“b=2”也作为上一行语句的一部分，这就会出现语法错误。改错时，有时在被指出有错的一行中未发现错误，就需要看一下上一行是否漏掉了分号。 \n{ \n　　z=x+y; \n　　t=z/100; \n　　printf(“%f”,t); \n} \n　　对于复合语句来说，最后一个语句中最后的分号不能忽略不写(这是和PASCAL不同的)。\n\n6、多加分号。 \n\n\n　　对于一个复合语句，如： \n{ \n　　z=x+y; \n　　t=z/100; \n　　printf(“%f”,t); \n}; \n复合语句的花括号后不应再加分号，否则将会画蛇添足。又如： \n\n\nif (a%3==0); \nI++; \n本是如果3整除a，则I加1。但由于if (a%3==0)后多加了分号，则if语句到此结束，程序将执行I++语句，不论3是否整除a，I都将自动加1。再如： \n\n\nfor (I=0;I<5;I++); \n{ \n       scanf(“%d”,&x); \n       printf(“%d”,x); \n} \n本意是先后输入5个数，每输入一个数后再将它输出。由于for()后多加了一个分号，使循环体变为空语句，此时只能输入一个数并输出它。\n\n\n7、输入变量时忘记加地址运算符“&”。 \n\n\nint a,b; \nscanf(“%d%d”,a,b); \n这是不合法的。scanf函数的作用是：按照a、b在内存的地址将a、b的值存进去。“&a”指a在内存中的地址。\n\n8、输入数据的方式与要求不符。 \n\n\n①scanf(“%d%d”,&a,&b); \n输入时，不能用逗号作两个数据间的分隔符，如下面输入不合法： \n\n\n    3，4 \n输入数据时，在两个数据之间以一个或多个空格间隔，也可用回车键，跳格键tab。 \n②scanf(“%d,%d”,&a,&b); \nC规定：如果在“格式控制”字符串中除了格式说明以外还有其它字符，则在输入数据时应输入与这些字符相同的字符。下面输入是合法的： \n\n\n    3，4 \n此时不用逗号而用空格或其它字符是不对的。 \n    3 4 3：4 \n又如： \n\n\n    scanf(“a=%d,b=%d”,&a,&b); \n输入应如以下形式： \n    a=3,b=4\n\n'),(3,'如何提高编程技能','注意！！本文字数较多！都是干货！\n\n\n\n很多初学者都会遇到各种各样的问题,比如下面这些类型的：\n\n1、只会像高中一样跟着课程学习\n\n2、怎么可以脱离课本和教学视频自己编写一个小项目？\n\n3、停于理论，不知道如何实战\n\n4、就算跟着教程安装软件，搭配环境几乎每一步都会有这样那 样的错误\n\n5、知识遗忘得快，理论没有形成体系，自己计算机的学习只局 限在刷了一些慕课上的题，做了学校要求的实验\n\n6、学完一门课程不知道能干什么\n\n7、畏难情绪严重\n\n8、焦虑、担心找不到工作\n\n首先，看似抽出了很多条的问题，但是我把所有问题都归为一个，那就是 「如何提高编程能力」。\n\n只要编程能力、实战能力提高，上面一长串的问题自然也就不成问题了，更不用担心找工作的问题。\n\n所以今天就来聊聊如何提高编程能力这个话题。\n\n要说提高，总得先明确下什么是 「编程能力」 吧~\n\n一、什么是编程能力\n\n在我看来啊，所谓的编程能力其实说到底就是用代码解决问题的能力，无论是 Leetcode 上的还是现实世界的问题。\n\n能够从问题本身或是业务逻辑提炼出解决方案，并且用代码去实现，编程就是在干这样一件事：\n\n现实世界的问题 -> 抽象出解决方案/建模 -> 计算机语言表达\n\n可以看到，写代码只是最后一步，而我们常常说自己不会写，真的是不会写代码吗？\n\n不会写代码，也许是你连解决问题的思路都没想明白，就是说你的脑海里没有形成「第一步该做什么，第二步该做什么」这样的流程。\n\n这其实是最重要的，编码实现反而是相对简单的事情。\n\n很多大厂，一般都是高级工程师或者架构师进行领域设计、架构设计，初级工程师进行编码实现各种接口。\n\n其实编程的核心就是，你需要在心中对整个实现流程有一个大致的思路，然后用代码去一步步的实现。\n\n在实现过程中，你会遇到很多细节问题，比如数据结构的选择，用 set 还是 list，存储结构的选型，以及如何 bug free的实现。\n\n更进一步，怎样写出高性能、易读、易维护、易扩展高质量的代码，当然这都属于编码能力了。\n\n二、编程究竟难在哪\n\n“编程一点都不难，它只是和你十几年来在学校受的教育格格不入而已。”\n\n\n\n第一次看到这句话，是在知乎问题“编程究竟难在哪里？”里一位名叫@ invalid s的高赞回答。\n\n\n\n与也是这两年才开始半路学编程的我，所感所悟不谋而合。\n\n\n\n从小到大，我们受到的教育终极目的是有一个：考取理想的学校。每一张张考卷都是一个个堆砌起来的知识点：三角函数，解析几何，数列，函数…...\n\n\n\n这么多知识点，你需要做的是背下它们，或者说的更高级一点，理解它们。\n\n\n\n即便是强调思辨和分析的“文科类”，也可以靠死记硬背答题模板拿分，就连作文都要有统一的标准。\n\n\n（图片源自网络）\n绝大部分人，难以形成系统的学习方法论的意识，以至于很多人一旦脱离试卷，在社会中面对实际问题的时候，完全没有一套行之有效的方法论支撑其解决问题。\n\n\n\n而编程的核心，不是编程，不是语法，甚至不是算法或数据结构本身，恰恰是如何分解问题——发现规律建立解决问题模型，映射到合适的数据结构和算法上，最后才根据算法写程序实现。'),(4,'编程中的算法和数据结构','作者：人邮异步社区\n链接：https://www.zhihu.com/question/417957914/answer/3308441762\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n算法和数据结构并不是同一件事。严格来说，它们并不是等效的。但是，我们通常在使用的时候会互换这两个术语。为了简便，后文我们会用数据结构这个术语来指代“数据结构及其所有相关的方法”。有很多方法可以用来说明这两个术语之间的区别，但是笔者特别喜欢下面这个比喻：数据结构好比名词，而算法好比动词。笔者之所以喜欢这个比喻，是因为这个比喻不仅表明了它们的不同行为，还暗示了它们之 间的依赖性。例如，要在英语中构建一个有意义的短语，就需要同时包含名词和动词，还需要 给出主语(或宾语)以及将要执行(或承受)的动作。数据结构和算法是相互联系的，就好比一张纸的正反两面。■ 数据结构是基础，是一种通过组织内存区域来表示数据的方法。■ 算法是过程，是用来对数据进行转换的一系列指令。如果没有用来对数据进行转换的算法，数据结构就只是存放在内存芯片里的一堆二进制数； 而如果没有可以操作的数据结构，则大多数算法甚至不会出现。除此之外，每种数据结构还隐式地定义了其中可以执行的算法。例如，用来向数据结构中 添加元素的方法以及从中获取或删除元素的方法。实际上， 一些数据结构的定义就是为了能让某些算法更高效地运行而出现的，例如哈希表 以及按键进行搜索的算法|。因此，我们可以把算法和数据结构当作同义词来使用，毕竟在这个上下文中提到其中一个 时总会暗示另一个。例如，在描述数据结构时，如果要让描述是有意义且准确的，就必须同时描述数据结构的方法(算法)。书籍推荐：1、高级算法和数据结构<img src=\"https://picx.zhimg.com/50/v2-36f68b091c42255ceb8d1bc78e968a15_720w.jpg?source=1def8aca\" data-caption=\"\" data-size=\"normal\" data-rawwidth=\"621\" data-rawheight=\"413\" data-original-token=\"v2-36f68b091c42255ceb8d1bc78e968a15\" data-default-watermark-src=\"https://picx.zhimg.com/50/v2-cac562e15a6c351abd3640179a031dec_720w.jpg?source=1def8aca\" class=\"origin_image zh-lightbox-thumb\" width=\"621\" data-original=\"https://pic1.zhimg.com/v2-36f68b091c42255ceb8d1bc78e968a15_r.jpg?source=1def8aca\"/>本书的大部分章节是为对算法、编程和数学已有一些基本了解的读者编写的。如果你想复 习一下这些基本内容或者希望快速了解这部分知识，请参阅本书的附录部分。如果你事先熟悉了如下概念，则可以更好地掌握本书的内容。■ 良好的数学和代数基础，大O 符号(见附录B) 以及渐近分析的相关内容。■ 简单的数据结构。■ 附录C 中的概念。这是一本关于“高级/进阶”算法和数据结构的图书，主要介绍了用于Web 应用程序、系统 编程和数据处理领域的各种算法，旨在让读者了解如何用这些算法应对各种棘手的编码挑战， 以及如何将其应用于具体问题，以应对新技术浪潮下的“棘手”问题。本书对一些广为人知的基本算法进行了扩展，还介绍了用于改善优先队列、有效缓存、对 数据进行集群等的技术，以期读者能针对不同编程问题选出更好的解决方案。书中示例大多辅 以图解，并以不囿于特定语言的伪代码以及多种语言的代码样本加以阐释。学完本书，读者可以了解高级算法和数据结构的相关内容，并能运用这些知识让代码具备 更优性能，甚至能够独立设计数据结构，应对需要自定义解决方案的情况。本书可作为高等院校计算机相关专业本科高年级学生以及研究生的学习用书，也可供从事与 算法相关工作的开发者参考。2、数据结构与算法之美（全彩印刷）<img src=\"https://picx.zhimg.com/50/v2-c52bb4d64691ce12652f95b73fc01fef_720w.jpg?source=1def8aca\" data-caption=\"\" data-size=\"normal\" data-rawwidth=\"350\" data-rawheight=\"350\" data-original-token=\"v2-c52bb4d64691ce12652f95b73fc01fef\" data-default-watermark-src=\"https://picx.zhimg.com/50/v2-a6d00cfaaa49e7f9e6e238e28ec23e84_720w.jpg?source=1def8aca\" class=\"content_image\" width=\"350\"/>本书分为11章。第1章介绍复杂度分析方法。第2章介绍数组、链表、栈和队列这些基础的线性表数据结构。第3章介绍递归编程技巧、8种经典排序、二分查找及二分查找的变体问题。第4章介绍哈希表、位图、哈希算法和布隆过滤器。第5章介绍树相关的数据结构，包括二叉树、二叉查找树、平衡二叉查找树、递归树和B+树。第6章介绍堆，以及堆的各种应用，包括堆排序、优先级队列、求Top K、求中位数和求百分位数。第7章介绍跳表、并查集、线段树和树状数组这些比较高级的数据结构。第8章介绍字符串匹配算法，包括BF算法、RK算法、BM算法、KMP算法、Trie树和AC自动机。第9章介绍图及相关算法，包括深度优先搜索、广度优先搜索、拓扑排序、Dijkstra算法、Floyd算法、A*算法、Z小生成树算法、Z大流算法和Z大二分匹配等。第10章介绍4种算法思想，包括贪心、分治、回溯和动态规划。第11章介绍4个经典项目中的数据结构和算法的应用，包括Redis、搜索引擎、鉴权限流和短网址服务。另外，附录A为书中的思考题的解答。尽管本书的大部分代码采用Java语言编写，但本书讲解的知识与具体编程语言无关，因此，本书不但适合各种类型的研发工程师，而且可以作为高校计算机相关专业师生的学习用书和培训学校的教材。');
/*!40000 ALTER TABLE `learn_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_text` text,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `correct_option` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'Which programming language is known for its flexibility?','Java','Python','C++','JavaScript','A'),(4,'Which programming language is often used for web development and has frameworks like Django and Flask?','Java','Python','C++','JavaScript','B'),(8,'下列哪种语言是一种脚本语言，常用于前端开发和网页交互？','Java','Python','C++','JavaScript','D'),(9,'在面向对象编程中，下列哪种语言通过类和对象的概念来组织代码？','Java','Python','C++','JavaScript','A'),(10,'哪种语言被广泛用于数据科学和人工智能领域，拥有强大的科学计算库如NumPy和Pandas？','Java','Python','C++','JavaScript','B'),(11,'在计算机科学中，什么是“算法”？','一种编程语言','一种数据库','一种排序算法','一组执行特定任务的指令序列','D'),(12,'下列哪个术语通常用于描述通过对程序进行测试和分析来找到和修复错误？','Debugging','Encryption','Optimization','Authentication','A'),(13,'什么是“Git”？','一种编程语言','一种数据库','版本控制系统','一种网络协议','C'),(14,'JavaScript 是一种什么类型的语言？','编译型语言','机器语言','脚本语言','面向对象语言','C'),(15,'HTTP 是用于什么目的的协议？','文件传输','电子邮件','网页浏览','数据库连接','C'),(16,'在计算机网络中，IP 地址用于什么目的？','标识计算机硬件','传输电子邮件','执行数学运算','创建网页布局','A'),(17,'什么是 SQL 的作用？','处理图形操作','管理文件系统','编写网页代码','处理数据库操作','D'),(18,'在面向对象编程中，封装是指什么？','隐藏对象实现细节','创建新对象','连接不同对象','更改对象状态','A'),(19,'什么是“云计算”？','一种天气现象','一种网络连接','一种计算机服务','一种电子设备','C');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `role` varchar(10) NOT NULL,
  `read_permission` tinyint(1) DEFAULT NULL,
  `write_permission` tinyint(1) DEFAULT NULL,
  `delete_permission` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES ('op_user',1,1,1),('user_read',1,0,0);
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answer_records`
--

DROP TABLE IF EXISTS `user_answer_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answer_records` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `unique_user_question` (`user_id`,`question_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `user_answer_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_answer_records_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answer_records`
--

LOCK TABLES `user_answer_records` WRITE;
/*!40000 ALTER TABLE `user_answer_records` DISABLE KEYS */;
INSERT INTO `user_answer_records` VALUES (4,10,2,'D','2023-12-14 10:28:11'),(19,11,2,NULL,'2023-12-14 11:52:08'),(47,11,11,NULL,'2023-12-14 12:44:42'),(48,11,12,'A','2023-12-14 12:44:42'),(49,11,9,'B','2023-12-14 12:44:42'),(50,11,8,NULL,'2023-12-14 12:47:57'),(52,11,13,'C','2023-12-14 12:47:57'),(53,11,10,'B','2023-12-14 12:47:57'),(57,11,15,'C','2023-12-14 12:47:57'),(58,11,19,NULL,'2023-12-14 12:47:57'),(59,11,4,'B','2023-12-14 12:47:57'),(62,11,18,'A','2023-12-14 12:49:41'),(63,11,14,'C','2023-12-14 12:49:41'),(69,11,16,NULL,'2023-12-14 12:49:41'),(71,11,17,'D','2023-12-14 12:59:29'),(121,12,11,'D','2023-12-15 02:01:15'),(122,12,14,'A','2023-12-15 02:02:27'),(123,12,15,'A','2023-12-15 02:02:27'),(127,14,15,'A','2023-12-15 03:42:23'),(128,14,19,'D','2023-12-15 03:42:23'),(129,14,8,'B','2023-12-15 03:42:36'),(130,14,14,'B','2023-12-15 03:42:36'),(132,14,2,'C','2023-12-15 03:42:36'),(133,14,11,'A','2023-12-15 03:42:36'),(134,14,16,'D','2023-12-15 03:42:36'),(135,14,13,NULL,'2023-12-15 03:42:36'),(136,14,17,NULL,'2023-12-15 03:42:36'),(137,14,4,NULL,'2023-12-15 03:42:36'),(138,10,11,'A','2023-12-15 05:24:56'),(139,10,17,'A','2023-12-15 05:24:56'),(140,10,15,'B','2023-12-15 05:24:56'),(141,10,18,'C','2023-12-15 05:24:56'),(143,10,10,'A','2023-12-15 05:24:56'),(144,10,9,'C','2023-12-15 05:24:56'),(145,10,4,'A','2023-12-15 05:24:56'),(146,15,19,'D','2023-12-15 08:01:58'),(147,15,15,'A','2023-12-15 08:01:58'),(148,15,4,'D','2023-12-15 08:01:58'),(149,15,13,'D','2023-12-15 08:01:58'),(150,15,10,'A','2023-12-15 08:01:58'),(151,15,14,'D','2023-12-15 08:01:58');
/*!40000 ALTER TABLE `user_answer_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_answer_view`
--

DROP TABLE IF EXISTS `user_answer_view`;
/*!50001 DROP VIEW IF EXISTS `user_answer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_answer_view` AS SELECT 
 1 AS `record_id`,
 1 AS `user_id`,
 1 AS `question_id`,
 1 AS `answer`,
 1 AS `timestamp`,
 1 AS `question_text`,
 1 AS `option_a`,
 1 AS `option_b`,
 1 AS `option_c`,
 1 AS `option_d`,
 1 AS `correct_option`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_scores`
--

DROP TABLE IF EXISTS `user_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_scores` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `total_questions` int DEFAULT NULL,
  `correct_answers` int DEFAULT NULL,
  `score_percentage` decimal(5,2) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_scores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_scores`
--

LOCK TABLES `user_scores` WRITE;
/*!40000 ALTER TABLE `user_scores` DISABLE KEYS */;
INSERT INTO `user_scores` VALUES (4,10,1,1,1.00,'2023-12-14 08:46:29'),(5,10,3,3,1.00,'2023-12-14 08:58:43'),(6,10,3,3,1.00,'2023-12-14 09:06:25'),(7,10,3,3,99.00,'2023-12-14 09:07:34'),(8,10,3,3,99.00,'2023-12-14 09:07:59'),(9,10,3,3,99.00,'2023-12-14 09:08:01'),(10,10,3,3,99.00,'2023-12-14 09:08:02'),(11,10,3,3,99.00,'2023-12-14 09:08:03'),(12,10,2,3,-33.00,'2023-12-14 09:09:46'),(13,10,2,3,33.00,'2023-12-14 09:10:25'),(14,10,2,3,33.00,'2023-12-14 09:11:16'),(15,10,2,3,33.00,'2023-12-14 09:12:30'),(16,10,3,3,0.00,'2023-12-14 09:13:57'),(17,10,1,3,66.00,'2023-12-14 09:15:18'),(18,10,0,3,99.00,'2023-12-14 09:15:50'),(19,10,1,3,66.00,'2023-12-14 10:16:32'),(20,10,2,3,33.00,'2023-12-14 10:18:55'),(21,10,3,3,0.00,'2023-12-14 10:20:49'),(22,10,3,3,0.00,'2023-12-14 10:24:21'),(23,10,3,3,0.00,'2023-12-14 10:28:11'),(24,10,1,3,66.00,'2023-12-14 10:28:25'),(25,10,3,3,0.00,'2023-12-14 10:28:40'),(26,10,3,3,0.00,'2023-12-14 11:41:38'),(27,10,3,3,0.00,'2023-12-14 11:43:08'),(28,10,3,3,0.00,'2023-12-14 11:43:46'),(29,10,3,3,0.00,'2023-12-14 11:44:22'),(30,10,1,3,66.00,'2023-12-14 11:44:48'),(31,11,3,3,0.00,'2023-12-14 11:52:08'),(32,11,2,3,33.00,'2023-12-14 11:54:28'),(33,11,3,3,0.00,'2023-12-14 11:56:21'),(34,11,3,3,0.00,'2023-12-14 11:57:44'),(35,11,3,3,0.00,'2023-12-14 12:00:11'),(36,11,3,3,0.00,'2023-12-14 12:02:43'),(37,11,3,3,0.00,'2023-12-14 12:04:04'),(38,11,3,3,0.00,'2023-12-14 12:13:34'),(39,11,3,3,0.00,'2023-12-14 12:15:38'),(40,11,3,3,0.00,'2023-12-14 12:16:18'),(41,11,2,3,33.00,'2023-12-14 12:29:00'),(42,11,3,3,0.00,'2023-12-14 12:44:42'),(43,11,10,10,0.00,'2023-12-14 12:47:57'),(44,11,9,10,10.00,'2023-12-14 12:49:41'),(45,11,3,3,0.00,'2023-12-14 12:59:29'),(46,11,10,10,0.00,'2023-12-14 12:59:44'),(47,11,10,10,0.00,'2023-12-14 13:01:30'),(48,11,3,3,0.00,'2023-12-14 13:01:40'),(49,11,3,3,0.00,'2023-12-14 13:02:02'),(50,11,3,3,0.00,'2023-12-14 13:03:25'),(51,11,2,3,33.00,'2023-12-14 13:05:59'),(52,11,3,3,0.00,'2023-12-14 13:06:08'),(53,11,2,3,33.00,'2023-12-14 13:06:34'),(54,11,1,10,90.00,'2023-12-14 13:07:06'),(55,12,2,3,33.00,'2023-12-15 02:01:15'),(56,12,2,3,33.00,'2023-12-15 02:02:27'),(57,11,3,3,0.00,'2023-12-15 03:02:48'),(58,14,2,3,33.00,'2023-12-15 03:42:23'),(59,14,9,10,10.00,'2023-12-15 03:42:36'),(60,10,8,10,20.00,'2023-12-15 05:24:56'),(61,15,6,10,40.00,'2023-12-15 08:01:58');
/*!40000 ALTER TABLE `user_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `role` (`role`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role_permissions` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'user1','password1','user_read'),(8,'user2','password2','user_read'),(9,'user3','password3','user_read'),(10,'1','1','user_read'),(11,'2','2','user_read'),(12,'3','3','user_read'),(13,'4','4','user_read'),(14,'5','5','user_read'),(15,'op','admin','op_user'),(16,'6','6','user_read');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'programming_learning'
--

--
-- Dumping routines for database 'programming_learning'
--
/*!50003 DROP FUNCTION IF EXISTS `user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `user_login`(
    p_username VARCHAR(50),
    p_password VARCHAR(255)
) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE user_count INT;

    SELECT COUNT(*)
    INTO user_count
    FROM users
    WHERE username = p_username AND password = p_password;

    RETURN user_count > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_question` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_question`(
    IN p_question_text TEXT,
    IN p_option_a VARCHAR(255),
    IN p_option_b VARCHAR(255),
    IN p_option_c VARCHAR(255),
    IN p_option_d VARCHAR(255),
    IN p_correct_option CHAR(1)
)
BEGIN
    INSERT INTO questions (question_text, option_a, option_b, option_c, option_d, correct_option)
    VALUES (p_question_text, p_option_a, p_option_b, p_option_c, p_option_d, p_correct_option);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_score` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_score`(
	IN p_user_id INT,
    IN p_total_questions INT,
    IN p_correct_answers INT,
    IN p_score_percentage DECIMAL(5, 2)
)
BEGIN
	INSERT INTO user_scores(user_id, total_questions, correct_answers, score_percentage) 
    VALUE (p_user_id, p_total_questions, p_correct_answers, p_score_percentage);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_role`(
	IN p_role VARCHAR(10),
    IN p_read_permission BOOLEAN,
    IN p_write_permission BOOLEAN,
    IN p_delete_permission BOOLEAN
)
BEGIN
	INSERT INTO role_permission(role, read_permission, write_permission, delete_premission) 
    VALUE(p_role, p_read_permission, p_write_permission, p_delete_permission);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_question` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_question`(
    IN p_question_id INT
)
BEGIN
	DELETE FROM user_answer_records WHERE question_id = p_question_id;
    DELETE FROM questions WHERE question_id = p_question_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_user_answer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user_answer`(
    IN p_user_id INT,
    IN p_question_id INT,
    IN p_answer VARCHAR(1)
)
BEGIN
    INSERT INTO user_answer_records (user_id, question_id, answer)
    VALUES (p_user_id, p_question_id, p_answer)
    ON DUPLICATE KEY UPDATE answer = p_answer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_role`(
	IN p_role VARCHAR(10),
    IN p_read_permission BOOLEAN,
    IN p_write_permission BOOLEAN,
    IN p_delete_permission BOOLEAN
)
BEGIN
	 UPDATE role_permission 
     SET 
		read_permission = p_read_permission,
        write_permission = p_write_permission,
        delete_permission = p_delete_permission
	WHERE 
		role = p_role;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_role_permissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_role_permissions`(
	IN p_role VARCHAR(10),
    IN p_read_pemission BOOLEAN,
    IN p_write_permission BOOLEAN,
    IN p_delete_permission BOOLEAN
)
BEGIN
    DECLARE num_role INT DEFAULT 0;
    SELECT COUNT(*) INTO num_role
    FROM role_permissions
    WHERE role = p_role;
    
    IF num_role <= 0 THEN
		INSERT INTO role_premissions(role, read_permission, write_permission, delete_permission)
        VALUE(p_role, p_read_pemission, p_write_permission, p_delete_permission);
	ELSE
		UPDATE role_premissions
        SET
			read_pemission = p_read_pemission,
            write_permission = p_write_permission,
			delete_permission = p_delete_permission
		WHERE role=p_role;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_register`(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255),
    IN p_role VARCHAR(10)
)
BEGIN
    DECLARE num_user INT DEFAULT 0;

    -- 检查用户名是否重复
    SELECT COUNT(*) INTO num_user
    FROM users
    WHERE username = p_username;

    -- 如果用户名重复，则抛出异常
    IF num_user > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Username already exists';
    ELSE
        -- 在这里执行注册逻辑，例如插入用户数据
        INSERT INTO users (username, password, role) VALUES (p_username, p_password, p_role);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `user_answer_view`
--

/*!50001 DROP VIEW IF EXISTS `user_answer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_answer_view` AS select `uar`.`record_id` AS `record_id`,`uar`.`user_id` AS `user_id`,`uar`.`question_id` AS `question_id`,`uar`.`answer` AS `answer`,`uar`.`timestamp` AS `timestamp`,`q`.`question_text` AS `question_text`,`q`.`option_a` AS `option_a`,`q`.`option_b` AS `option_b`,`q`.`option_c` AS `option_c`,`q`.`option_d` AS `option_d`,`q`.`correct_option` AS `correct_option` from (`user_answer_records` `uar` join `questions` `q` on((`uar`.`question_id` = `q`.`question_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 18:47:30
