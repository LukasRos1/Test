<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>RAG</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="script.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="animate.css" />
    <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <link rel="shortcut icon" href="rag-logo-vector.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
</head>

<body>
    <header>
        <nav id="navigation">
            <a href="index.html" id="title">Rate A Game</a>
            <a href="index.html"><img id="logo" src="RAG logo.png"/></a>
            <input type="search" id="searchbar" placeholder="Search here...">
            <div id="menu">
				
				<a href=
				<%
				String username = (String) session.getAttribute("loginName");
				if (null != username) {
					out.print("LogOutServlet"); //�ndra sen till profile page
				} else {
					out.print("login.html");
				}
				
				%>
				>	
				<%
					System.out.println(session);
					String str = (String) session.getAttribute("loginName");
					System.out.println(session);
					if (null != username) {
						out.print("Sign Out");
					    } else {
					    	out.print("Sign In");
					    }					
				%>			
				</a>
				
				<a href="top10.html"><% // future logout%></a> 
				
				<a href="top10.html">Top 10</a>
                <a href="news.html">News</a>
            </div>
        </nav>
    </header>
    <div id="mainwrap">
        <article id="topwrap">
            <div id="left-container">
                <h2>
                    Top games right now:
                </h2>
                <p>
                    Apex Legends
                </p>
                <p>
                    Resident Evil 2
                </p>
                <p>
                    Devil May Cry 5
                </p>
                <p>
                    Mortal Combat 11
                </p>

            </div>
            <div id="middle-container">
                <div class="slide-container">
                    <span id="slider-image-1"></span>
                    <span id="slider-image-2"></span>
                    <span id="slider-image-3"></span>
                    <div class="image-container">
                        <img src="rdr2.jpg" alt="" class="slider-image">
                        <section>
                            <div id="img1_text">
                                <p>
                                    Re-live the wild west!
                                </p>
                                <button>
                                    Read more
                                </button>
                            </div>
                        </section>
                        <img src="horizonzerodawn.jpg" alt="" class="slider-image">
                        <section>
                            <div id="img2_text">
                                <p>
                                    Earth is ours no more!   
                                </p>
                                <button>
                                    Read more
                                </button>
                            </div>
                        </section>
                        <img src="fallout76.jpg" alt="" class="slider-image">
                        <section>
                            <div id="img3_text">
                                <p>
                                    Welcome to wild Appalachia!
                                </p>
                                <button>
                                    Read more
                                </button>
                            </div>
                        </section>
                    </div>
                    <div class="button-container">
                        <a href="#slider-image-1" class="slider-button"></a>
                        <a href="#slider-image-2" class="slider-button"></a>
                        <a href="#slider-image-3" class="slider-button"></a>
                    </div>
                </div>
                <div id="middle-second">
                    <p>
                        <a href="titles/diablo3/diablo3.html"><img src="titles/diablo 3/diablo3cover.jpg"
                        alt="Diablo 3 Cover"></a>
                        Diablo 3
                    </p>
                    <p>
                        <a href="titles/gta5/gta5.html"><img src="titles/gta5/gta5cover.jpg" alt="GTA 5 Cover"></a>
                        GTA 5
                    </p>
                    <p>
                        <a href="titles/anthem/anthem.html"><img src="titles/anthem/anthemcover.jpeg"
                                alt="Anthem Cover"></a>
                        Anthem
                    </p>
                    <p>
                        <a href="titles/farcry new dawn/farcrynewdawn.html"><img src="titles/Farcry New Dawn/farcrynewdawncover.jpg" alt="Farcry New Dawn Cover"></a>
                        FarCry New Dawn
                    </p>
                    <p>
                        <a href="titles/battlefield 5/battlefield5.html"><img
                                src="titles/battlefield 5/battlefield5cover.jpg" alt="Battlefield 5 Cover"></a>
                        Battlefield 5
                    </p>
                    <p>
                        <a href="titles/Apex Legends/apexlegends.html"><img
                                src="titles/Apex Legends/538006-apex-legends-xbox-one-front-cover.jpg" alt="apexlegends cover"></a>
                                Apex Legends
                    </p>
                    <p>
                        <a href="titles/MortalCombat11/mortalkombat11.html"><img
                                src="titles/MortalCombat11/220px-Mortal_Kombat_11_cover_art.png" alt="mortal kombat 11 cover"></a>
                                Mortal Combat XI
                    </p>
                    <p>
                        <a href="titles/MertroExodus/metroexodus.html"><img
                                src="titles/MertroExodus/220px-Cover_Art_of_Metro_Exodus.png" alt="metroexodus cover"></a>
                                Metro Exodus
                    </p>
                </div>
            </div>
            <div id="right-container">
                <h2>
                    Recent reviews:
                </h2>
            </div>

        </article>
        <div id="bottom-container">
            <h2>Latest news: </h2>
            <p>
                1
            </p>
            <p>
                2
            </p>
            <p>
                3
            </p>
        </div>
    </div>
    <footer>
        <p>
            Projektgrupp 6<br> Copyright 2019
        </p>
    </footer>

</body>

</html>