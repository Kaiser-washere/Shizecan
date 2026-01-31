<h1>ExifScan</h1>

<pre>
███████╗██╗  ██╗██╗███████╗███████╗ ██████╗ █████╗ ███╗   ██╗
██╔════╝██║  ██║██║╚══███╔╝██╔════╝██╔════╝██╔══██╗████╗  ██║
███████╗███████║██║  ███╔╝ █████╗  ██║     ███████║██╔██╗ ██║
╚════██║██╔══██║██║ ███╔╝  ██╔══╝  ██║     ██╔══██║██║╚██╗██║
███████║██║  ██║██║███████╗███████╗╚██████╗██║  ██║██║ ╚████║
╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝
</pre>

## 📖 About
**ExifScan** is a prototype Bash tool for scanning image metadata (EXIF). It is not intended as a daily-use utility, but rather a simple experiment for learning and exploration.
<ul>
<li>Reads EXIF metadata using <code>exiftool</code> or <code>identify</code></li>
<li>Outputs camera info, timestamps, GPS data, etc.</li>
<li>ASCII banner + colored output</li>
</ul>

<h2>Usage</h2>
<pre>
chmod +x exifscan.sh
./exifscan.sh photo.jpg
</pre>

<h2>Notes</h2>
<ul>
<li>This is a <b>prototype project</b>.</li>
<li>Requires <code>exiftool</code> or <code>ImageMagick</code> installed.</li>
<li>Works on Linux systems with Bash.</li>
</ul>


<h2>License</h2>
<p>Released under the <b>MIT License</b>.</p>

