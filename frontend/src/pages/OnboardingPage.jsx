import "./App.css";

function App() {
    return (
        <>
            <nav>
                <div className="nav-left">
                    <div className="logo-box">
                        <span className="logo-icon">⌘</span>
                    </div>
                    <div className="name">DSABuddy</div>
                </div>
                <div className="skip">Skip Setup</div>
            </nav>


            <main>
                <div className="content">
                    <div className="container1">
                        <div className="box1">SETUP PROGRESS</div>
                        <div className="box2">Step 1 of 2</div>
                    </div>

                    <div className="container2">
                        <div className="box3"></div>
                        <div className="box4"></div>
                    </div>

                    <div className="container3">Initialize Profile</div>
                    <div className="container4">
                        Configure your identity and link your coding environment
                    </div>

                    <div className="container5">
                        <div className="box5">Avatar</div>
                        <div className="box6">What should we call you?</div>
                    </div>

                    <div className="container6">
                        <div className="box7 avatar">
                            <span className="avatar-icon">👤</span>
                        </div>
                        <div className="box8">
                            <input
                                type="text"
                                className="field"
                                placeholder="Enter Your UserName"
                            />
                            <div className="cont">
                                This will be visible on the leaderboards.
                            </div>
                        </div>
                    </div>

                    <div className="container7"></div>

                    <div className="container8">Sync Platforms</div>

                    <div className="container9">
                        <div className="box9">Why do we need this?</div>
                        <div className="box10">
                            We use these ID&apos;s to fetch your submission stats and contest
                            ratings automatically. This helps us to track your progress and
                            recommend relevant problems.
                        </div>
                    </div>

                    <div className="container10">
                        <div className="platform">
                            <img
                                src="https://leetcode.com/static/images/LeetCode_logo_rvs.png"
                                className="platform-icon"
                                alt="LeetCode"
                            />

                            <div>
                                <div className="site">LeetCode ID</div>
                                <input type="text" placeholder="username" />
                            </div>
                        </div>


                        <div className="platform">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/4/40/HackerRank_Icon-1000px.png"
                                className="platform-icon" alt="Hacker Rank" />
                            <div>
                                <div className="site">Hacker Rank</div>
                                <input type="text" placeholder="username" />
                            </div>
                        </div>

                        <div className="platform">
                            <img src="https://play-lh.googleusercontent.com/zaldniLc2XTBhNlCDR4hcD5bcRYHZ56_lO0yA2Qu-cADShy1_HDWrICSvv0EPTX79WY"
                                className="platform-icon" alt="Codeforces Handle" />
                            <div>
                                <div className="site">Codeforces Handle</div>
                                <input type="text" placeholder="handle" />
                            </div>
                        </div>
                        <div className="platform">
                            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxETDxUSEhAWFRAXGRMWFhYVFhUXFxYaFxUYFxgYGBUYHiggGBolGxcdIzUiJSkrLi4wGB8zODMtNygtLisBCgoKDg0OGhAQGzAmHyUyLy8tMS0rLS0tLS0tLy0tLS0tLSsvLS0tLS0tLS0tLS0tLS0tKy0tLS0uLS0tLTUtLf/AABEIAL0BCwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcDBAUCCAH/xABHEAABAwIDBAcEBQkFCQAAAAABAAIDBBEFEiEGMVFxBxMiQWGBkTKhscEUUlOS0RUzQkOTosLS8CNUYoLhFiQ0ZHJzdITD/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT/xAAhEQEBAAIBBQEBAQEAAAAAAAAAAQIREgMTITFRQWHRwf/aAAwDAQACEQMRAD8Ao1ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERWbsl0P1FTCyoqJuoiktlaG55CCCbuBIDARu1J13BS3QrJZ2UchGYRvLeIaSPWy+nMD6OcOoGB0UXW1BLQJp7PcLnUtbbKwgXsQL8SVLyexv05rNzXT4uIX4vrSvooZmf2sMcgOtnsa7Q8woLtB0cUE4d1cfUSdzovZvbvjPZtytzU7kXjVCouvtLs9PRTdVKNDqx49l44g8eI3j0XIXRkREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQdrYuiZNidJE+2R88LXA94LxceY0819WUhd1U0btZIyQDa17ND43W9PRfIFBVvhmjmYbSRvY9p4OY4OHvC+vsDr2Tlk7PzdRBDKPK9xzAe0eS55z01GeulBiieNxdGRycCB8V5r5LQu5H36LAGn8nt4saw/s3A/wrFiMl2uHL4hcrWpH5MQG8h8lzXNsPHeeZ3raqZNPT4rSqX6e5StSI7tVgbK2mfE6wd7UbvqvG48juPgV89OaQSDvGi+idqMXbSUkkxOoFmD6zzo0euvIFfOxK7dP0xn7fiIi6MCIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIC+iugjEjLhrGE9qnlmh36hkrRK0nwzgjyXzqrP6AcYEWIvpnOs2oZZv/ciOdnuz+5TKeFj6EggHVujO68jfJziR+64KNukOWzvaGh5jf71KxxGi5tZhcRJcQbnU6nfyC4ZY7bxrhSSLWldqPNblZSBvsk8ioZ0gYi6HDp3NNnkCMHv7bg028cpKxq703ua2rLpF2n+l1OSN3+7REhljo936T/kPDmVEUW9DhE7hcMsPEge46r1eJHHzWii6zdnpj9Uef4BZmbMy972DlmPyU5ReNcNFImbKnvmH3Sfms0eyje+Y+TQPmnOHCouil7dlIu+R/wC6PksrNmKcb855uHyCnci9uoWinbdnKb7Mnm53yKzMwOmG6EeZcfiVm9WL2qr5FY7cKpx+oj+6D8VsR0kQ3RsHJrR8lO9PjXav1WCyspnncxx5NJVpMaBuAC95vFZ7/wDFnR/qsG4ZOd0En3Hfgs7MAqj+of5i3xVlBewpevfjU6E+q3GzVX9j6uZ/MsrdlanvDBzd+CsByxOU72S9nFBxsnP3vjHm7+VZBsm/vlb5AlS9yxOTu5HaxRcbLcZvRn+q/Rs1H3yO9wUicsLk7mX1O3ih+K4UYu0DmZx7xz/Fc1TLFmgwPvwJ9NVDV36eW55cc8dUREW2BERAWWmqHxvbIxxbIxzXNcNC1zTcEHiCFja0k2AueAW1UYc9jA99m33NJ7XOybNL62k6caOIBtHE6ofb2n3ijbv+sMzj4WA13qDy9N+JudfqqYN+r1clvXrLquqeOMjtOcHX3Bua48Nd68VAYD2CbcHCxB4ab1NRVy4J0vwTEMrITA4/rYyZI7/4mWzsHiM+/cuZ0y1Q+j0rWSseyV8r+w5rhaNrAx12mxB6133VVNlkpoc7g3MG373Gw9VOM3td3062zlKDeQi9jZvgd5PvUqw2iknmZDE3NI8hrR48Se4AXJPAFRON89NYObeK/dYjXg4bjzVudCzWPxAv32ge5vm+Nt/RxHmsWbreN1E6wTo6oYIwZ2iaW3afISGDjlZewHO58VkxTYHDp4yY2CF1jaSJ3ZFuLb5SPQ+IUb6aa2TPBBciEte8jue4OAF+OX+Lkq/ocSmiZIyKVzGStLZGg6OB33HG2lxrYkd6WyeNJJb52l+w2w4qi6aV5+itc5rSzQzFpsSCfZZ47940srEbslhjbR/RorkaA6vPmTmK9YS7qMIjdG25ZTB4H1nCLP73fFUXNUPfIZXvLpXHMXk9onjfu+SvjGHnKp/txsG2GN1RS36tuskZJdlHe5rjqQO8G/G/cutsbshQz0EMskGaRwdmOeQXIe4bg4AblIdj6p9RhsLpu05zHNdf9IBzmXPG4F/NYOjttsMhF7gGYX42mkCsxm0uV00I9k8GlcWRZDIL3EdQ5zh/lzn3hQ3bXYx1GBLG8vpybEutmYTuzW0IPGw4c4s2ZzJM7HFr2uzNcNCCDoQVeGNf22EyukFi6nLyODurzj0cPcufjKXw35xs8udh+xWHPp45HU/tRscT1so3tBJ9vReYtmcFPsiM/wDsPP8A9F3MDjD8Pga4dl0EQcPB0QB+K4zOjvD/AKrzzkPyW+PyRnl9tQ3Z/ZUVFZO0kimhke0kG5dZ7g1rTyFyeHNTSabDKK0bhFG6w0yF77dxcQC71WHo4awURyCwMst/UAD7oCrLE3vNRKZPzhkfmvxzG48ty83p11yuq6W2NRTvqnOp8nVZWew3KCbEk2sNdfcpPjOxFPDTSytllLmMLgCWWv3Xs1V/kJBsCbAk2BNgN5Ntw8Vd9VSNqKYxucckjG6tIvY2NwSCFJN7XO8dKawumbLURROJDXvYwkWuA5wGl+/VSvaLYungjY9skpLpYYzmLNz3WNrNGtl3KPYGnjlZIJZiWOa8AlliWkEX7G7Re+kN1qaH/wAmD4PPyVk1EvU3lNNN3RpS/bT+sf8AItHGejqnipppWSzF7I5HtDiyxLWl1jZgNtOKmmPYU2qgfA9zmtcW6ttcZXB3fp3KEY7sNDTUk0zaicljCQ3M0NJ3AOAbqNVdMY5W/rJQ9G1JJDHJ184L2MfoY7dpoOnY8VsR9FlH3y1B/wA0Y+EakWz8fWYbTtJNnU8TSRodYgCQeKjUPRXTNOlTUA8WmNv8Cpyv7VQbWUnVOqYhe0bpmC++zXEAnxsAoCppi5JikJNzZ1ye/wAVC126XpnqexERdXMREQdPB8QZFmDmm7v022Jb5H1X7W0BLTKyUSM7yT2hzB/rwXLX7dTXna78adXZjEY4KgSSxh7O9rs1jqDY5Text3LUxSobJM97RZpOnkAFu/7PyEizmlpsb67uS3jhYhjc8EPsLlsjQWG3hvB4G/f4rPLHe2uOWtMWE4vAyjkifFeUkZXXdoNbjKOyb3A7W7LpvXDp4S94aCAT3k2HmVIJsBDxm6ztmx0ADd24NG4W0C50uByNa5znNAaCdLm/gkuJZl+v2WrbFGYYnZy7Rzj7PJjfmp10a4uaCeGV4OSzmSgb8jzfQcWnKbf4bKB4LVxMJzjXQh1r24jiF224zB9p+678FnLf4uOv19LY7gVJiUDC512+1FLERcZt9iQQQbC4PAd4XHg6O8Pggl61znXY4GWVzR1Q+s2wDWkWvc34biQqUwvbEwfmKx8YOpDS8NJ4lpFifGyz4hti6oFp610jd+Vzjl55d1/Gyu/4a/q4+jXaOKWAUjngzRXYy+gljb7Lmg66N0I36Ar1N0Y0Tpc4dK2Mm/VNc3LyBtmDfPkQqQixaEEETNBGoIdYgjvB7l3ItvqgNyjEnW8ZAT949r3qb8eYuvlXHtbjsNBSdXHZspZkgjH6OmUOt3Nb77WXvo7ZbC6ceDz6yPKoeXFo3uLn1LXvO9zpA5x5km5W7TbRysaGx10jWDc1lQ5rRyaHWCc/Ozh40tGj6MYWzZ5Z3SR3v1eUNvreznXNxysvfSXtHHHTupY3AzSDK8D9WzvvwJGluBJ4XrI7R1DtDXTEcPpEhHpmWn1jfrD1Cxc9TUjUx3d2voLD6UOoo4j7JhYw232MYabKIs6LoAf+Jkt4NYD62VeR45VAACsnAGgAnlsBwADtFlbjtZ/fKj9tL/MlzxvuEwynqpjsniUVJWz0ReepMhDHuto9vZIcRpra1+LRxXW2k2JZUSmWOTqpHe2C3M1x42uCD8feqse4uJc4kuJJJOpJOpJPeSV2cP2orYW5GVDsg0AcGvtyLwSB4LluN3C73Fh4FgEGHxvlfJd1u3K4ZQ1u/K1utgTzJ05LHUQOjwypcGmIv62VrB2eqa62VoA9k2AJA/Sc5VviWLVFQQZpnPtuBsGjxDW2APjZZJsbqnsLH1MjmEWILyQRwPFTlDt33az7OVMhracdY+xljuMztRmFxvVg7dR5oIR/zNP73FvzVURyuY4OY4tcCCCDYgjvBWerxuqkAD6iRwBDgC86OGoPMHvUl8NZYbsq5Mew01FO+ESuiLspD27xlcHbri4Nrb+9Q6p2Ae2J5fiMpYGuJGU2IaM2t5CDuUMO0db/AHyb9o/8Vhm2irHNcx1VKWuBa4F5IIIsQb+C3uMTDKfq3cMBGExAEh30RliNCD1AsQe43VJDGqoairnHKaX+ZbjNo61rOrbVSiMDKG5jYNtaw8LLilDHHW2hin5mT/pKhil+NzBsDr73dkeN/wDRRBd+l6cup7ERF1cxERAREQdKjxqWNobo5o3Zr3HhcFY67FZJRZxAbwboDz4rRRTjPa8r6dKixmWNuXRzRuDr6ciF4r8WklGU2DeDe/ndaCJxns5X0IiKoIiICIiAiIgLZkoJQzOWHLYG+m4+Hcscj2m2/TTy/q66suKRXJAd2sjTcCwa06211KDkTRFpyuGvMH4LyCRuK678XFxYHKXuc8WGov2R6Aei9OxWMu79zgHW7TS4g6AuKDmRvksSHOsN5BNhfRZZ5Z43ZXSPB03PJ+BW2MTZZwLn9pzTezLltgDfuvYH3LVrqwPndJrY3tffbLYblP10knC3fnf+7/48DEZ/tpPvu/FehilR9vL+0f8AisYkbrfv03eO/f8A1ZA5n9BNRjdZm4zUj9fJ5vJ+K9jHKn7d3qtYyM4cLacOOuqB7L7tP6vdOM+HK/W1+Xqn7Y+jfwT8vVP2v7rfwWn1o104Wv4Be+sb5cuX4KcZ8Xlfra/L1T9p+6z8E/L0/wBYfdC1HSM4abt3vXiVzSNBYpxx+HK/X7U1L5Dd7iT8OQ7lhRFpkREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERB//9k=" className="platform-icon" alt="CodeChef" />
                            <div>
                                <div className="site">Codechef ID</div>
                                <input type="text" placeholder="username" />
                            </div>
                        </div>

                        <div className="platform">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTShvLjOEAQ_0DuYxdLD7VTKUlMjSGnyu503g&s"
                                className="platform-icon" alt="GFG" />
                            <div>
                                <div className="site">GFG Handle</div>
                                <input type="text" placeholder="username" />
                            </div>
                        </div>
                    </div>
                    <div className="footer-actions">
                        <button>Finish Setup</button>

                        <div className="container11">
                            <span>By clicking "Finish Setup", you agree to our</span>
                            <a href="#">Terms of Service</a>
                            <span>and</span>
                            <a href="#">Privacy Policy</a>
                        </div>
                    </div>
                </div>
            </main>
        </>
    );
}

export default App;
