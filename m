Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 839C0355702
	for <lists+cake@lfdr.de>; Tue,  6 Apr 2021 16:50:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CA7933CB42;
	Tue,  6 Apr 2021 10:50:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617720651;
	bh=ZReedRrQu0T6SqOhLvhkUPQy/PKLJF1Fz0JegnN7qq0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dd9LZWHoSr+QQ1T6zmGXIFMhy9EMxEXFrwSyNYuGwjkv+hOXXaSlKD3X+cBy89coP
	 fWYqX37SzAk1M2lkWaBGxpR/jKzDeRc7UAa75h/JXmqCguiolz08gCYDlbtPklhMWa
	 WhF8D+94ZVPPawBmhWNDVNzHEf0BMfdM3vc7QbzuodH4igcoUzeK1TNjOAynns6iQt
	 Fh40fZulxWAaxXKX+3bKqcXmdYaZJrjGbcgSRo5JDOT2tvO9MJpOjWf6M55wjuxmTF
	 l7t0Fj1xP2rwkEgagNd0/U2XNmddS+Zl0tKqBdu0JnIUhM2VsErIQwzRRMypNux6Bh
	 J9f6fK1Wvgm3g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DB0793B29E;
 Tue,  6 Apr 2021 10:50:49 -0400 (EDT)
Received: by mail-io1-xd2d.google.com with SMTP id x17so15865835iog.2;
 Tue, 06 Apr 2021 07:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=JYVrxqhuLVk7/By45VJ5uIPxY2NNAkmZ/gAKgeAomB8=;
 b=t0j4zdsWuv4QDkKLqEQsu2H6+bXEoSRjXOl5SumROkX60WmgwfUndqGOEh7nSHIfzM
 rUqqfDnv5fHoMupb41i1PaZn5VHP8DVEGCFTZRrGfOL09w1duDye22DShwgmu0q5aZcz
 eu4CtqbCVBNi8xzAuBPYlkCTMmrPHbxXVUP8l3uGu+Eci8LEWjtKik6lOm94AvUjF8QE
 EHJFQp1o9DIm5ZJbbvEnxdAK/tr5k2AypcrJvAAmpH6vM/9KupBoEu5J5i6ufraLOnPc
 dFpnObVLKMSyyCGtvNLtvk4yWa7tOihz7kOx6kG60O31/UJVnMbYunHC5s4lOJpQzi3Y
 rgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=JYVrxqhuLVk7/By45VJ5uIPxY2NNAkmZ/gAKgeAomB8=;
 b=hv51fheA1KNw6ugs3+U8qP2VSvrUsMEBScqIzHYJfOelM9vWEAWxZtn2o/IEo1clHc
 k5aDYzHyTPW4dQPtAj06f/hG9TMZskFc5GvQNA+jMcVUd5LmEI7lmb8IpjwWUf+4PTgB
 aMYsD0Ildu7JXdL/g6d5Orbyb6+AHhVIkL/Aq8M5PllbpM9MSe7QkLhTlbmCwuqqqtpC
 5k7PjePyMqn3Bh8r3Di67wcpX/wDsg+fkUmOGRMMe8xCFcpM066JGHeGtitAkpDGSZTd
 xMaYYivcJRCss3qXkGtcOLB+Cecwq9HNj8Y6x0oyMPR1nCuw9BKlnVyG1ceyRh1drHq3
 uUMg==
X-Gm-Message-State: AOAM530NZLdlCYGeCPykTEZdZ+NmwaFizGDqAgIbZ9kDqXRWi6TjPSNb
 V5vhaPV/QZju6p15b2TXS+FV0Y2DAlIJJjjExsAyEqhI/oZxgg==
X-Google-Smtp-Source: ABdhPJwo+Y6Ih40V4eSnb28iJGzrfxcjObp4HP8fSH95lQiXTyRNcP3GCwzDXC5uPBeURDET4YI6mpJFm8/4YwpNbMg=
X-Received: by 2002:a05:6638:13cc:: with SMTP id
 i12mr29107811jaj.128.1617720648860; 
 Tue, 06 Apr 2021 07:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <wCPnMFHETQCgTR9s6iHn8w@geopod-ismtpd-2-0>
 <CANmPVK-wsLrn4bp+pJ8j4K-ZYxQfVYqDQSBPLPKoK02KXdHBow@mail.gmail.com>
In-Reply-To: <CANmPVK-wsLrn4bp+pJ8j4K-ZYxQfVYqDQSBPLPKoK02KXdHBow@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 6 Apr 2021 07:50:37 -0700
Message-ID: <CAA93jw7-D03x=C5Z+Hy=0cQU96fKBA-bZ+9_4cQf88ZasSx==g@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: Update | Starlink Beta
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
Content-Type: multipart/mixed; boundary="===============7566709394977044823=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7566709394977044823==
Content-Type: multipart/alternative; boundary="0000000000009f072f05bf4ef00a"

--0000000000009f072f05bf4ef00a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Send a resume to:

*starlinksoftwarejobs@spacex.com <starlinksoftwarejobs@spacex.com>*

If anyone here would like to apply. Got no idea what "dynamic frame
allocation" is, but they are still testing out as quite bloated....

---------- Forwarded message ---------
From: myfriendontheinside <myfriendontheinside@gmail.com>
Date: Mon, Apr 5, 2021 at 10:18 PM
Subject: Fwd: Update | Starlink Beta
To: Dave Taht <dave.taht@gmail.com>


Starlink update email

---------- Forwarded message ---------
From: Starlink <no-reply@starlink.com>
Date: Mon, Apr 5, 2021, 7:23 PM
Subject: Update | Starlink Beta



[image: Starlink Logo]

Throughout the beta program, customer feedback has helped drive some of our
most important changes to date as we continue to test and scale the network=
.

The Starlink team has implemented a number of improvements since our last
update. Below are some of the key highlights:
*Starlink Expansion*
Since rollout of initial U.S. service in October 2020, Starlink now offers
limited beta service in Canada, U.K., Germany and New Zealand. To date, we
have deposits from almost every country around the world; going forward,
our ability to expand service will be driven in large part by governments
granting us licensing internationally.

*Preventative Maintenance*
Recently some beta users saw short but more frequent outages, particularly
in the evening hours. This was caused by two main issues=E2=80=94 preventiv=
e
maintenance on various ground gateways, coupled with a network logic bug
that intermittently caused some packet processing services to hang until
they were reset. The good news is fixes were implemented and users should
no longer see this particular issue.

Gateway Availability
As more users come online, the team is seeing an increase in surges of
activity, particularly during peak hours.  The gateway infrastructure to
support these types of surges is in place, but we are awaiting final
regulatory approval to use all available channels.  Near term fixes have
been implemented to facilitate better load balancing in the interim, and
this issue will fully resolve once all approvals are received.

*Dynamic Frame Allocation*
The Starlink software team recently rolled out our dynamic frame allocation
feature which dynamically allocates additional bandwidth to beta users
based on real time usage. This feature enables the network to better
balance load and deliver higher speeds to the user.

*Connecting to the Best Satellite*
Today, your Starlink speaks to a single satellite assigned to your terminal
for a particular period of time.  In the future, if communication with your
assigned satellite is interrupted for any reason, your Starlink will
seamlessly switch to a different satellite, resulting in far fewer network
disruptions. There can only be one satellite connected to your Starlink at
any time, but this feature will allow for choice of the best satellite.
This feature will be available to most beta users in April and is expected
to deliver one of our most notable reliability improvements to date.
These upgrades are part of our overall effort to build a network that not
only reaches underserved users, but also performs significantly better than
traditional satellite internet.

To that end, the Starlink team is always looking for great software,
integration and network engineers. If you want to help us build the
internet in space, please send your resume to *starlinksoftwarejobs@spacex.=
com
<starlinksoftwarejobs@spacex.com>*.
Thank you for your feedback and continued support!
The Starlink Team
Space Exploration Technologies Corp | 1 Rocket Road, Hawthorne, CA 90250 |
Unsubscribe
Questions? See Starlink FAQs <https://www.starlink.com/faq>


--=20
"For a successful technology, reality must take precedence over public
relations, for Mother Nature cannot be fooled" - Richard Feynman

dave@taht.net <Dave T=C3=A4ht> CTO, TekLibre, LLC Tel: 1-831-435-0729

--0000000000009f072f05bf4ef00a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Send a resume to:</div><div><br></div><span style=3D"=
box-sizing:border-box;padding:0px;margin:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font=
-size:14px;vertical-align:baseline;border-width:0px;border-style:initial;bo=
rder-color:initial;white-space:pre-wrap;color:rgb(19,43,233);font-family:ar=
ial,helvetica,sans-serif"><u><a href=3D"mailto:starlinksoftwarejobs@spacex.=
com" rel=3D"noreferrer" target=3D"_blank">starlinksoftwarejobs@spacex.com</=
a></u></span><div><font color=3D"#132be9" face=3D"arial, helvetica, sans-se=
rif"><span style=3D"font-size:14px;white-space:pre-wrap"><u><br></u></span>=
</font></div><div><div>If anyone here would like to apply. Got no idea what=
 &quot;dynamic frame allocation&quot; is, but they are still testing out as=
 quite bloated....</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: myfr=
iendontheinside=C2=A0<span dir=3D"auto">&lt;<a href=3D"mailto:myfriendonthe=
inside@gmail.com">myfriendontheinside@gmail.com</a>&gt;</span><br>Date: Mon=
, Apr 5, 2021 at 10:18 PM<br>Subject: Fwd: Update | Starlink Beta<br>To: Da=
ve Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&=
gt;<br></div><br><br><div dir=3D"auto">Starlink update email</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forw=
arded message ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"=
auto">Starlink</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:no-reply@s=
tarlink.com" target=3D"_blank">no-reply@starlink.com</a>&gt;</span><br>Date=
: Mon, Apr 5, 2021, 7:23 PM<br>Subject: Update | Starlink Beta<br><br></div=
><br><br><u></u>

   =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
   =20
    <div>
      <center>
        <div>
          <table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"=
100%" bgcolor=3D"#FFFFFF">
            <tbody><tr>
              <td valign=3D"top" bgcolor=3D"#FFFFFF" width=3D"100%">
                <table width=3D"100%" align=3D"center" cellpadding=3D"0" ce=
llspacing=3D"0" border=3D"0">
                  <tbody><tr>
                    <td width=3D"100%">
                      <table width=3D"100%" cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0">
                        <tbody><tr>
                          <td>
                           =20
                                    <table width=3D"100%" cellpadding=3D"0"=
 cellspacing=3D"0" border=3D"0" style=3D"width:100%;max-width:600px" align=
=3D"center">
                                      <tbody><tr>
                                        <td style=3D"padding:0px 10px 0px 1=
0px;color:#000000;text-align:left" bgcolor=3D"#FFFFFF" width=3D"100%" align=
=3D"left"><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"display:none!important;opacity:0;color:transparent;height:0;=
width:0">
    <tbody><tr>
      <td>
        <p></p>
      </td>
    </tr>
  </tbody></table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" w=
idth=3D"100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td style=3D"font-size:6px;line-height:10px;padding:50px 0px 20px 0=
px" valign=3D"top" align=3D"center">
          <img border=3D"0" style=3D"display:block;color:#000000;text-decor=
ation:none;font-family:Helvetica,arial,sans-serif;font-size:16px" width=3D"=
151" alt=3D"Starlink Logo" src=3D"http://cdn.mcauto-images-production.sendg=
rid.net/5b4c34d8653d4b16/6931bc49-60e1-479e-8601-1d108401d7f3/612x101.png" =
height=3D"25">
        </td>
      </tr>
    </tbody>
  </table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td style=3D"padding:40px 0px 45px 0px;line-height:24px;text-align:=
inherit" height=3D"100%" valign=3D"top" bgcolor=3D""><div><div style=3D"fon=
t-family:inherit;text-align:inherit"><span style=3D"font-size:14px;font-fam=
ily:arial,helvetica,sans-serif">Throughout the beta program, customer feedb=
ack has </span><span style=3D"color:#000000;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:pre-w=
rap;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline;font-size=
:14px;font-family:arial,helvetica,sans-serif">helped drive some of our most=
 important changes to date</span><span style=3D"font-size:14px;font-family:=
arial,helvetica,sans-serif"> as we continue to test and scale the network.<=
/span></div>
<div style=3D"font-family:inherit;text-align:inherit"><span style=3D"font-s=
ize:14px;font-family:arial,helvetica,sans-serif">=C2=A0<br>
The Starlink team has implemented a number of improvements since our last u=
pdate. Below are some of the key highlights:</span></div><div></div></div><=
/td>
      </tr>
    </tbody>
  </table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td style=3D"padding:0px 0px 0px 0px;line-height:24px;text-align:in=
herit" height=3D"100%" valign=3D"top" bgcolor=3D""><div><div style=3D"font-=
family:inherit;text-align:start"><span style=3D"font-size:14px;font-family:=
arial,helvetica,sans-serif"><strong>Starlink Expansion</strong></span></div=
>
<div style=3D"font-family:inherit;text-align:inherit"><span style=3D"font-f=
amily:arial,helvetica,sans-serif;font-size:14px">Since rollout of initial U=
.S. service in October 2020, Starlink now offers limited beta service in Ca=
nada, U.K., Germany and New Zealand. To date, we have deposits from almost =
every country around the world; going forward, our ability to expand servic=
e will be driven in large part by governments granting us licensing interna=
tionally.</span></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"font-siz=
e:14px;font-family:arial,helvetica,sans-serif"><br>
</span><span style=3D"font-size:14px;font-family:arial,helvetica,sans-serif=
"><strong>Preventative Maintenance</strong></span></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"font-siz=
e:14px;font-family:arial,helvetica,sans-serif">Recently some beta users saw=
 short but more frequent outages, particularly in the evening hours. This w=
as caused by two main issues=E2=80=94 preventive maintenance on various gro=
und gateways, coupled with a network logic bug that intermittently caused s=
ome packet processing services to hang until they were reset. The good news=
 is fixes were implemented and users should no longer see this particular i=
ssue.</span></div>
<div style=3D"font-family:inherit;text-align:start"><br></div>
<div style=3D"font-family:inherit;text-align:inherit;margin-left:0px"><span=
 style=3D"box-sizing:border-box;padding-top:0px;padding-right:0px;padding-b=
ottom:0px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0p=
x;margin-left:0px;font-style:inherit;font-variant-ligatures:inherit;font-va=
riant-caps:inherit;font-variant-numeric:inherit;font-variant-east-asian:inh=
erit;font-weight:bold;font-stretch:inherit;line-height:inherit;vertical-ali=
gn:baseline;border-top-width:0px;border-right-width:0px;border-bottom-width=
:0px;border-left-width:0px;border-top-style:initial;border-right-style:init=
ial;border-bottom-style:initial;border-left-style:initial;border-top-color:=
initial;border-right-color:initial;border-bottom-color:initial;border-left-=
color:initial;color:#000000;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:pre-wrap;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;font-size:14px;font-family:arial,helvetica,sans-serif">Gateway Av=
ailability</span></div>
<div style=3D"font-family:inherit;text-align:inherit"><span style=3D"color:=
#000000;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:pre-wrap;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline;font-size:14px;font-family:arial,helvetica,sa=
ns-serif">As more users come online, the team is seeing an increase in surg=
es of activity, particularly during peak hours.=C2=A0 The gateway infrastru=
cture to support these types of surges is in place, but we are awaiting fin=
al regulatory approval to use all available channels.=C2=A0 Near term fixes=
 have been implemented to facilitate better load balancing in the interim, =
and this issue will fully resolve once all approvals are received.</span></=
div>
<div style=3D"font-family:inherit;text-align:inherit"><br></div>
<div style=3D"font-family:inherit;text-align:inherit"><span style=3D"font-s=
ize:14px;font-family:arial,helvetica,sans-serif"><strong>Dynamic Frame Allo=
cation</strong></span></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"font-siz=
e:14px;font-family:arial,helvetica,sans-serif">The Starlink software team r=
ecently rolled out our dynamic frame allocation feature which dynamically a=
llocates additional bandwidth to beta users based on real time usage. This =
feature enables the network to better balance load and deliver higher speed=
s to the user.<br>
<br>
</span><span style=3D"font-size:14px;font-family:arial,helvetica,sans-serif=
"><strong>Connecting to the Best Satellite</strong></span></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"font-siz=
e:14px;font-family:arial,helvetica,sans-serif">Today, your Starlink speaks =
to a single satellite assigned to your terminal for a particular period of =
time.=C2=A0 In the future, if communication with your assigned satellite is=
 interrupted for any reason, your Starlink will seamlessly switch to a diff=
erent satellite, resulting in far fewer network disruptions. There can only=
 be one satellite connected to your Starlink at any time, but this feature =
will allow for choice of the best satellite.=C2=A0 This feature will be ava=
ilable to most beta users in April and is expected to deliver one of our mo=
st notable reliability improvements to date.=C2=A0</span></div><div></div><=
/div></td>
      </tr>
    </tbody>
  </table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td style=3D"padding:45px 0px 10px 0px;line-height:24px;text-align:=
inherit" height=3D"100%" valign=3D"top" bgcolor=3D""><div><div style=3D"fon=
t-family:inherit;text-align:start"><span style=3D"box-sizing:border-box;pad=
ding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-t=
op:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;font-style:inheri=
t;font-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-weight:inherit;font-stret=
ch:inherit;line-height:inherit;font-size:14px;vertical-align:baseline;borde=
r-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-=
width:0px;border-top-style:initial;border-right-style:initial;border-bottom=
-style:initial;border-left-style:initial;border-top-color:initial;border-ri=
ght-color:initial;border-bottom-color:initial;border-left-color:initial;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:pre-wrap;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;font-family:arial,hel=
vetica,sans-serif">These upgrades are part of our overall effort to build a=
 network that not only reaches underserved users, but also performs signifi=
cantly better than traditional satellite internet. =C2=A0=C2=A0</span></div=
>
<div style=3D"font-family:inherit;text-align:start"><br></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"box-sizi=
ng:border-box;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-=
left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;=
font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit=
;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-weight:i=
nherit;font-stretch:inherit;line-height:inherit;font-size:14px;vertical-ali=
gn:baseline;border-top-width:0px;border-right-width:0px;border-bottom-width=
:0px;border-left-width:0px;border-top-style:initial;border-right-style:init=
ial;border-bottom-style:initial;border-left-style:initial;border-top-color:=
initial;border-right-color:initial;border-bottom-color:initial;border-left-=
color:initial;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:pre-wrap;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;font=
-family:arial,helvetica,sans-serif">To that end, the Starlink team is alway=
s looking for great software, integration and network engineers. If you wan=
t to help us build the internet in space, please send your resume to </span=
><span style=3D"box-sizing:border-box;padding-top:0px;padding-right:0px;pad=
ding-bottom:0px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bot=
tom:0px;margin-left:0px;font-style:inherit;font-variant-ligatures:inherit;f=
ont-variant-caps:inherit;font-variant-numeric:inherit;font-variant-east-asi=
an:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;fon=
t-size:14px;vertical-align:baseline;border-top-width:0px;border-right-width=
:0px;border-bottom-width:0px;border-left-width:0px;border-top-style:initial=
;border-right-style:initial;border-bottom-style:initial;border-left-style:i=
nitial;border-top-color:initial;border-right-color:initial;border-bottom-co=
lor:initial;border-left-color:initial;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:pre-wrap;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;color:#132be9;font-family:arial,helvetica,sans-serif"><=
u><a href=3D"mailto:starlinksoftwarejobs@spacex.com" rel=3D"noreferrer" tar=
get=3D"_blank">starlinksoftwarejobs@spacex.com</a></u></span><span style=3D=
"box-sizing:border-box;padding-top:0px;padding-right:0px;padding-bottom:0px=
;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-=
left:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-cap=
s:inherit;font-variant-numeric:inherit;font-variant-east-asian:inherit;font=
-weight:inherit;font-stretch:inherit;line-height:inherit;font-size:14px;ver=
tical-align:baseline;border-top-width:0px;border-right-width:0px;border-bot=
tom-width:0px;border-left-width:0px;border-top-style:initial;border-right-s=
tyle:initial;border-bottom-style:initial;border-left-style:initial;border-t=
op-color:initial;border-right-color:initial;border-bottom-color:initial;bor=
der-left-color:initial;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:pre-wrap;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;font-family:arial,helvetica,sans-serif">.<br>
</span></div>
<div style=3D"font-family:inherit;text-align:start"><span style=3D"box-sizi=
ng:border-box;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-=
left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;=
font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit=
;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-weight:i=
nherit;font-stretch:inherit;line-height:inherit;font-size:14px;vertical-ali=
gn:baseline;border-top-width:0px;border-right-width:0px;border-bottom-width=
:0px;border-left-width:0px;border-top-style:initial;border-right-style:init=
ial;border-bottom-style:initial;border-left-style:initial;border-top-color:=
initial;border-right-color:initial;border-bottom-color:initial;border-left-=
color:initial;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:pre-wrap;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;font=
-family:arial,helvetica,sans-serif">Thank you for your feedback and continu=
ed support!<br>
</span></div>
<div style=3D"font-family:inherit;text-align:inherit;margin-left:0px"><span=
 style=3D"box-sizing:border-box;padding-top:0px;padding-right:0px;padding-b=
ottom:0px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0p=
x;margin-left:0px;font-style:inherit;font-variant-ligatures:inherit;font-va=
riant-caps:inherit;font-variant-numeric:inherit;font-variant-east-asian:inh=
erit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-size=
:14px;vertical-align:baseline;border-top-width:0px;border-right-width:0px;b=
order-bottom-width:0px;border-left-width:0px;border-top-style:initial;borde=
r-right-style:initial;border-bottom-style:initial;border-left-style:initial=
;border-top-color:initial;border-right-color:initial;border-bottom-color:in=
itial;border-left-color:initial;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:pre-wrap;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;font-family:arial,helvetica,sans-serif">The Starlink Team</sp=
an></div><div></div></div></td>
      </tr>
    </tbody>
  </table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td style=3D"padding:0px 0px 65px 0px" bgcolor=3D"">
        </td>
      </tr>
    </tbody>
  </table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"=
100%" style=3D"table-layout:fixed">
    <tbody>
      <tr>
        <td height=3D"100%" valign=3D"top"><div style=3D"text-align:center"=
>

    <div style=3D"font-size:12px;color:#505050;font-family:sans-serif;text-=
decoration:none;line-height:24px">Space Exploration Technologies Corp | 1 R=
ocket Road, Hawthorne, CA 90250 |=20

        <a style=3D"font-size:12px;color:#505050;font-family:sans-serif;tex=
t-decoration:none;line-height:24px" rel=3D"noreferrer">

        Unsubscribe</a><br>

        <div><a style=3D"font-size:12px;color:#505050;font-family:sans-seri=
f;text-decoration:none;line-height:24px" href=3D"https://www.starlink.com/f=
aq" rel=3D"noreferrer" target=3D"_blank">Questions? See Starlink FAQs</a></=
div>

    </div>    =20

</div>

</td>
      </tr>
    </tbody>
  </table></td>
                                      </tr>
                                    </tbody></table>
                                   =20
                          </td>
                        </tr>
                      </tbody></table>
                    </td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
      </center>
   =20
<img src=3D"https://u12253253.ct.sendgrid.net/wf/open?upn=3DGAgZhgRmP3OwPbB=
j8F3cltscsb90agBOQ-2B0VU6C48ssbYkKFk6wem3qLptCiDP8HpxH4ddO4o2C4VYp6x0F2D8ta=
2k5FiJ-2Ffm8UqcMzmarnbf429EJBSehCsR326U4Z5qrMhVmKcgWPiJlfRF2VAPwRVHlE-2FyF2=
LFGBqY4PfK3WCy9G2Akfl4LsHDxOfYWHsP8-2Bv-2FVAWEVDsr-2F0Oxlup6ymTS6Njad8Mfxh5=
BVltaWyjL4fqr-2FinLyCGjifC19x4sBYB3ovgfvqTO75s-2FQoR-2B9-2BLWXRWs8bFOoJKJN4=
yYpssZTOAq7mc1WF-2FqYoGYr6RBwIydursVGmk2dmUHqBOor1Ey0OYRIMnmELH5ecrjzpOu7J8=
wAk-2BFrdNLGsvhpXa-2F9c0vblQWt2VqwafhohzGzCh9YPnQfIyxOZSE3B9RQzSKsd-2BvJywJ=
V1cyOG8F-2B-2FXpjNCsSQjcUfD8CP7Wlj7DzgagL3N0Xfk8Mew2m7BgSgCgrhq-2BLO8wt-2Bf=
sfwdiRAPNpvFGXx2As355ooi2wbtjVxzvj6b5aidfBLHJzdsSnfGJUOeH0BOWmh-2Fg7OWwCOaG=
p1byf8s9QtswLZNSigyUzcO666cyaal7EZftF4wG64-3D" alt=3D"" width=3D"1" height=
=3D"1" border=3D"0" style=3D"height:1px!important;width:1px!important;borde=
r-width:0!important;margin-top:0!important;margin-bottom:0!important;margin=
-right:0!important;margin-left:0!important;padding-top:0!important;padding-=
bottom:0!important;padding-right:0!important;padding-left:0!important">
</div>
 =20
</div>
</div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">&quot;For=
 a successful technology, reality must take precedence over public relation=
s, for Mother Nature cannot be fooled&quot; - Richard Feynman<br><br><a hre=
f=3D"mailto:dave@taht.net" target=3D"_blank">dave@taht.net</a> &lt;Dave T=
=C3=A4ht&gt; CTO, TekLibre, LLC Tel: 1-831-435-0729</div></div></div></div>=
</div>

--0000000000009f072f05bf4ef00a--

--===============7566709394977044823==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7566709394977044823==--
