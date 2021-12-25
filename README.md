# live200
This tool checks for subdomains with help of subfinder and checks alive among them ie 200ok with httpx and counts and sort out dupes and display results


<div align="center">
    <img src="/2021-12-25 20_56_02-Parrot Security (snapshot bk) [Running] - Oracle VM VirtualBox.png" width="400px"</img> 
</div>
<div align="center">
    <img src="/2021-12-25 20_56_56-Parrot Security (snapshot bk) [Running] - Oracle VM VirtualBox.png" width="400px"</img> 
</div>



#Installing;<br>


<div class="highlight"><pre class="highlight"><code><span class="nb">sudo /**</span>apt <span class="nb">install </span>**/


  
apt-get install subfinder -y;
apt-get install httprobe -y;
git clone https://github.com/jisjose98/live200*;
cd live200*;
chmod +x live200*;
sudo bash live200.sh


</code></pre></div>
