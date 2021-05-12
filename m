Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FB437BEFF
	for <lists+cake@lfdr.de>; Wed, 12 May 2021 15:56:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1B8663CB49;
	Wed, 12 May 2021 09:56:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1620827806;
	bh=lw9keBc1J0LDxPNRquMuprXDecqE5MpNEu9t7isBa+A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TvrGJzG2McvjgBFkyxqGbWSIjWyc9bCFxlApuhSLCPs8kuc71JMGv1qRVoeelm8Ry
	 /9BISoippP/4Ie2ZW4z42YoZ7xmIOy2tF3yz9V9sL1zh63IcWD5UpogHesDBYw3eAL
	 2Alm9+iiVgi8WVn9plyP0g7ElL2+1p0X0SbRZw3Jk+Z9/2/H/gmYGSfBTXk3fowZaM
	 7tzUcg3eiQAqrU+fQEiTvVj9o1iuKTAzAqIa0O8IPjcMVeXn43TvcHApm2qDDJNCjR
	 T9GxaNfAvtRFNSpBluRClC2kTSfg4FZLgA4fOfUr9dfvR4+JrLL08fbf26Ig3o3i9w
	 fzqgit7oieGmA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 370943B2A4;
 Wed, 12 May 2021 09:56:44 -0400 (EDT)
Received: by mail-il1-x134.google.com with SMTP id o9so15091331ilh.6;
 Wed, 12 May 2021 06:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=jz9Xsha5Lt0vgh0icqu1NbXoQUFNJonKZQZqJmckVW8=;
 b=KviA+bgGi3C3WGhaj4Y0QBMwbLrYPqUDiMZZNhwx4z9s624A7cpk4mEUE8wuobZoPp
 cBZfm7XPSB3zt8V+W0w+ChIpVsxiDbPiNsq2MR6M0SbQTokjkPUtj5JQEVFG6vBkIh6n
 7Cimdhfx49EyS1nbUCkIpdeL+MJvoPcru2rqfpi5a6RwcCyyPTgk66fMReu1R12xh8ml
 qZg5H+vL8eZf3XHXcCAGKQ3RzldnIWIX7SGOIyuffJ0V/gye3xpvRY1IA485LgjUPkaQ
 O2Lb8klEEO7d9/28leq7mecbp5Y+7jr9RVXCB8L1bpZHgzfCvG74J7CEqBFPDQb1SM++
 eeRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=jz9Xsha5Lt0vgh0icqu1NbXoQUFNJonKZQZqJmckVW8=;
 b=ogtAgZre0t5CF1QXG/UyEHxss3o15qS/Hxxv5RacW+/YXSScKOYGtU7JZDhZBbHbCl
 S4kgR5lwbnyiJjrBTvb3cBaDqv/3EEapAdg9Gq/BAec2HCkjV9nylZpirtAlepGxSoSp
 1XBaNNOHJug2HvxQ3jtjh3gHQOe1znhxTNJoJzUpgalGENvRzY0qtHwo1/KVDDb7Gjca
 3OBbRCivRFYwJj0FKrcD/mwTFjN3gLk0HY6NGSU9bSqIsTnN3IUzi/+9H2aNqfTfM7n4
 8X3ct++0nTsLVIL+LXMBAuD55AoF+MJ8pqWSQaQLhKjkLVq+cM+OX/cRjgWffWWAvIu+
 7Npw==
X-Gm-Message-State: AOAM5335HUW+HxdisryBqXcDgsqUYGPV7t736JRCAssLOp6h9I5TAG+h
 aXZMacG6knj5x4HrXukwXQtjJVWpr5YlrNO5+vboO/sSA0M=
X-Google-Smtp-Source: ABdhPJw8/NOrDeyufeeuv4OqZT9vkCBGDoF0pMETwJfhLLKI8bdQG4xczNVL2y9nCkMki7+Lya9uhQWuu8bQzKlyp0A=
X-Received: by 2002:a05:6e02:12:: with SMTP id
 h18mr32420629ilr.246.1620827802572; 
 Wed, 12 May 2021 06:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAOqsZBCYhXxXECWn7Nn1APsG=yvi3b88CTrNkTtmZRp4y7r6DA@mail.gmail.com>
In-Reply-To: <CAOqsZBCYhXxXECWn7Nn1APsG=yvi3b88CTrNkTtmZRp4y7r6DA@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 12 May 2021 06:56:31 -0700
Message-ID: <CAA93jw5sMvHpqrrJMpnza80D75m77dDxFA4P6653pwzZkT+fMw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] Fwd: NANOG Hackathon Alumnus june 12-13
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
Content-Type: multipart/mixed; boundary="===============4906763607146073550=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4906763607146073550==
Content-Type: multipart/alternative; boundary="0000000000006a1ded05c22261e5"

--0000000000006a1ded05c22261e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would really like to document how to correctly configure AFD, WRED to
whatever extent is actually possible
on high end gear like this. Also exploring the l4s classifiers, and
whatever else bloat related on a switch that
can be tuned. Anyone up for nanog?

---------- Forwarded message ---------
From: Valerie Wittkop <vwittkop@nanog.org>
Date: Wed, May 12, 2021 at 6:23 AM
Subject: NANOG Hackathon Alumnus
To: Dave Taht <dave.taht@gmail.com>


Hello Dave!

The NANOG 82 Virtual Hackathon
<https://nanog-dot-yamm-track.appspot.com/Redirect?ukey=3D1iC9yJseDPlEsi3ZB=
xV_kJjOPzZRszGTgFU8ccgLhuYA-0&key=3DYAMMID-25813685&link=3Dhttps%3A%2F%2Fww=
w.nanog.org%2Fevents%2Fn82-hackathon%2F>
will take place June 12-13. Because you=E2=80=99ve participated in the past=
, I=E2=80=99m
writing with the hope that you will participate again. We=E2=80=99re lookin=
g not
only for coders, but also group leaders and mentors who can help all
participants.

The central theme of this hackathon is Interacting with APIs, but there is
no prescribed problem to solve. Instead, all participants are invited to
tap into their creativity and work on a passion project, or simply learn
something new. We welcome people of all skill levels, and we have resources
to help the most inexperienced. Participation is free, and you don=E2=80=99=
t need
to register for the NANOG 82 Virtual conference in order to participate.

We have a new and improved registration system where you can register now
<https://nanog-dot-yamm-track.appspot.com/Redirect?ukey=3D1iC9yJseDPlEsi3ZB=
xV_kJjOPzZRszGTgFU8ccgLhuYA-0&key=3DYAMMID-25813685&link=3Dhttps%3A%2F%2Fww=
w.nanog.org%2Fevents%2Fn82-hackathon%2Fregistration%2F>
for the hackathon. All you need is a NANOG Profile, which you can create as
part of the registration process if you don=E2=80=99t already have one.

I=E2=80=99m happy to answer any questions you have, and we hope to see you =
in June!


Valerie Wittkop
Program Director
vwittkop@nanog.org | +1 734-730-0225 (mobile) | www.nanog.org
NANOG | 305 E. Eisenhower Pkwy, Suite 100 | Ann Arbor, MI 48108, USA
ASN 19230

[image: beacon]


--=20
Latest Podcast:
https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/

Dave T=C3=A4ht CTO, TekLibre, LLC

--0000000000006a1ded05c22261e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would really like to document how to correctly conf=
igure AFD, WRED to whatever extent is actually possible</div><div>on high e=
nd gear like this. Also exploring the l4s classifiers, and whatever else bl=
oat related on a switch that</div><div>can be tuned. Anyone up for nanog?<b=
r></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">---------- Forwarded message ---------<br>From: <b class=3D"gmail_se=
ndername" dir=3D"auto">Valerie Wittkop</b> <span dir=3D"auto">&lt;<a href=
=3D"mailto:vwittkop@nanog.org">vwittkop@nanog.org</a>&gt;</span><br>Date: W=
ed, May 12, 2021 at 6:23 AM<br>Subject: NANOG Hackathon Alumnus<br>To: Dave=
 Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt=
;<br></div><br><br><div dir=3D"auto" style=3D"word-wrap:break-word;line-bre=
ak:after-white-space"><div dir=3D"auto" style=3D"word-wrap:break-word;line-=
break:after-white-space"><div dir=3D"auto" style=3D"word-wrap:break-word;li=
ne-break:after-white-space"><div style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:9pt;color:rgb(0,0,0);font-varian=
t-ligatures:normal;font-variant-east-asian:normal;vertical-align:baseline;w=
hite-space:pre-wrap"><font face=3D"Montserrat-Regular">Hello Dave!</font></=
span></div><font face=3D"Montserrat-Regular"><br></font><div style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;=
color:rgb(0,0,0);font-variant-ligatures:normal;font-variant-east-asian:norm=
al;vertical-align:baseline;white-space:pre-wrap"><font face=3D"Montserrat-R=
egular">The </font><a href=3D"https://nanog-dot-yamm-track.appspot.com/Redi=
rect?ukey=3D1iC9yJseDPlEsi3ZBxV_kJjOPzZRszGTgFU8ccgLhuYA-0&amp;key=3DYAMMID=
-25813685&amp;link=3Dhttps%3A%2F%2Fwww.nanog.org%2Fevents%2Fn82-hackathon%2=
F" target=3D"_blank">NANOG 82 Virtual Hackathon</a><font face=3D"Montserrat=
-Regular"> will take place June 12-13. Because you=E2=80=99ve participated =
in the past, I=E2=80=99m writing with the hope that you will participate ag=
ain. We=E2=80=99re looking not only for coders, but also group leaders and =
mentors who can help all participants.</font></span></div><font face=3D"Mon=
tserrat-Regular"><br></font><div style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><font face=3D"Montserrat-Regular"><span style=3D"font-siz=
e:9pt;color:rgb(0,0,0);font-variant-ligatures:normal;font-variant-east-asia=
n:normal;vertical-align:baseline;white-space:pre-wrap">The central theme of=
 this hackathon is Interacting with APIs, but there is no prescribed proble=
m to solve. Instead, all participants are invited to tap into their creativ=
ity and work on a passion project, or simply learn something new. We welcom=
e people of all skill levels, and we have resources to help the most inexpe=
rienced. Participation is free, and you don=E2=80=99t need to register for =
the NANOG 82 Virtual conference in order to participate. </span></font></di=
v><div style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font fa=
ce=3D"Montserrat-Regular"><span style=3D"font-size:9pt;color:rgb(0,0,0);fon=
t-variant-ligatures:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap"><br></span></font></div><div style=3D"line-hei=
ght:1.38;margin-top:0pt;margin-bottom:0pt"><div style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><font face=3D"Montserrat-Regular"><span st=
yle=3D"font-size:9pt;font-variant-ligatures:normal;font-variant-east-asian:=
normal;vertical-align:baseline;white-space:pre-wrap">We have a new and impr=
oved registration system where you can </span></font><a href=3D"https://nan=
og-dot-yamm-track.appspot.com/Redirect?ukey=3D1iC9yJseDPlEsi3ZBxV_kJjOPzZRs=
zGTgFU8ccgLhuYA-0&amp;key=3DYAMMID-25813685&amp;link=3Dhttps%3A%2F%2Fwww.na=
nog.org%2Fevents%2Fn82-hackathon%2Fregistration%2F" target=3D"_blank">regis=
ter now</a><font face=3D"Montserrat-Regular"><span style=3D"font-variant-li=
gatures:normal;font-variant-east-asian:normal;vertical-align:baseline"><spa=
n style=3D"font-size:9pt;white-space:pre-wrap"> for the hackathon.  All you=
 need is a NANOG Profile, which you can create as part of the registration =
process if you don</span><span style=3D"white-space:pre-wrap">=E2=80=99</sp=
an><span style=3D"font-size:9pt;white-space:pre-wrap">t already have one.</=
span></span></font></div><font face=3D"Montserrat-Regular"></font></div><fo=
nt face=3D"Montserrat-Regular"><br></font><div style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;color:rgb(0,0,=
0);font-variant-ligatures:normal;font-variant-east-asian:normal;vertical-al=
ign:baseline;white-space:pre-wrap"><font face=3D"Montserrat-Regular">I=E2=
=80=99m happy to answer any questions you have, and we hope to see you in J=
une!</font></span></div><div><font face=3D"Montserrat-Regular"><br></font><=
/div><div id=3D"m_-3559747363797344715AppleMailSignature"><br></div><div id=
=3D"m_-3559747363797344715AppleMailSignature"><div id=3D"m_-355974736379734=
4715AppleMailSignature">Valerie Wittkop<br>Program Director<br><a href=3D"m=
ailto:vwittkop@nanog.org" target=3D"_blank">vwittkop@nanog.org</a>=C2=A0|=
=C2=A0+1 734-730-0225=C2=A0(mobile) |=C2=A0<a href=3D"http://www.nanog.org"=
 target=3D"_blank">www.nanog.org</a><br>NANOG | 305 E. Eisenhower=C2=A0Pkwy=
, Suite 100 | Ann Arbor, MI=C2=A048108, USA<br>ASN 19230</div><div><br></di=
v></div></div></div></div><img src=3D"https://nanog-dot-yamm-track.appspot.=
com/FireBase?ukey=3D1iC9yJseDPlEsi3ZBxV_kJjOPzZRszGTgFU8ccgLhuYA-0&amp;key=
=3DYAMMID-25813685" alt=3D"beacon" style=3D"display:none;display:none!impor=
tant" width=3D"1" height=3D"1">
</div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Latest Podcast:=
 <a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014284=
936785920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:a=
ctivity:6791014284936785920/</a><br></div><br>Dave T=C3=A4ht CTO, TekLibre,=
 LLC <br></div></div></div></div>

--0000000000006a1ded05c22261e5--

--===============4906763607146073550==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4906763607146073550==--
