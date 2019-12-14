Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF111F1A6
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 12:59:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4EC1F3CB3A;
	Sat, 14 Dec 2019 06:59:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576324755;
	bh=EesnjpjIBbDi+G/CZNHIoWj1MGTQoC15p7d7Nfb0IOw=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bbp9jUDxedKfNhu+/CphE0MRzTt8kBdDPJqzIDCEWsArABkkP0UANrZO6ewB+aJ/0
	 QIN6ZzDGU7BGIr4G5ZZ3cUB47bi7KCs7UkXeUz+Km7zde/FExF1UV9lnKq1LrhVDxi
	 chmh4pdBifH3z6ywYNwkQ/+Ui+/jf8v2AxkLOERPUdO/bm5p03qvxkI4puNWDpz2hI
	 JdhOo0kYbMNh5EdGzWMRyLA+m6f/0sx+axWb0mf3wHq+hMDVzy3ZS/Yrf2U/h8D3IR
	 aw/6nUgx6Pt6DO2Eb8jJj0owbhCIcvmNaKigOEuy1wAiiS+CuEAmW0AOCSPxaLTa0H
	 82pwRLxFetulw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BC3DC3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 06:59:13 -0500 (EST)
Received: from tama.lan (unknown [37.165.135.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 35ACA603EA;
 Sat, 14 Dec 2019 12:59:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 35ACA603EA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576324752; bh=a6CWJEjKnlP3WwyvNFouoaQMuN+JH1HZgcNaU6Vgc9U=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=UekqmQ+FgOYP0RZyqLGxWUbQBQrka7V8L1SgXwpgkuPcDOe2siq/6k3quSsBHzh7M
 9XvbyXJdrTTb6lMNdZ2LovDM+KJges3IWwP+dBbv5uten4FO+onLngx37sxc92s5rm
 QRcx1zYu/k4bHTmUDNYibHqx0kGEaQCHvA7+neY0=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sat, 14 Dec 2019 12:59:11 +0100
In-Reply-To: <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
 <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
 <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Cake] Trouble with CAKE
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8079674314221564768=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============8079674314221564768==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9D631D92-7245-4EEA-A30E-EC88CF917F0B"


--Apple-Mail=_9D631D92-7245-4EEA-A30E-EC88CF917F0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 14 Dec 2019, at 11:56, Kevin 'ldir' Darbyshire-Bryant =
<ldir@darbyshire-bryant.me.uk> wrote:
>=20
>=20
>=20
>> On 14 Dec 2019, at 10:35, Kevin 'ldir' Darbyshire-Bryant =
<ldir@darbyshire-bryant.me.uk> wrote:
>>=20
>>=20
>>=20
>>> On 14 Dec 2019, at 10:01, Thibaut <hacks@slashdirt.org> wrote:
>>>=20
>>>=20
>>>=20
>>>>=20
>>>> That's extremely odd.  That commit should only affect traffic =
carrying the LE DSCP, which is not the default.
>>>>=20
>>>> Perhaps it was not actually the code change, but triggering a =
rebuild of the module?
>>>=20
>>> No. I tried with and without multiple times: I built, installed, =
manually unloaded the module, made sure it was unloaded, loaded the new =
build; just to make sure as I noticed the module doesn=E2=80=99t print =
anything in dmesg when it=E2=80=99s loaded (feature request: print the =
current build version when loading, that would be most helpful in these =
circumstances).
>>>=20
>>> There is absolutely no doubt that on my router, with this commit =
CAKE is broken, without it isn=E2=80=99t.
>>>=20
>>> Here=E2=80=99s tc -s output with the broken version:
>>>=20
>>> tc -s qdisc show dev wan
>>> qdisc cake 800f: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
>>> Sent 7711782 bytes 5454 pkt (dropped 144, overlimits 15493 requeues =
0)
>>> backlog 1616b 2p requeues 0
>>> memory used: 140864b of 4Mb
>>> capacity estimate: 1200Kbit
>>> min/max network layer size:           40 /    1500
>>> min/max overhead-adjusted size:      106 /    1749
>>> average network hdr offset:           14
>>>=20
>>>                 Bulk  Best Effort        Voice
>>> thresh         75Kbit     1200Kbit      300Kbit
>>> target        242.2ms       15.1ms       60.6ms
>>> interval      484.5ms      110.1ms      155.6ms
>>> pk_delay          0us       60.0ms       26.8ms
>>> av_delay          0us       36.7ms        2.0ms
>>> sp_delay          0us       17.8ms        1.7ms
>>> backlog            0b        1514b         102b
>>> pkts                0         5467          133
>>> bytes               0      7913444        17970
>>> way_inds            0            0            0
>>> way_miss            0           44            2
>>> way_cols            0            0            0
>>> sce                 0            0            0
>>> marks               0            0            0
>>> drops               0          144            0
>>> ack_drop            0            0            0
>>> sp_flows            0            0            1
>>> bk_flows            0            1            0
>>> un_flows            0            0            0
>>> max_len             0         3028         1118
>>> quantum           300          300          300
>>>=20
>>> qdisc ingress ffff: parent ffff:fff1 ----------------
>>> Sent 218759 bytes 3710 pkt (dropped 0, overlimits 0 requeues 0)
>>> backlog 0b 0p requeues 0
>>>=20
>>> Here=E2=80=99s the same output with the unbroken version:
>>>=20
>>> tc -s qdisc show dev wan
>>> qdisc cake 8011: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
>>> Sent 3342962 bytes 2328 pkt (dropped 110, overlimits 6422 requeues =
0)
>>> backlog 4542b 3p requeues 0
>>> memory used: 83328b of 4Mb
>>> capacity estimate: 1200Kbit
>>> min/max network layer size:           40 /    1500
>>> min/max overhead-adjusted size:      106 /    1749
>>> average network hdr offset:           14
>>>=20
>>>                 Bulk  Best Effort        Voice
>>> thresh         75Kbit     1200Kbit      300Kbit
>>> target        242.2ms       15.1ms       60.6ms
>>> interval      484.5ms      110.1ms      155.6ms
>>> pk_delay          0us       56.8ms        9.9ms
>>> av_delay          0us       36.7ms        854us
>>> sp_delay          0us        9.4ms        680us
>>> backlog            0b        4542b           0b
>>> pkts                0         2403           38
>>> bytes               0      3509764         4280
>>> way_inds            0            0            0
>>> way_miss            0           17            1
>>> way_cols            0            0            0
>>> sce                 0            0            0
>>> marks               0            0            0
>>> drops               0          110            0
>>> ack_drop            0            0            0
>>> sp_flows            0            0            1
>>> bk_flows            0            1            0
>>> un_flows            0            0            0
>>> max_len             0         1514          294
>>> quantum           300          300          300
>>>=20
>>> qdisc ingress ffff: parent ffff:fff1 ----------------
>>> Sent 106781 bytes 1896 pkt (dropped 0, overlimits 0 requeues 0)
>>> backlog 0b 0p requeues 0
>>>=20
>>>=20
>>> HTH
>>> Thibaut
>>=20
>> Which shows most traffic going through Best Effort, whereas the LE =
DSCP would put it in Bulk, so at this point I=E2=80=99m failing to see =
the connection between that commit (which changes 3 lookup tables) and =
the behaviour change.
>>=20
>> Can we see output from =E2=80=99tc -s qdisc=E2=80=99 for the =
non-broken case please?
>=20
> Brain fart!  The 2 different versions are there and we soe no =
difference in traffic/tin allocation.  However, could we see the ifb4wan =
instances of cake for both b0rken and unb0rken cases please?

The plot thickens. I was eventually able to reproduce the same buggy =
behavior without the HEAD commit, *sigh*

It appears that the bug happens randomly between consecutive module =
loads/unloads. It also appears that once the module is loaded in a =
=E2=80=9Cworking state=E2=80=9D it keeps working fine.

I=E2=80=99m wondering if this could be an =E2=80=9Cuse of uninitialized =
data=E2=80=9D type of bug.

Still digging.
Thibaut=

--Apple-Mail=_9D631D92-7245-4EEA-A30E-EC88CF917F0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 14 Dec 2019, at 11:56, Kevin 'ldir' Darbyshire-Bryant =
&lt;<a href=3D"mailto:ldir@darbyshire-bryant.me.uk" =
class=3D"">ldir@darbyshire-bryant.me.uk</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">On 14 =
Dec 2019, at 10:35, Kevin 'ldir' Darbyshire-Bryant &lt;<a =
href=3D"mailto:ldir@darbyshire-bryant.me.uk" =
class=3D"">ldir@darbyshire-bryant.me.uk</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">On 14 Dec 2019, at 10:01, Thibaut &lt;<a =
href=3D"mailto:hacks@slashdirt.org" class=3D"">hacks@slashdirt.org</a>&gt;=
 wrote:<br class=3D""><br class=3D""><br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">That's =
extremely odd. &nbsp;That commit should only affect traffic carrying the =
LE DSCP, which is not the default.<br class=3D""><br class=3D"">Perhaps =
it was not actually the code change, but triggering a rebuild of the =
module?<br class=3D""></blockquote><br class=3D"">No. I tried with and =
without multiple times: I built, installed, manually unloaded the =
module, made sure it was unloaded, loaded the new build; just to make =
sure as I noticed the module doesn=E2=80=99t print anything in dmesg =
when it=E2=80=99s loaded (feature request: print the current build =
version when loading, that would be most helpful in these =
circumstances).<br class=3D""><br class=3D"">There is absolutely no =
doubt that on my router, with this commit CAKE is broken, without it =
isn=E2=80=99t.<br class=3D""><br class=3D"">Here=E2=80=99s tc -s output =
with the broken version:<br class=3D""><br class=3D"">tc -s qdisc show =
dev wan<br class=3D"">qdisc cake 800f: root refcnt 2 bandwidth 1200Kbit =
diffserv3 dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm =
overhead 48 no-sce<br class=3D"">Sent 7711782 bytes 5454 pkt (dropped =
144, overlimits 15493 requeues 0)<br class=3D"">backlog 1616b 2p =
requeues 0<br class=3D"">memory used: 140864b of 4Mb<br =
class=3D"">capacity estimate: 1200Kbit<br class=3D"">min/max network =
layer size: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;40 / =
&nbsp;&nbsp;&nbsp;1500<br class=3D"">min/max overhead-adjusted size: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;106 / &nbsp;&nbsp;&nbsp;1749<br =
class=3D"">average network hdr offset: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14<br =
class=3D""><br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bulk &nbsp;Best Effort =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Voice<br class=3D"">thresh =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;75Kbit =
&nbsp;&nbsp;&nbsp;&nbsp;1200Kbit =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300Kbit<br class=3D"">target =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;242.2ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15.1ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;60.6ms<br class=3D"">interval =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;484.5ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;110.1ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;155.6ms<br class=3D"">pk_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;60.0ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;26.8ms<br class=3D"">av_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;36.7ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.0ms<br class=3D"">sp_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17.8ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.7ms<br class=3D"">backlog =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0b =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1514b =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;102b<br class=3D"">pkts =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5467 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;133<br =
class=3D"">bytes =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7913444 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17970<br class=3D"">way_inds =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">way_miss =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;44 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2<br =
class=3D"">way_cols =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">sce =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">marks =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">drops =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;144 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">ack_drop =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">sp_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1<br =
class=3D"">bk_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">un_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">max_len =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3028 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1118<br class=3D"">quantum=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300<br =
class=3D""><br class=3D"">qdisc ingress ffff: parent ffff:fff1 =
----------------<br class=3D"">Sent 218759 bytes 3710 pkt (dropped 0, =
overlimits 0 requeues 0)<br class=3D"">backlog 0b 0p requeues 0<br =
class=3D""><br class=3D"">Here=E2=80=99s the same output with the =
unbroken version:<br class=3D""><br class=3D"">tc -s qdisc show dev =
wan<br class=3D"">qdisc cake 8011: root refcnt 2 bandwidth 1200Kbit =
diffserv3 dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm =
overhead 48 no-sce<br class=3D"">Sent 3342962 bytes 2328 pkt (dropped =
110, overlimits 6422 requeues 0)<br class=3D"">backlog 4542b 3p requeues =
0<br class=3D"">memory used: 83328b of 4Mb<br class=3D"">capacity =
estimate: 1200Kbit<br class=3D"">min/max network layer size: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;40 / =
&nbsp;&nbsp;&nbsp;1500<br class=3D"">min/max overhead-adjusted size: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;106 / &nbsp;&nbsp;&nbsp;1749<br =
class=3D"">average network hdr offset: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14<br =
class=3D""><br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bulk &nbsp;Best Effort =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Voice<br class=3D"">thresh =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;75Kbit =
&nbsp;&nbsp;&nbsp;&nbsp;1200Kbit =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300Kbit<br class=3D"">target =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;242.2ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15.1ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;60.6ms<br class=3D"">interval =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;484.5ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;110.1ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;155.6ms<br class=3D"">pk_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;56.8ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.9ms<br class=3D"">av_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;36.7ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;854us<br class=3D"">sp_delay =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0us =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.4ms =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;680us<br class=3D"">backlog =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0b =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4542b =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0b<br =
class=3D"">pkts =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2403 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;38<br =
class=3D"">bytes =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3509764 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4280<br =
class=3D"">way_inds =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">way_miss =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1<br =
class=3D"">way_cols =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">sce =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">marks =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">drops =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;110 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">ack_drop =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">sp_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1<br =
class=3D"">bk_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">un_flows =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0<br =
class=3D"">max_len =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1514 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;294<br =
class=3D"">quantum =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;300<br =
class=3D""><br class=3D"">qdisc ingress ffff: parent ffff:fff1 =
----------------<br class=3D"">Sent 106781 bytes 1896 pkt (dropped 0, =
overlimits 0 requeues 0)<br class=3D"">backlog 0b 0p requeues 0<br =
class=3D""><br class=3D""><br class=3D"">HTH<br class=3D"">Thibaut<br =
class=3D""></blockquote><br class=3D"">Which shows most traffic going =
through Best Effort, whereas the LE DSCP would put it in Bulk, so at =
this point I=E2=80=99m failing to see the connection between that commit =
(which changes 3 lookup tables) and the behaviour change.<br =
class=3D""><br class=3D"">Can we see output from =E2=80=99tc -s qdisc=E2=80=
=99 for the non-broken case please?<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Brain fart! =
&nbsp;The 2 different versions are there and we soe no difference in =
traffic/tin allocation. &nbsp;However, could we see the ifb4wan =
instances of cake for both b0rken and unb0rken cases please?</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote></div><br class=3D""><div =
class=3D"">The plot thickens. I was eventually able to reproduce the =
same buggy behavior without the HEAD commit, *sigh*</div><div =
class=3D""><br class=3D""></div><div class=3D"">It appears that the bug =
happens randomly between consecutive module loads/unloads. It also =
appears that once the module is loaded in a =E2=80=9Cworking state=E2=80=9D=
 it keeps working fine.</div><div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m wondering if this could be an =E2=80=9Cuse of =
uninitialized data=E2=80=9D type of bug.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Still digging.</div><div =
class=3D"">Thibaut</div></body></html>=

--Apple-Mail=_9D631D92-7245-4EEA-A30E-EC88CF917F0B--

--===============8079674314221564768==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8079674314221564768==--
