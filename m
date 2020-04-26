Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 651B71B90BE
	for <lists+cake@lfdr.de>; Sun, 26 Apr 2020 15:53:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D54713CB38;
	Sun, 26 Apr 2020 09:53:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587909228;
	bh=D2/VkhnSrDXZvHHxC5sooS4J5DbqjFdN/jKhIW525mo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DgMD6ytYGnxx/eUcj7v4+SyoJbimnGSkTGE3vncZLwpDczpKFo2EYKdjdCcoMKC/p
	 BBJ3Uqx3qXYRhCm7MUY8GcM/yaAigfC80fIkjqgx5J2IdXFzbCYGAgAAn2EaBdAEtD
	 aYdh+lJvrQ9dr/LKOUJP+fiKm0oNVA2w7pHR8U0ZA4CHdhzE+lVU12vOm51Pb4HuCa
	 aAZiTTbOeRoNA+8mGAUehX+RY9nAWUS2Jtq+NlPH23WcqsavUHGu5diDOUVC2GxE0b
	 ARcT8kY0z/dZg7dAmRUqWbOL2mzCIGIHHX7z4tz4eHNAfWplGbVft2nNPqGKX61RTW
	 cnwidLG2ALJZw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
 [173.203.187.70])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AB35B3B2A4
 for <cake@lists.bufferbloat.net>; Sun, 26 Apr 2020 09:53:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1587909227;
 bh=63L9XcX55F6QdweEkePejXxO2wE2w9aIwEUhKug3dYo=;
 h=Date:Subject:From:To:From;
 b=rZvA0EV8P4vifgwokSnaP20xqMLuCE34DsTlKhsahgC6aNnHkOjYTKSZPizBPVqrj
 neiIMJWUQOwcaNzZXwgaJbLHSwtnLHtjZskMw65JGCIFMygwegMJBVFz4ZsZ0wqyuy
 1Vu/S4IO3rp0su1psUb8W9FwiIwD0LKli2wyfZKA=
Received: from app62.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp17.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 67A281F798;
 Sun, 26 Apr 2020 09:53:47 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app62.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sun, 26 Apr 2020 09:53:47 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app62.wa-webapps.iad3a (Postfix) with ESMTP id 526BB6153E;
 Sun, 26 Apr 2020 09:53:47 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 26 Apr 2020 09:53:47 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 26 Apr 2020 09:53:47 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <0AA356B0-AC91-4F4E-94A6-184C3E090FCA@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk> 
 <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com> 
 <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk> 
 <1587848186.866926178@apps.rackspace.com> 
 <0AA356B0-AC91-4F4E-94A6-184C3E090FCA@darbyshire-bryant.me.uk>
Message-ID: <1587909227.334329276@apps.rackspace.com>
X-Mailer: webmail/17.3.7-RC
X-Classification-ID: f6ce375c-a315-49a7-9826-704566da8bcd-1-1
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8471831222190018158=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8471831222190018158==
Content-Type: multipart/alternative;boundary="----=_20200426095347000000_55287"

------=_20200426095347000000_55287
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AVery interesting. However, I'm curious about what is being "ping'ed" fro=
m outside.=0A =0AI would bet that the ping comes in on your router interfac=
e and is reflected immediately back. Which would mean that it might not at =
all be going through the Cake layer. That depends on the details of your se=
tup, which you didn't share.=0A =0AAs you probably know, Cake works by pack=
et shaping in the box where it runs, in the Linux stack. If the ping respon=
der is on the ISP side of Cake, it will not be measuring lag-under-load *in=
side* cake.=0A =0AEnd-to-end lag-under-load on multiple paths sharing a bot=
tleneck is the problem Cake was invented to solve. (Jonathan - you agree?) =
Yes, it will move that congestion "inside" itself, pulling it out of the bo=
ttleneck itself. There it drops and ECN's "as if" the bottleneck were worki=
ng correctly, rather than being "bufferbloated".=0A =0ASo it would be inter=
esting to learn more about the topology of your test to interpret this ping=
.  A more interesting ping would be along the fujl path that the other flow=
s are taking. Your ISP can't provide that.=0A =0A =0AOn Saturday, April 25,=
 2020 5:31pm, "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk> sai=
d:=0A=0A=0A=0A> =0A> =0A> > On 25 Apr 2020, at 21:56, David P. Reed <dpreed=
@deepplum.com> wrote:=0A> >=0A> > Question: what's the "lag under load" exp=
erienced when these two loads are=0A> filling the capacity of the bottlenec=
k router (the DSL link)?=0A> > I'm wondering whether your cake setup is del=
iberately building up a big queue=0A> within the router for any of the 10 b=
ulk/best efforts flows.=0A> =0A> https://www.thinkbroadband.com/broadband/m=
onitoring/quality/share/3dec809ecef5cd52f574b6be5da9af28326845d6-25-04-2020=
=0A> =0A> I don=E2=80=99t reckon it=E2=80=99s bad for the past 24 hours, on=
e peak at 50ms. Avg=0A> latency increase by about 6ms during load.=0A> =0A>=
 =0A> 
------=_20200426095347000000_55287
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">Very interesting. Howe=
ver, I'm curious about what is being "ping'ed" from outside.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 12pt; overflow-wrap: break-word;">I would bet that the ping co=
mes in on your router interface and is reflected immediately back. Which wo=
uld mean that it might not at all be going through the Cake layer. That dep=
ends on the details of your setup, which you didn't share.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 12pt; overflow-wrap: break-word;">As you probably know, Cake w=
orks by packet shaping in the box where it runs, in the Linux stack. If the=
 ping responder is on the ISP side of Cake, it will not be measuring lag-un=
der-load *inside* cake.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: bre=
ak-word;">End-to-end lag-under-load on multiple paths sharing a bottleneck =
is the problem Cake was invented to solve. (Jonathan - you agree?) Yes, it =
will move that congestion "inside" itself, pulling it out of the bottleneck=
 itself. There it drops and ECN's "as if" the bottleneck were working corre=
ctly, rather than being "bufferbloated".</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; o=
verflow-wrap: break-word;">So it would be interesting to learn more about t=
he topology of your test to interpret this ping.&nbsp; A more interesting p=
ing would be along the fujl path that the other flows are taking. Your ISP =
can't provide that.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 12pt; overflow-wrap: break-word;">On Saturday, April 25, 2020 5:31pm,=
 "Kevin Darbyshire-Bryant" &lt;kevin@darbyshire-bryant.me.uk&gt; said:<br /=
><br /></p>=0A<div id=3D"SafeStyles1587908704">=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&gt;=
 <br />&gt; <br />&gt; &gt; On 25 Apr 2020, at 21:56, David P. Reed &lt;dpr=
eed@deepplum.com&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; Question: what's =
the "lag under load" experienced when these two loads are<br />&gt; filling=
 the capacity of the bottleneck router (the DSL link)?<br />&gt; &gt; I'm w=
ondering whether your cake setup is deliberately building up a big queue<br=
 />&gt; within the router for any of the 10 bulk/best efforts flows.<br />&=
gt; <br />&gt; https://www.thinkbroadband.com/broadband/monitoring/quality/=
share/3dec809ecef5cd52f574b6be5da9af28326845d6-25-04-2020<br />&gt; <br />&=
gt; I don=E2=80=99t reckon it=E2=80=99s bad for the past 24 hours, one peak=
 at 50ms. Avg<br />&gt; latency increase by about 6ms during load.<br />&gt=
; <br />&gt; <br />&gt; </p>=0A</div></font>
------=_20200426095347000000_55287--


--===============8471831222190018158==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8471831222190018158==--

