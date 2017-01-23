$site = "https://www.reddit.com/r/dailyprogrammer/comments/5j6ggm/20161219_challenge_296_easy_the_twelve_days_of/"
$reddit = Invoke-WebRequest -Uri $site
Write-Output @($reddit.ParsedHtml.getElementsByTagName("code"))[1].innerText