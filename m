Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C3D376F56
	for <lists+cake@lfdr.de>; Sat,  8 May 2021 06:05:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 67FEF3CB39;
	Sat,  8 May 2021 00:05:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1620446702;
	bh=DcOUOf2/skLPHw1zavhk2bXpPZnwBbDFka8FEmUY8yE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JAYc6FulfwE5U3Uy6IltfVgnsTD8nSaQ9KoMhaqlVfYtfxHERnwedGx5cJK8f6QCq
	 vJy9ofNVUEv0wwOLqsu2Hn8Eia6LM538ZY+4t6bCQ5nm6hR8k9VnTI9MDiynK+LrsO
	 j22JXVlig3cOf/dQ5129Jmc+04oKwyp81/FPZuGWK0sOKEmrvZpMjbL3t9VsP13Cnd
	 wgfxQArJwvudlQ/eAG+VDeOH5MQ3CXtq1wOOG8Sq4/D0LIYfAd9DRqHsU+Nhu+7iA+
	 +TVkNnTTDICY2WFUlRlHJUE8hwAZv0kUBHSPB/jFV1+pT1NRK/VufG3ERU5IzsufyK
	 grOungjKQ70sg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp125.iad3a.emailsrvr.com (smtp125.iad3a.emailsrvr.com
 [173.203.187.125])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 396DB3B29D
 for <cake@lists.bufferbloat.net>; Sat,  8 May 2021 00:05:01 -0400 (EDT)
Received: from app59.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp16.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id BB9E1447E;
 Sat,  8 May 2021 00:05:00 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app59.wa-webapps.iad3a (Postfix) with ESMTP id AA70F60060;
 Sat,  8 May 2021 00:05:00 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 8 May 2021 00:05:00 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 8 May 2021 00:05:00 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "=?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?=" <toke@toke.dk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <87tunfv8ef.fsf@toke.dk>
References: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com> 
 <87tunfv8ef.fsf@toke.dk>
X-Client-IP: 209.6.168.128
Message-ID: <1620446700.69329642@apps.rackspace.com>
X-Mailer: webmail/18.2.1-RC
X-Classification-ID: 8ce7845d-b652-4953-8916-6522684971c7-1-1
Subject: Re: [Cake] [Flent-users] centos 8 and cake and flent
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
Cc: Cake List <cake@lists.bufferbloat.net>, flent-users <flent-users@flent.org>
Content-Type: multipart/mixed; boundary="===============4017127404536653622=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4017127404536653622==
Content-Type: multipart/alternative;boundary="----=_20210508000500000000_57415"

------=_20210508000500000000_57415
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AFedora definitely has cake in its kernel, and eventually these kernel th=
ings get into RHEL and Centos.=0A =0AFYI, my router/gateway to the Internet=
 at home is based on Fedora Server Edition (Fedora 33, as I wait a little t=
o upgrade my router/gateway after a new edition is released, as Fedora 34 w=
as just put out). I've been running cake in it for years now, and it has gi=
ven me no trouble. I started with it being added by use of DKMS when cake w=
asn't in the standard kernel yet. I had a glitch when it made it into the s=
tandard kernel and DKMS got confused and I had to figure out why the cake c=
onfig wasn't working.=0A =0ANow Fedora's not quite just an early availabili=
ty for RHEL, but for kernel functionality it has been. I understand why for=
 Enterprise use, RHEL is conservative about tracking the leading edge.=0A =
=0AOn Thursday, May 6, 2021 5:50pm, "Toke H=C3=B8iland-J=C3=B8rgensen via C=
ake" <cake@lists.bufferbloat.net> said:=0A=0A=0A=0A> Dave Taht <dave.taht@g=
mail.com> writes:=0A> =0A> > Currently centos (and I assume redhat) is at 4=
.18. Cake went into 4.19=0A> > so I assume the next major=0A> > redhat/cent=
os releases will have it.=0A> =0A> Note that the RHEL kernel version number=
 is basically a complete=0A> fabrication; it's the version that the kernel =
was forked from, something=0A> like 30% of all commits are backported for e=
ach new upstream release,=0A> without changing the RHEL-kernel version numb=
er.=0A> =0A> Which means that all the Cake out-of-tree kernel version compa=
tibility=0A> stuff is not going to work, because that works based on the ke=
rnel=0A> version number...=0A> =0A> > Is there a yum/rpm expert in the hous=
e? flent does not appear to be=0A> > packaged up for this (?),=0A> =0A> It'=
s in Fedora: https://src.fedoraproject.org/rpms/flent - should be=0A> fairl=
y straight-forward to add it to EPEL as well, but thus far no one=0A> has r=
equested it... :)=0A> =0A> > neither is netperf or irtt. Is there a repo I =
could use?=0A> =0A> netperf is blocked on licensing:=0A> https://bugzilla.r=
edhat.com/show_bug.cgi?id=3D1729939=0A> =0A> Since the re-licensing there m=
ay be a chance, but not sure what the=0A> procedure is when there's not a r=
elease with the new license.=0A> =0A> As for irtt, that should be pretty st=
raight-forward to package.=0A> =0A> -Toke=0A> _____________________________=
__________________=0A> Cake mailing list=0A> Cake@lists.bufferbloat.net=0A>=
 https://lists.bufferbloat.net/listinfo/cake=0A> 
------=_20210508000500000000_57415
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Fedora definitely has =
cake in its kernel, and eventually these kernel things get into RHEL and Ce=
ntos.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">FYI, my =
router/gateway to the Internet at home is based on Fedora Server Edition (F=
edora 33, as I wait a little to upgrade my router/gateway after a new editi=
on is released, as Fedora 34 was just put out). I've been running cake in i=
t for years now, and it has given me no trouble. I started with it being ad=
ded by use of DKMS when cake wasn't in the standard kernel yet. I had a gli=
tch when it made it into the standard kernel and DKMS got confused and I ha=
d to figure out why the cake config wasn't working.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">Now Fedora's not quite just an early =
availability for RHEL, but for kernel functionality it has been. I understa=
nd why for Enterprise use, RHEL is conservative about tracking the leading =
edge.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Thurs=
day, May 6, 2021 5:50pm, "Toke H=C3=B8iland-J=C3=B8rgensen via Cake" &lt;ca=
ke@lists.bufferbloat.net&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1=
620445358">=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 10pt; overflow-wrap: break-word;">&gt; Dave Taht &lt;dave.taht@gmail.com&g=
t; writes:<br />&gt; <br />&gt; &gt; Currently centos (and I assume redhat)=
 is at 4.18. Cake went into 4.19<br />&gt; &gt; so I assume the next major<=
br />&gt; &gt; redhat/centos releases will have it.<br />&gt; <br />&gt; No=
te that the RHEL kernel version number is basically a complete<br />&gt; fa=
brication; it's the version that the kernel was forked from, something<br /=
>&gt; like 30% of all commits are backported for each new upstream release,=
<br />&gt; without changing the RHEL-kernel version number.<br />&gt; <br /=
>&gt; Which means that all the Cake out-of-tree kernel version compatibilit=
y<br />&gt; stuff is not going to work, because that works based on the ker=
nel<br />&gt; version number...<br />&gt; <br />&gt; &gt; Is there a yum/rp=
m expert in the house? flent does not appear to be<br />&gt; &gt; packaged =
up for this (?),<br />&gt; <br />&gt; It's in Fedora: https://src.fedorapro=
ject.org/rpms/flent - should be<br />&gt; fairly straight-forward to add it=
 to EPEL as well, but thus far no one<br />&gt; has requested it... :)<br /=
>&gt; <br />&gt; &gt; neither is netperf or irtt. Is there a repo I could u=
se?<br />&gt; <br />&gt; netperf is blocked on licensing:<br />&gt; https:/=
/bugzilla.redhat.com/show_bug.cgi?id=3D1729939<br />&gt; <br />&gt; Since t=
he re-licensing there may be a chance, but not sure what the<br />&gt; proc=
edure is when there's not a release with the new license.<br />&gt; <br />&=
gt; As for irtt, that should be pretty straight-forward to package.<br />&g=
t; <br />&gt; -Toke<br />&gt; _____________________________________________=
__<br />&gt; Cake mailing list<br />&gt; Cake@lists.bufferbloat.net<br />&g=
t; https://lists.bufferbloat.net/listinfo/cake<br />&gt; </p>=0A</div></fon=
t>
------=_20210508000500000000_57415--


--===============4017127404536653622==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4017127404536653622==--

