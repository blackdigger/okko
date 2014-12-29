<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
<head>
<title>stackforge/poppy - A modular, vendor-neutral API, that wraps provisioning instructions for all CDN vendors that support it.</title>
<meta name='generator' content='cgit v0.10.1'/>
<meta name='robots' content='index, nofollow'/>
<link rel='stylesheet' type='text/css' href='/static/openstack.css'/>
<link rel='shortcut icon' href='/static/favicon.ico'/>
<link rel='alternate' title='Atom feed' href='https://git.openstack.org/cgit/stackforge/poppy/atom/docker/cassandra/shutdown.sh?h=master' type='application/atom+xml'/>
</head>
<body>
<div id='cgit'><table id='header'>
<tr>
<td class='logo' rowspan='2'><a href='/cgit/'><img src='/static/openstack.png' alt='cgit logo'/></a></td>
<td class='main'><a href='/cgit/'>index</a> : <a title='stackforge/poppy' href='/cgit/stackforge/poppy/'>stackforge/poppy</a></td><td class='form'><form method='get' action=''>
<input type='hidden' name='id' value='686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'/><select name='h' onchange='this.form.submit();'>
<option value='master' selected='selected'>master</option>
</select> <input type='submit' name='' value='switch'/></form></td></tr>
<tr><td class='sub'>A modular, vendor-neutral API, that wraps provisioning instructions for all CDN vendors that support it.</td><td class='sub right'></td></tr></table>
<table class='tabs'><tr><td>
<a href='/cgit/stackforge/poppy/'>summary</a><a href='/cgit/stackforge/poppy/refs/?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>refs</a><a href='/cgit/stackforge/poppy/log/docker/cassandra/shutdown.sh'>log</a><a class='active' href='/cgit/stackforge/poppy/tree/docker/cassandra/shutdown.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>tree</a><a href='/cgit/stackforge/poppy/commit/docker/cassandra/shutdown.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>commit</a><a href='/cgit/stackforge/poppy/diff/docker/cassandra/shutdown.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>diff</a><a href='/cgit/stackforge/poppy/stats/docker/cassandra/shutdown.sh'>stats</a></td><td class='form'><form class='right' method='get' action='/cgit/stackforge/poppy/log/docker/cassandra/shutdown.sh'>
<input type='hidden' name='id' value='686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'/><select name='qt'>
<option value='grep'>log msg</option>
<option value='author'>author</option>
<option value='committer'>committer</option>
<option value='range'>range</option>
</select>
<input class='txt' type='text' size='10' name='q' value=''/>
<input type='submit' value='search'/>
</form>
</td></tr></table>
<div class='path'>path: <a href='/cgit/stackforge/poppy/tree/?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>root</a>/<a href='/cgit/stackforge/poppy/tree/docker?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>docker</a>/<a href='/cgit/stackforge/poppy/tree/docker/cassandra?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>cassandra</a>/<a href='/cgit/stackforge/poppy/tree/docker/cassandra/shutdown.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>shutdown.sh</a></div><div class='content'>blob: e2f4e74a5bebff16fef9662e7b35a2e1a5beb2d4 (<a href='/cgit/stackforge/poppy/plain/docker/cassandra/shutdown.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>plain</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a id='n1' href='#n1'>1</a>
<a id='n2' href='#n2'>2</a>
</pre></td>
<td class='lines'><pre><code><span class="hl kwb">echo</span> <span class="hl str">&quot;Stopping Cassandra...&quot;</span>
sudo <span class="hl kwb">kill</span> <span class="hl str">`cat /var/run/cassandra.pid`</span>
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>generated  by cgit v0.10.1 at 2014-12-29 17:06:48 (GMT)</div>
</div> <!-- id=cgit -->
</body>
</html>
