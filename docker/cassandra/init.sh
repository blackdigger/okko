<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
<head>
<title>stackforge/poppy - A modular, vendor-neutral API, that wraps provisioning instructions for all CDN vendors that support it.</title>
<meta name='generator' content='cgit v0.10.1'/>
<meta name='robots' content='index, nofollow'/>
<link rel='stylesheet' type='text/css' href='/static/openstack.css'/>
<link rel='shortcut icon' href='/static/favicon.ico'/>
<link rel='alternate' title='Atom feed' href='https://git.openstack.org/cgit/stackforge/poppy/atom/docker/cassandra/init.sh?h=master' type='application/atom+xml'/>
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
<a href='/cgit/stackforge/poppy/'>summary</a><a href='/cgit/stackforge/poppy/refs/?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>refs</a><a href='/cgit/stackforge/poppy/log/docker/cassandra/init.sh'>log</a><a class='active' href='/cgit/stackforge/poppy/tree/docker/cassandra/init.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>tree</a><a href='/cgit/stackforge/poppy/commit/docker/cassandra/init.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>commit</a><a href='/cgit/stackforge/poppy/diff/docker/cassandra/init.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>diff</a><a href='/cgit/stackforge/poppy/stats/docker/cassandra/init.sh'>stats</a></td><td class='form'><form class='right' method='get' action='/cgit/stackforge/poppy/log/docker/cassandra/init.sh'>
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
<div class='path'>path: <a href='/cgit/stackforge/poppy/tree/?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>root</a>/<a href='/cgit/stackforge/poppy/tree/docker?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>docker</a>/<a href='/cgit/stackforge/poppy/tree/docker/cassandra?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>cassandra</a>/<a href='/cgit/stackforge/poppy/tree/docker/cassandra/init.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>init.sh</a></div><div class='content'>blob: 3165de11ab573acd8e4cfc8e47bec8e3d56c62c9 (<a href='/cgit/stackforge/poppy/plain/docker/cassandra/init.sh?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7'>plain</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a id='n1' href='#n1'>1</a>
<a id='n2' href='#n2'>2</a>
<a id='n3' href='#n3'>3</a>
<a id='n4' href='#n4'>4</a>
<a id='n5' href='#n5'>5</a>
<a id='n6' href='#n6'>6</a>
<a id='n7' href='#n7'>7</a>
<a id='n8' href='#n8'>8</a>
<a id='n9' href='#n9'>9</a>
<a id='n10' href='#n10'>10</a>
<a id='n11' href='#n11'>11</a>
<a id='n12' href='#n12'>12</a>
<a id='n13' href='#n13'>13</a>
<a id='n14' href='#n14'>14</a>
<a id='n15' href='#n15'>15</a>
<a id='n16' href='#n16'>16</a>
<a id='n17' href='#n17'>17</a>
<a id='n18' href='#n18'>18</a>
<a id='n19' href='#n19'>19</a>
<a id='n20' href='#n20'>20</a>
<a id='n21' href='#n21'>21</a>
<a id='n22' href='#n22'>22</a>
</pre></td>
<td class='lines'><pre><code><span class="hl slc">#!/usr/bin/env bash</span>

IP<span class="hl opt">=</span><span class="hl str">`hostname --ip-address`</span>
SEEDS<span class="hl opt">=</span><span class="hl str">`env | grep CASS[0-9]_PORT_9042_TCP_ADDR | sed 's/CASS[0-9]_PORT_9042_TCP_ADDR=//g' | sed -e :a -e N -e 's/</span><span class="hl esc">\n</span><span class="hl str">/,/' -e ta`</span>

<span class="hl kwa">if</span> <span class="hl opt">[ -</span>z <span class="hl str">&quot;$SEEDS&quot;</span> <span class="hl opt">];</span> <span class="hl kwa">then</span>
SEEDS<span class="hl opt">=</span><span class="hl kwd">$IP</span>
<span class="hl kwa">fi</span>

<span class="hl kwb">echo</span> <span class="hl str">&quot;Listening on: &quot;</span><span class="hl kwd">$IP</span>
<span class="hl kwb">echo</span> <span class="hl str">&quot;Found seeds: &quot;</span><span class="hl kwd">$SEEDS</span>

<span class="hl slc"># Setup Cassandra</span>
CONFIG<span class="hl opt">=/</span>etc<span class="hl opt">/</span>cassandra<span class="hl opt">/</span>
<span class="hl kwc">sed</span> <span class="hl opt">-</span>i <span class="hl opt">-</span>e <span class="hl str">&quot;s/^listen_address.*/listen_address: $IP/&quot;</span>            <span class="hl kwd">$CONFIG</span><span class="hl opt">/</span>cassandra.yaml
<span class="hl kwc">sed</span> <span class="hl opt">-</span>i <span class="hl opt">-</span>e <span class="hl str">&quot;s/^rpc_address.*/rpc_address: 0.0.0.0/&quot;</span>              <span class="hl kwd">$CONFIG</span><span class="hl opt">/</span>cassandra.yaml
<span class="hl kwc">sed</span> <span class="hl opt">-</span>i <span class="hl opt">-</span>e <span class="hl str">&quot;s/- seeds:</span> <span class="hl esc">\&quot;</span><span class="hl str">127.0.0.1</span><span class="hl esc">\&quot;</span><span class="hl str">/- seeds:</span> <span class="hl esc">\&quot;</span><span class="hl str">$SEEDS</span><span class="hl esc">\&quot;</span><span class="hl str">/&quot;</span>       <span class="hl kwd">$CONFIG</span><span class="hl opt">/</span>cassandra.yaml
<span class="hl kwc">sed</span> <span class="hl opt">-</span>i <span class="hl opt">-</span>e <span class="hl str">&quot;s/# JVM_OPTS=</span><span class="hl esc">\&quot;</span><span class="hl str">$JVM_OPTS -Djava.rmi.server.hostname=&lt;public name&gt;</span><span class="hl esc">\&quot;</span><span class="hl str">/ JVM_OPTS=</span><span class="hl esc">\&quot;</span><span class="hl str">$JVM_OPTS -Djava.rmi.server.hostname=$IP</span><span class="hl esc">\&quot;</span><span class="hl str">/&quot;</span> <span class="hl kwd">$CONFIG</span><span class="hl opt">/</span>cassandra<span class="hl opt">-</span>env.sh

<span class="hl slc"># Start Cassandra</span>
<span class="hl kwb">echo</span> Starting Cassandra...
cassandra <span class="hl opt">-</span>f <span class="hl opt">-</span>p <span class="hl opt">/</span>var<span class="hl opt">/</span>run<span class="hl opt">/</span>cassandra.pid
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>generated  by cgit v0.10.1 at 2014-12-29 17:06:25 (GMT)</div>
</div> <!-- id=cgit -->
</body>
</html>
