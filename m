Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7351964BB
	for <lists+cake@lfdr.de>; Sat, 28 Mar 2020 10:16:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E424C3CB3E;
	Sat, 28 Mar 2020 05:16:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585386972;
	bh=PRDtav0z+H4M2e81k5AvTSQRFoPpruSLdwo/QtvOM0M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SjxpZQW1a3zM6GyggrEEe8g4ikz76Gko+elL0NX5Zvr0cDNnD4eoKGsYZ5Cu0EZRR
	 WCLBaus2FhCNwyLF6B3aMVCDbZsCjlCh4+f//e1ohOkvfjQP0qI9BCMFIsD5kHKoCa
	 JbcWENFX3Zh3anLSkQujF1A/jH/MxOsi4c4ckEbBMFWZs8EVR2K4M67kYospPsOd28
	 gOuGkvGtvzLQqgJ7ZUyJBx0JkYE2aCGGkTA8Z0Bnd6D1y8mlD8vAVjwMLoywYl2IWv
	 48WAtusbSUsNod6m1nKmJATs768dK9Q4cyuZAOsRqQd+p6FEdbyruPi7PNt/BD+O4X
	 TJ3AX/qj25UdQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BF3803B2A4
 for <cake@lists.bufferbloat.net>; Sat, 28 Mar 2020 02:53:24 -0400 (EDT)
Received: by mail-wr1-x432.google.com with SMTP id p10so14380404wrt.6
 for <cake@lists.bufferbloat.net>; Fri, 27 Mar 2020 23:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=freeswitch-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V4H7uWKByKwMhUfbyaGXIGugx12Kh7wbM+Lo4fufac4=;
 b=WBySsV6ZG0KuMiopqGheWRuClOJddWSoAQ2kn2FZAu718ZC7RbeiPGExUaiVO8RgN6
 m2+bMuim1lu9tKpotiN0GFGeiXZ5qy7gGru3nFwomnjMq17W4w9kp/uOaaRXrSKOkvRU
 IWM/PWuII1q/p89g3Lz2J9bHpoCHwZw82xucnw8d8UArndxiBHa/TVeuEwsuimJ3PpRt
 uA0NTFqJv6BXsub6gWBu2GqmO4khzdBpDaEycq09rTtQWn9OfstGBkjzZ2bXdUPD1WKS
 SnWSDZnb1nYhgJ0YHa2N+0s3BfxGyXLevd5Zjy+2E1++6ORPLYLINFYrvz/qi69yb6KD
 EwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V4H7uWKByKwMhUfbyaGXIGugx12Kh7wbM+Lo4fufac4=;
 b=DnpefaUNaEAlTgjIGzucAmUSb3yomGFh+DLTOu0T1RQdink34jdDqzfZG5+QicCRS1
 IcH5+kXoZY/rNkCwPsuv9B4czm61BKrf66t7kMM1Q42yI7XIxXXju3RvPJXtivqCNbhr
 5DTXiBhgPSo0ivRjzVsEhStrostYwMjSC2fei6cFATuTskO67emH4KYoAuajkof4XTFd
 5PIkMJA56G79zkRprQ4woWPvPrCHbrH49ItHpnRum8OQ0jHd9xG+9VFGvte0LB9lc3WT
 GeCACQLDeWiKWFHdGljAnSXrvX7a0Ha3a/8ULdlL/nTJmL+8t3OfQ1/4OIvi2sDym8yC
 XASg==
X-Gm-Message-State: ANhLgQ0SmogJEOGSpek/o3EwdrF1ycVUJYP3sXb+rlnLgKTNJMoqxoMV
 LdnU/zrYnUDxIoUpEkuIMB/WmuFURhJf4ElHVBR1lw==
X-Google-Smtp-Source: ADFU+vtthlkfjb44o7Tihpc40s/G3z9Dt03jZ+xiw5Ac1pcqComyBvimbPb+Yya6K2cw5nFPOOP7C0f0osXEr9ZoI1o=
X-Received: by 2002:a5d:6992:: with SMTP id g18mr3504412wru.426.1585378403864; 
 Fri, 27 Mar 2020 23:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
In-Reply-To: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
From: Anthony Minessale II <anthm@freeswitch.com>
Date: Sat, 28 Mar 2020 01:53:12 -0500
Message-ID: <CAPFLO2RseqZxqoeovkPRuve6kfJUf78teUxPoijT3BM0fgXCYg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Sat, 28 Mar 2020 05:16:10 -0400
Subject: Re: [Cake] mo bettah open source multi-party videoconferncing in an
 age of bloated uplinks?
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Ken Rice <krice@freeswitch.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8365837784881689391=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8365837784881689391==
Content-Type: multipart/alternative; boundary="00000000000098e40105a1e4acf0"

--00000000000098e40105a1e4acf0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Working on this a bit right now. I have the controls to tell the browser to
send less manually but not auto. We might add transport-cc as google seems
to have picked that one. We can have you on a call sometime to test.



On Fri, Mar 27, 2020 at 12:27 PM Dave Taht <dave.taht@gmail.com> wrote:

> sort of an outgrowth of this convo:
>
> https://lwn.net/SubscriberLink/815751/786d161d06a90f0e/
>
> I imagine worldwide videoconferencing quality could be much better if
> we could convince more folk to
> finally install sqm or upgrade to a working docsis 3.1 solution, etc.
> Maybe some rag somewhere will finally pick up on bufferbloat solutions
> and run with it? Or we can write some articles? Or reach out to school
> systems? Or?
>
> I've been fiddling with jitsi, and am about to give freeswitch a try.
> Last I looked freeswitch's otherwise pretty nifty conference bridge
> didn't dynamically adjust at all due to e2e signalling, but that was
> years ago. (?)
>
> I have to admit that p2p multiparty videoconferencing seems more
> plausible in a de-bufferbloated age, but
> haven't explored what tools are available. (?)
>
> There's also been this somewhat entertaining convo on the ietf mbone
> list:
> https://mailarchive.ietf.org/arch/msg/mboned/2thFQk_IYn38XCZBQavhUmOd6tk/
>
> Around me there has been this huge interest in "streaming". The user
> agreement for these (see restream.io's) is scary - and the copyright
> police have control... but I am very happy to report that even a
> couple really lousy long distance fq_codel'd ath9k links work *really*
> well (with facebook's implementation), where a non fq_codeled link
> (ath10k) failed miserably... and setting up a reflector in nginx also
> failed miserably.
>
> Anyone working on the ath10k AQL backport for openwrt as yet?
>
> --
> Make Music, Not War
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
>


--=20

[image: Inline image 1]

Anthony Minessale II | President

FreeSWITCH Solutions | 17345 Civic Drive #2531 Brookfield, WI 53045
<https://maps.google.com/?q=3D17345+Civic+Drive+%232531+Brookfield,+WI+5304=
5&entry=3Dgmail&source=3Dg>

Email: anthm@freeswitch.com

Mobile: +12623098501

Website: https://www.FreeSWITCH.com <https://www.freeswitch.com/>

[image: color-facebook-96.png] <https://www.facebook.com/freeswitch/>[image=
:
color-twitter-96.png]
<https://twitter.com/freeswitch?ref_src=3Dtwsrc%5Egoogle%7Ctwcamp%5Eserp%7C=
twgr%5Eauthor>

--00000000000098e40105a1e4acf0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Working on this a bit right now. I have the controls to te=
ll the browser to send less manually but not auto. We might add transport-c=
c as google seems to have picked that one. We can have you on a call someti=
me to test.<div><br><div><br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 27, 2020 at 12:27 PM D=
ave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">sort=
 of an outgrowth of this convo:<br>
<br>
<a href=3D"https://lwn.net/SubscriberLink/815751/786d161d06a90f0e/" rel=3D"=
noreferrer" target=3D"_blank">https://lwn.net/SubscriberLink/815751/786d161=
d06a90f0e/</a><br>
<br>
I imagine worldwide videoconferencing quality could be much better if<br>
we could convince more folk to<br>
finally install sqm or upgrade to a working docsis 3.1 solution, etc.<br>
Maybe some rag somewhere will finally pick up on bufferbloat solutions<br>
and run with it? Or we can write some articles? Or reach out to school<br>
systems? Or?<br>
<br>
I&#39;ve been fiddling with jitsi, and am about to give freeswitch a try.<b=
r>
Last I looked freeswitch&#39;s otherwise pretty nifty conference bridge<br>
didn&#39;t dynamically adjust at all due to e2e signalling, but that was<br=
>
years ago. (?)<br>
<br>
I have to admit that p2p multiparty videoconferencing seems more<br>
plausible in a de-bufferbloated age, but<br>
haven&#39;t explored what tools are available. (?)<br>
<br>
There&#39;s also been this somewhat entertaining convo on the ietf mbone<br=
>
list: <a href=3D"https://mailarchive.ietf.org/arch/msg/mboned/2thFQk_IYn38X=
CZBQavhUmOd6tk/" rel=3D"noreferrer" target=3D"_blank">https://mailarchive.i=
etf.org/arch/msg/mboned/2thFQk_IYn38XCZBQavhUmOd6tk/</a><br>
<br>
Around me there has been this huge interest in &quot;streaming&quot;. The u=
ser<br>
agreement for these (see <a href=3D"http://restream.io" rel=3D"noreferrer" =
target=3D"_blank">restream.io</a>&#39;s) is scary - and the copyright<br>
police have control... but I am very happy to report that even a<br>
couple really lousy long distance fq_codel&#39;d ath9k links work *really*<=
br>
well (with facebook&#39;s implementation), where a non fq_codeled link<br>
(ath10k) failed miserably... and setting up a reflector in nginx also<br>
failed miserably.<br>
<br>
Anyone working on the ath10k AQL backport for openwrt as yet?<br>
<br>
-- <br>
Make Music, Not War<br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-435-0729<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"font-size:12.8px"=
><font color=3D"#000000"><br><img src=3D"https://mail.google.com/mail/u/0/?=
ui=3D2&amp;ik=3D009548450c&amp;view=3Dfimg&amp;th=3D15f7e5e73deb55fe&amp;at=
tid=3D0.1&amp;disp=3Demb&amp;realattid=3Dii_15f73098599d14ae&amp;attbid=3DA=
NGjdJ9iQKQyJDZpINTWf5VHgVeatd5GxAZm5JA7X4C4GeZAbp8jrw3xB-ooPktLogCSdIxZTpjG=
CX1MX7iHRi_qtCk-oyJCnL4gAyPd38SkxydubgGBHkw9KleMY0Y&amp;sz=3Dw208-h70&amp;a=
ts=3D1509661021285&amp;rm=3D15f7e5e73deb55fe&amp;atsh=3D1" alt=3D"Inline im=
age 1" width=3D"104" height=3D"35" style=3D"margin-right: 0px;"><br></font>=
</div><div style=3D"font-size:12.8px"><p dir=3D"ltr" style=3D"font-size:12.=
8px;line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:4.5pt"><s=
pan style=3D"font-size:8pt;font-family:Arial;background-color:transparent;v=
ertical-align:baseline;white-space:pre-wrap"><font color=3D"#000000">Anthon=
y Minessale II | President</font></span></p><p dir=3D"ltr" style=3D"font-si=
ze:12.8px;line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:4.5=
pt"><span style=3D"font-size:8pt;font-family:Arial;background-color:transpa=
rent;vertical-align:baseline;white-space:pre-wrap"><font color=3D"#000000">=
FreeSWITCH Solutions | <a href=3D"https://maps.google.com/?q=3D17345+Civic+=
Drive+%232531+Brookfield,+WI+53045&amp;entry=3Dgmail&amp;source=3Dg" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">17345 Civic Drive #2531 Brookfi=
eld, WI 53045</a></font></span></p><p dir=3D"ltr" style=3D"font-size:12.8px=
;line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:4.5pt"><font=
 color=3D"#000000"><span style=3D"font-size:8pt;font-family:Arial;backgroun=
d-color:transparent;vertical-align:baseline;white-space:pre-wrap">Email: </=
span><a href=3D"mailto:anthm@freeswitch.com" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank"><span style=3D"font-size:8pt;font-family:Arial;backgroun=
d-color:transparent;vertical-align:baseline;white-space:pre-wrap">anthm@fre=
eswitch.com</span></a></font></p><p dir=3D"ltr" style=3D"font-size:12.8px;l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:4.5pt"><span s=
tyle=3D"font-size:8pt;font-family:Arial;background-color:transparent;vertic=
al-align:baseline;white-space:pre-wrap"><font color=3D"#000000">Mobile: <a =
href=3D"tel:+12623098501" value=3D"+17038593757" style=3D"color:rgb(17,85,2=
04)" target=3D"_blank">+12623098501</a> </font></span></p><p dir=3D"ltr" st=
yle=3D"font-size:12.8px;line-height:1.38;margin-top:0pt;margin-bottom:0pt;m=
argin-left:4.5pt"><font color=3D"#000000"><span style=3D"font-size:8pt;font=
-family:Arial;background-color:transparent;vertical-align:baseline;white-sp=
ace:pre-wrap">Website: </span><a href=3D"https://www.freeswitch.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><span style=3D"font-size:8pt;fo=
nt-family:Arial;background-color:transparent;vertical-align:baseline;white-=
space:pre-wrap">https://www.FreeSWITCH.com</span></a></font></p><p dir=3D"l=
tr" style=3D"font-size:12.8px;line-height:1.2;margin-top:0pt;margin-bottom:=
0pt"><font color=3D"#000000"><a href=3D"https://www.facebook.com/freeswitch=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><span style=3D"font-siz=
e:11pt;font-family:Arial;background-color:transparent;vertical-align:baseli=
ne;white-space:pre-wrap"><img src=3D"https://lh6.googleusercontent.com/l9_7=
QxvYIM4pcdS6eXAkIOZKqHnR2mYmt879_LZ93jSG-uGqOLzO0KVlBzTnPxn7QwU7I0Ednhi0MT_=
4nRGSobPt4f-LXMWr891Agu25Mvx-AD3k45rf6vUBquJW8NMPkHb_DBaK" width=3D"23" hei=
ght=3D"23" alt=3D"color-facebook-96.png" style=3D"border: none;"></span></a=
><span style=3D"font-size:11pt;font-family:Arial;background-color:transpare=
nt;vertical-align:baseline;white-space:pre-wrap"><a href=3D"https://twitter=
.com/freeswitch?ref_src=3Dtwsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" s=
tyle=3D"color:rgb(17,85,204)" target=3D"_blank"><img src=3D"https://lh5.goo=
gleusercontent.com/_iuGyx4UVI8fg3j3y7xgK6SX7BeTVYO7CLvH29tkkdgRnugoB6Ry39J5=
IcLdAKinOWuYrprkLisaB8sxMNrHgXAaHBy-GC1510iJrNIwBP5bCM_LGbOisxBTgao6yWITZ4l=
gQZVD" width=3D"23" height=3D"23" alt=3D"color-twitter-96.png" style=3D"bor=
der: none;"></a></span></font></p></div></div></div>

--00000000000098e40105a1e4acf0--

--===============8365837784881689391==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8365837784881689391==--
