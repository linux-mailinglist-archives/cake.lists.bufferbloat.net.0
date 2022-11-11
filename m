Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A62626057
	for <lists+cake@lfdr.de>; Fri, 11 Nov 2022 18:20:19 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3F8AD3CB39;
	Fri, 11 Nov 2022 12:20:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1668187217;
	bh=sT85pgbTpK5tkxapakKxRKbmJq7svy3nGOzP0qvuGOE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=XsZNkczBMEgAT7w/P6ZZvMhnXiHfuq0DsGIUvWbg5X+Obd0yjXYRHrZde+hn+PGRu
	 lFII0HUb2IkF3ngXdRYJvM3Mh6LNHLmFlWtNzyXCH8zJYCXKsPsSHcGFue/ULhsOcg
	 2wANywHOJ3ujcydl0K1ueNfk44MRzbnxz7HicSTiBxpywlaYCslQfsWnuvFFVZzUo5
	 tu23DFFVIRhcQElY8s2xVPJkXY/OAt3vNfmg9GzwQFGHyz21gWf6pwx2prwYEvqhrV
	 jOik8b1ofABoSELpLvXPAvDRNvliYQyHRJU+c4IRbnKNJfs6jYwrmrdyP7gcgpa381
	 4Y5Mv6r2dTUBA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9821C3B29D;
 Fri, 11 Nov 2022 12:20:15 -0500 (EST)
Received: by mail-wr1-x42f.google.com with SMTP id h9so7367248wrt.0;
 Fri, 11 Nov 2022 09:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1QBx+mEXEYAUf+pTjKonXu44gwPL0uluwKecARCndAs=;
 b=BGCmtueGLWrjmMz2kpP3TIplqRScsmZF7dDbpOf2M2gx6G6e71n3L/7x7eRoIohq+o
 sw1NOtqYpaaZux2xfOS0KkOb/hdt7SoTbSVqiPDLCbg9hQIXtdt3GQoZ7pGXXZLcpVVd
 ZbmNY29qCXJFK20BKF9vPBu7aLY0JYK0oy/b+TfvX7c7AvmJwXc8SQm2kbD7iv39P7mo
 aTTUN0sT2ZL4dl80kRsWcVRZtPyK9+Rbs7e2MZKQQviaUsHssNQu0Bh5VkHlVeaTN32L
 AqU+B5oDvlnHn5jZ32TMaOL15v3Rav6TN9JHQAvQWMAZAYTKTw6yCVOok7/ZXA2cxTBc
 O0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1QBx+mEXEYAUf+pTjKonXu44gwPL0uluwKecARCndAs=;
 b=bfC3ODTKOwZExbt1OTJQgimeSojYjBZKHxzDfCQHBmpfXIVrX6GJ0lb9JOq3UX1wGZ
 8/9KpPB/souscLBd/zXg2KP6gyqHobP8nW77JSyswvNzAySOEsGzzyQERUr7PGbGjyze
 fqdhIOl2dGdK6A4IAirUs9Dcj/pU8qiJuEgDcPSqEsj5h58VBUT/FA5xOSDsl77Iin6X
 vzO2tNeJmh4evhiMhlzgvPzaLcica4NQ84CO1TOC0iJkoFcvhcdGNsXykMGUuW3H3Y7T
 lrz6piMMnLyTqYVwbnhnmyr9Wzi1pMS8dlHISdDiOjKBEK7of6dMEsGeJOGKgCED2Q+I
 81Dg==
X-Gm-Message-State: ANoB5plmOCRSb14E6EngGEGLtV3lZbxvNC7jJ4G8YawAs3lPHhuW8RZV
 zaWc1nyj8H07aPw87a/0uCHXHfZdVEJiPBGGseyux7D0
X-Google-Smtp-Source: AA0mqf437Ag2DAmtiSwcXnG6yHDrTlERqmW85EActTP6WqG7UOUTYZl96yJ/qEIaO1vdHPaGgWnynVIfMaZz6ETbqX4=
X-Received: by 2002:a5d:484e:0:b0:236:5974:a5c7 with SMTP id
 n14-20020a5d484e000000b002365974a5c7mr1817790wrs.430.1668187213970; Fri, 11
 Nov 2022 09:20:13 -0800 (PST)
MIME-Version: 1.0
References: <38bd6154386f64fcd92204a25.bea3b20d02.20221111170655.57622d374e.3d5da49d@mail245.suw14.mcdlv.net>
In-Reply-To: <38bd6154386f64fcd92204a25.bea3b20d02.20221111170655.57622d374e.3d5da49d@mail245.suw14.mcdlv.net>
Date: Fri, 11 Nov 2022 09:20:01 -0800
Message-ID: <CAA93jw7K2LJmGLrcufPLG7Ox=saVF8jbopmU+6L+yRRPm5hh-g@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: Our Aaron Swartz Day Celebration Starts Tomorrow!
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: multipart/mixed; boundary="===============9138217914354548252=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9138217914354548252==
Content-Type: multipart/alternative; boundary="0000000000004ecaec05ed351a85"

--0000000000004ecaec05ed351a85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I didn't put us in for the hackathon, but showing up would be useful. ALL
the distributed technologies benefit from low bufferbloat, and low latency.

---------- Forwarded message ---------
From: Internet Archive <info@archive.org>
Date: Fri, Nov 11, 2022 at 9:08 AM
Subject: Our Aaron Swartz Day Celebration Starts Tomorrow!
To: Dave Taht <dave.taht@gmail.com>


Join us to celebrate the life of Aaron Swartz on Saturday and Sunday,
November 12th and 13th.
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D660e5a545b&e=3Dbea3b20d02>

*View this email in your browser*
<https://mailchi.mp/archive.org/20221111aarnswtzevent2?e=3Dbea3b20d02>
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D209a36a2a2&e=3Dbea3b20d02>
*Aaron Swartz Day and International Hackathon*

Our celebration of the life of Aaron Swartz
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D129ff5e683&e=3Dbea3b20d02>
begins
TOMORROW! Aaron Swartz was a hacktivist, political organizer, and
passionate advocate for free and open access to knowledge. The annual Aaron
Swartz Day celebration commemorates his life and work, while also
showcasing projects that he inspired. This year's event will feature two
days of speakers, hackathons, and parties, hosted at the Internet Archive
headquarters.

If you'd like to participate in the hackathon, the list of projects is
available here
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D77e1630ad1&e=3Dbea3b20d02>.
There will also be hackathons going on in Brazil, Ecuador, and Argentina,
for open access supporters living in Latin America.

This year's event will feature presentations from the EFF and the Freedom
of the Press Foundation, as well as Cory Doctorow, Chelsea Manning, and
Brewster Kahle, among many others. The full speaker schedule is available
here
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D1a119d4bff&e=3Dbea3b20d02>
.

Finally, if you aren't able to join us in person, you can watch the
livestream of the event online
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D1a0122de09&e=3Dbea3b20d02>!
We hope to see you soon!

REGISTER TO ATTEND
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D3ab2bf19ed&e=3Dbea3b20d02>

*Dates & Times*
Saturday, November 12, 2022, 10:00 AM
to Sunday, November 13, 2022, 9:00 PM

*Location*
300 Funston Avenue
San Francisco, CA 94118

OR

Online Event
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3Dc78833d6f0&e=3Dbea3b20d02>


*If you would like to make a tax-deductible donation to the Internet
Archive, we would greatly appreciate your support. You can lend a hand by
visiting archive.org/donate
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D083e165e21&e=3Dbea3b20d02>
or
by texting ARCHIVE to 44321. Thank you for helping us provide Universal
Access To All Knowledge. *
DONATE TO THE INTERNET ARCHIVE
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D62af59781d&e=3Dbea3b20d02>
[image: Facebook]
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D05630a0023&e=3Dbea3b20d02>
[image: Twitter]
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3D101293605f&e=3Dbea3b20d02>
[image: Instagram]
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3Dda8b1348df&e=3Dbea3b20d02>
[image: Website]
<https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd9220=
4a25&id=3Da116a294f3&e=3Dbea3b20d02>
You are receiving this email because of your relationship with the Internet
Archive.

*Our mailing address is:*
Internet Archive
300 Funston Avenue
San Francisco, CA 94118

*Want to change how you receive these emails?*
You can *update your preferences
<https://archive.us20.list-manage.com/profile?u=3D38bd6154386f64fcd92204a25=
&id=3Dc675b9ae13&e=3Dbea3b20d02&c=3D57622d374e>
*to
change what types of notifications you receive,
or switch from HTML format to plain text.
You can also *unsubscribe from this list
<https://archive.us20.list-manage.com/unsubscribe?u=3D38bd6154386f64fcd9220=
4a25&id=3Dc675b9ae13&e=3Dbea3b20d02&c=3D57622d374e>
*if
you don't want to hear from us again.


--=20
This song goes out to all the folk that thought Stadia would work:
https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-69813666656=
07352320-FXtz
Dave T=C3=A4ht CEO, TekLibre, LLC

--0000000000004ecaec05ed351a85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I didn&#39;t put us in for the hackathon, but showing up w=
ould be useful. ALL the distributed technologies benefit from low bufferblo=
at, and low latency. <br><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: <b =
class=3D"gmail_sendername" dir=3D"auto">Internet Archive</b> <span dir=3D"a=
uto">&lt;<a href=3D"mailto:info@archive.org">info@archive.org</a>&gt;</span=
><br>Date: Fri, Nov 11, 2022 at 9:08 AM<br>Subject: Our Aaron Swartz Day Ce=
lebration Starts Tomorrow!<br>To: Dave Taht &lt;<a href=3D"mailto:dave.taht=
@gmail.com">dave.taht@gmail.com</a>&gt;<br></div><br><br><div class=3D"msg2=
411789296191483362"><u></u>

   =20
       =20
       =20
       =20
       =20
       =20
       =20

   =20
    <div style=3D"height:100%;margin:0;padding:0;width:100%"><div><div></di=
v><div></div></div>
       =20
        <span class=3D"m_2411789296191483362mcnPreviewText" style=3D"displa=
y:none;font-size:0px;line-height:0px;max-height:0px;max-width:0px;opacity:0=
;overflow:hidden">Join us to celebrate the life of Aaron Swartz on Saturday=
 and Sunday, November 12th and 13th.</span>
       =20
        <center>
            <table id=3D"m_2411789296191483362bodyTable" style=3D"border-co=
llapse:collapse;height:100%;margin:0;padding:0;width:100%" width=3D"100%" h=
eight=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"ce=
nter">
                <tbody><tr>
                    <td id=3D"m_2411789296191483362bodyCell" style=3D"heigh=
t:100%;margin:0;padding:0;width:100%" valign=3D"top" align=3D"center">
                       =20
                        <table style=3D"border-collapse:collapse" width=3D"=
100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                            <tbody><tr>
                                <td id=3D"m_2411789296191483362templateHead=
er" style=3D"background:#000000 none no-repeat center/cover;background-colo=
r:#000000;background-image:none;background-repeat:no-repeat;background-posi=
tion:center;background-size:cover;border-top:0;border-bottom:0;padding-top:=
0px;padding-bottom:0px" valign=3D"top" align=3D"center">
                                   =20
                                    <table class=3D"m_2411789296191483362te=
mplateContainer" style=3D"border-collapse:collapse;max-width:600px!importan=
t" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D=
"center">
                                        <tbody><tr>
                                            <td class=3D"m_2411789296191483=
362headerContainer" style=3D"background:#transparent none no-repeat center/=
cover;background-color:#transparent;background-image:none;background-repeat=
:no-repeat;background-position:center;background-size:cover;border-top:0;bo=
rder-bottom:0;padding-top:0;padding-bottom:0" valign=3D"top"><table style=
=3D"min-width:100%;border-collapse:collapse" width=3D"100%" cellspacing=3D"=
0" cellpadding=3D"0" border=3D"0">
    <tbody>
            <tr>
                <td style=3D"padding:9px" valign=3D"top">
                    <table style=3D"min-width:100%;border-collapse:collapse=
" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"=
left">
                        <tbody><tr>
                            <td style=3D"padding-right:9px;padding-left:9px=
;padding-top:0;padding-bottom:0;text-align:center" valign=3D"top">

                                    <a href=3D"https://archive.us20.list-ma=
nage.com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D660e5a545b&amp;=
e=3Dbea3b20d02" title=3D"" target=3D"_blank">
                                        <img alt=3D"" src=3D"https://mcuser=
content.com/38bd6154386f64fcd92204a25/images/745cea70-1200-447a-a3b3-ab6885=
b4f044.png" style=3D"max-width:300px;padding-bottom:0;display:inline!import=
ant;vertical-align:bottom;border:0;height:auto;outline:none;text-decoration=
:none" class=3D"m_2411789296191483362mcnImage" width=3D"300" align=3D"middl=
e">
                                    </a>

                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table></td>
                                        </tr>
                                    </tbody></table>
                                   =20
                                </td>
                            </tr>
                            <tr>
                                <td id=3D"m_2411789296191483362templateBody=
" style=3D"background:#ffffff none no-repeat center/cover;background-color:=
#ffffff;background-image:none;background-repeat:no-repeat;background-positi=
on:center;background-size:cover;border-top:0;border-bottom:0;padding-top:5p=
x;padding-bottom:5px" valign=3D"top" align=3D"center">
                                   =20
                                    <table class=3D"m_2411789296191483362te=
mplateContainer" style=3D"border-collapse:collapse;max-width:600px!importan=
t" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D=
"center">
                                        <tbody><tr>
                                            <td class=3D"m_2411789296191483=
362bodyContainer" style=3D"background:#transparent none no-repeat center/co=
ver;background-color:#transparent;background-image:none;background-repeat:n=
o-repeat;background-position:center;background-size:cover;border-top:0;bord=
er-bottom:0;padding-top:0;padding-bottom:0" valign=3D"top"><table style=3D"=
min-width:100%;border-collapse:collapse" width=3D"100%" cellspacing=3D"0" c=
ellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:9px" valign=3D"top">
              =09
		=09
			=09
                <table style=3D"max-width:100%;min-width:100%;border-collap=
se:collapse" class=3D"m_2411789296191483362mcnTextContentContainer" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left">
                    <tbody><tr>

                        <td class=3D"m_2411789296191483362mcnTextContent" s=
tyle=3D"padding:0px 18px 9px;color:#2a2a2a;word-break:break-word;font-famil=
y:Helvetica;font-size:16px;line-height:150%;text-align:left" valign=3D"top"=
>

                            <div style=3D"text-align:center"><a href=3D"htt=
ps://mailchi.mp/archive.org/20221111aarnswtzevent2?e=3Dbea3b20d02" style=3D=
"color:#0baadf;font-weight:normal;text-decoration:underline" target=3D"_bla=
nk"><span style=3D"font-size:12px"><i>View this email in your browser</i></=
span></a></div>

                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
            <tr>
                <td style=3D"padding:9px" valign=3D"top">
                    <table style=3D"min-width:100%;border-collapse:collapse=
" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"=
left">
                        <tbody><tr>
                            <td style=3D"padding-right:9px;padding-left:9px=
;padding-top:0;padding-bottom:0;text-align:center" valign=3D"top">

                                    <a href=3D"https://archive.us20.list-ma=
nage.com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D209a36a2a2&amp;=
e=3Dbea3b20d02" title=3D"" target=3D"_blank">
                                        <img alt=3D"" src=3D"https://mcuser=
content.com/38bd6154386f64fcd92204a25/images/acfe9dd2-d191-a443-a843-589428=
f68d88.jpeg" style=3D"max-width:1200px;padding-bottom:0;display:inline!impo=
rtant;vertical-align:bottom;border:0;height:auto;outline:none;text-decorati=
on:none" class=3D"m_2411789296191483362mcnImage" width=3D"564" align=3D"mid=
dle">
                                    </a>

                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:9px" valign=3D"top">
              =09
		=09
			=09
                <table style=3D"max-width:100%;min-width:100%;border-collap=
se:collapse" class=3D"m_2411789296191483362mcnTextContentContainer" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left">
                    <tbody><tr>

                        <td class=3D"m_2411789296191483362mcnTextContent" s=
tyle=3D"padding:0px 18px 9px;color:#2a2a2a;word-break:break-word;font-famil=
y:Helvetica;font-size:16px;line-height:150%;text-align:left" valign=3D"top"=
>

                            <span style=3D"font-size:22px"><b>Aaron Swartz =
Day and International Hackathon</b></span><br>
<br>
Our=C2=A0<a href=3D"https://archive.us20.list-manage.com/track/click?u=3D38=
bd6154386f64fcd92204a25&amp;id=3D129ff5e683&amp;e=3Dbea3b20d02" style=3D"co=
lor:#0baadf;font-weight:normal;text-decoration:underline" target=3D"_blank"=
>celebration of the life of Aaron Swartz</a>=C2=A0begins TOMORROW! Aaron Sw=
artz was a hacktivist,=C2=A0political organizer, and passionate advocate fo=
r free and open access to knowledge. The annual Aaron Swartz Day celebratio=
n commemorates his life and work, while also showcasing projects that he in=
spired. This year&#39;s event will feature two days of speakers, hackathons=
, and parties, hosted at the Internet Archive headquarters.<br>
<br>
If you&#39;d like to participate in the hackathon, <a href=3D"https://archi=
ve.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D=
77e1630ad1&amp;e=3Dbea3b20d02" style=3D"color:#0baadf;font-weight:normal;te=
xt-decoration:underline" target=3D"_blank">the list of projects is availabl=
e here</a>. There will also be=C2=A0hackathons going on in Brazil, Ecuador,=
 and Argentina, for open access supporters living in Latin America.<br>
<br>
This year&#39;s event will feature presentations from the EFF and=C2=A0the =
Freedom of the Press Foundation, as well as Cory Doctorow, Chelsea Manning,=
 and Brewster Kahle, among many others. <a href=3D"https://archive.us20.lis=
t-manage.com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D1a119d4bff&=
amp;e=3Dbea3b20d02" style=3D"color:#0baadf;font-weight:normal;text-decorati=
on:underline" target=3D"_blank">The full speaker schedule is available here=
</a>.<br>
<br>
Finally, if you aren&#39;t able to join us in person, you can <a href=3D"ht=
tps://archive.us20.list-manage.com/track/click?u=3D38bd6154386f64fcd92204a2=
5&amp;id=3D1a0122de09&amp;e=3Dbea3b20d02" style=3D"color:#0baadf;font-weigh=
t:normal;text-decoration:underline" target=3D"_blank">watch the livestream =
of the event online</a>! We hope to see you soon!<br>
=C2=A0
                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:0;padding-right:18px;padding-bottom:18=
px;padding-left:18px" valign=3D"top" align=3D"center">
                <table style=3D"border-collapse:separate!important;border-r=
adius:3px;background-color:#7fc241" cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0">
                    <tbody>
                        <tr>
                            <td style=3D"font-family:Arial;font-size:20px;p=
adding:18px" valign=3D"middle" align=3D"center">
                                <a class=3D"m_2411789296191483362mcnButton"=
 title=3D"REGISTER TO ATTEND" href=3D"https://archive.us20.list-manage.com/=
track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D3ab2bf19ed&amp;e=3Dbea3b=
20d02" style=3D"font-weight:bold;letter-spacing:normal;line-height:100%;tex=
t-align:center;text-decoration:none;color:#ffffff;display:block" target=3D"=
_blank">REGISTER TO ATTEND</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:9px" valign=3D"top">
              =09
		=09
			=09
                <table style=3D"max-width:100%;min-width:100%;border-collap=
se:collapse" class=3D"m_2411789296191483362mcnTextContentContainer" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left">
                    <tbody><tr>

                        <td class=3D"m_2411789296191483362mcnTextContent" s=
tyle=3D"padding:0px 18px 9px;color:#2a2a2a;word-break:break-word;font-famil=
y:Helvetica;font-size:16px;line-height:150%;text-align:left" valign=3D"top"=
>

                            <div style=3D"text-align:center"><span style=3D=
"font-size:18px"><b>Dates &amp; Times</b><br>
Saturday, November 12, 2022, 10:00 AM<br>
to=C2=A0Sunday, November 13, 2022, 9:00 PM<br>
<br>
<b>Location</b><br>
300 Funston Avenue<br>
San Francisco, CA 94118</span><br>
<br>
OR<br>
<br>
<span style=3D"font-size:18px"><a href=3D"https://archive.us20.list-manage.=
com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3Dc78833d6f0&amp;e=3Db=
ea3b20d02" style=3D"color:#0baadf;font-weight:normal;text-decoration:underl=
ine" target=3D"_blank">Online Event</a></span></div>

                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
            </td>
        </tr>
    </tbody>
</table><table class=3D"m_2411789296191483362mcnDividerBlock" style=3D"min-=
width:100%;border-collapse:collapse;table-layout:fixed!important" width=3D"=
100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"min-width:100%;padding:18px">
                <table style=3D"min-width:100%;border-top:2px solid #eaeaea=
;border-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>

            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:9px" valign=3D"top">
              =09
		=09
			=09
                <table style=3D"max-width:100%;min-width:100%;border-collap=
se:collapse" class=3D"m_2411789296191483362mcnTextContentContainer" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left">
                    <tbody><tr>

                        <td class=3D"m_2411789296191483362mcnTextContent" s=
tyle=3D"padding:0px 18px 9px;color:#2a2a2a;word-break:break-word;font-famil=
y:Helvetica;font-size:16px;line-height:150%;text-align:left" valign=3D"top"=
>

                            <span style=3D"font-size:16px"><i>If you would =
like to make a tax-deductible donation to the Internet Archive, we would gr=
eatly appreciate your support.=C2=A0You can lend a hand by visiting=C2=A0<a=
 href=3D"https://archive.us20.list-manage.com/track/click?u=3D38bd6154386f6=
4fcd92204a25&amp;id=3D083e165e21&amp;e=3Dbea3b20d02" style=3D"color:#0baadf=
;font-weight:normal;text-decoration:underline" target=3D"_blank">archive.or=
g/donate</a>=C2=A0or by texting ARCHIVE to 44321.<br>
<br>
Thank you for helping us provide Universal Access To All Knowledge.=C2=A0</=
i></span>
                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:0;padding-right:18px;padding-bottom:18=
px;padding-left:18px" valign=3D"top" align=3D"center">
                <table style=3D"border-collapse:separate!important;border-r=
adius:4px;background-color:#2baadf" cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0">
                    <tbody>
                        <tr>
                            <td style=3D"font-family:Arial;font-size:24px;p=
adding:18px" valign=3D"middle" align=3D"center">
                                <a class=3D"m_2411789296191483362mcnButton"=
 title=3D"DONATE TO THE INTERNET ARCHIVE" href=3D"https://archive.us20.list=
-manage.com/track/click?u=3D38bd6154386f64fcd92204a25&amp;id=3D62af59781d&a=
mp;e=3Dbea3b20d02" style=3D"font-weight:bold;letter-spacing:normal;line-hei=
ght:100%;text-align:center;text-decoration:none;color:#ffffff;display:block=
" target=3D"_blank">DONATE TO THE INTERNET ARCHIVE</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table></td>
                                        </tr>
                                    </tbody></table>
                                   =20
                                </td>
                            </tr>
                            <tr>
                                <td id=3D"m_2411789296191483362templateFoot=
er" style=3D"background:#000000 none no-repeat center/cover;background-colo=
r:#000000;background-image:none;background-repeat:no-repeat;background-posi=
tion:center;background-size:cover;border-top:0;border-bottom:0;padding-top:=
0px;padding-bottom:0px" valign=3D"top" align=3D"center">
                                   =20
                                    <table class=3D"m_2411789296191483362te=
mplateContainer" style=3D"border-collapse:collapse;max-width:600px!importan=
t" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D=
"center">
                                        <tbody><tr>
                                            <td class=3D"m_2411789296191483=
362footerContainer" style=3D"background:#transparent none no-repeat center/=
cover;background-color:#transparent;background-image:none;background-repeat=
:no-repeat;background-position:center;background-size:cover;border-top:0;bo=
rder-bottom:0;padding-top:0;padding-bottom:0" valign=3D"top"><table style=
=3D"min-width:100%;border-collapse:collapse" width=3D"100%" cellspacing=3D"=
0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding:9px" valign=3D"top" align=3D"center">
                <table style=3D"min-width:100%;border-collapse:collapse" wi=
dth=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody><tr>
        <td style=3D"padding-left:9px;padding-right:9px" align=3D"center">
            <table style=3D"min-width:100%;border-collapse:collapse" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                <tbody><tr>
                    <td style=3D"padding-top:9px;padding-right:9px;padding-=
left:9px" valign=3D"top" align=3D"center">
                        <table style=3D"border-collapse:collapse" cellspaci=
ng=3D"0" cellpadding=3D"0" border=3D"0" align=3D"center">
                            <tbody><tr>
                                <td valign=3D"top" align=3D"center">
                                   =20

                                       =20


                                            <table style=3D"display:inline;=
border-collapse:collapse" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
align=3D"left">
                                                <tbody><tr>
                                                    <td style=3D"padding-ri=
ght:10px;padding-bottom:9px" valign=3D"top">
                                                        <table style=3D"bor=
der-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" b=
order=3D"0">
                                                            <tbody><tr>
                                                                <td style=
=3D"padding-top:5px;padding-right:10px;padding-bottom:5px;padding-left:9px"=
 valign=3D"middle" align=3D"left">
                                                                    <table =
style=3D"border-collapse:collapse" width=3D"" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" align=3D"left">
                                                                        <tb=
ody><tr>

                                                                           =
     <td width=3D"24" valign=3D"middle" align=3D"center">
                                                                           =
         <a href=3D"https://archive.us20.list-manage.com/track/click?u=3D38=
bd6154386f64fcd92204a25&amp;id=3D05630a0023&amp;e=3Dbea3b20d02" target=3D"_=
blank"><img src=3D"https://cdn-images.mailchimp.com/icons/social-block-v2/c=
olor-facebook-48.png" alt=3D"Facebook" style=3D"display:block;border:0;heig=
ht:auto;outline:none;text-decoration:none" width=3D"24" height=3D"24"></a>
                                                                           =
     </td>


                                                                        </t=
r>
                                                                    </tbody=
></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>

                                       =20

                                       =20


                                            <table style=3D"display:inline;=
border-collapse:collapse" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
align=3D"left">
                                                <tbody><tr>
                                                    <td style=3D"padding-ri=
ght:10px;padding-bottom:9px" valign=3D"top">
                                                        <table style=3D"bor=
der-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" b=
order=3D"0">
                                                            <tbody><tr>
                                                                <td style=
=3D"padding-top:5px;padding-right:10px;padding-bottom:5px;padding-left:9px"=
 valign=3D"middle" align=3D"left">
                                                                    <table =
style=3D"border-collapse:collapse" width=3D"" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" align=3D"left">
                                                                        <tb=
ody><tr>

                                                                           =
     <td width=3D"24" valign=3D"middle" align=3D"center">
                                                                           =
         <a href=3D"https://archive.us20.list-manage.com/track/click?u=3D38=
bd6154386f64fcd92204a25&amp;id=3D101293605f&amp;e=3Dbea3b20d02" target=3D"_=
blank"><img src=3D"https://cdn-images.mailchimp.com/icons/social-block-v2/c=
olor-twitter-48.png" alt=3D"Twitter" style=3D"display:block;border:0;height=
:auto;outline:none;text-decoration:none" width=3D"24" height=3D"24"></a>
                                                                           =
     </td>


                                                                        </t=
r>
                                                                    </tbody=
></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>

                                       =20

                                       =20


                                            <table style=3D"display:inline;=
border-collapse:collapse" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
align=3D"left">
                                                <tbody><tr>
                                                    <td style=3D"padding-ri=
ght:10px;padding-bottom:9px" valign=3D"top">
                                                        <table style=3D"bor=
der-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" b=
order=3D"0">
                                                            <tbody><tr>
                                                                <td style=
=3D"padding-top:5px;padding-right:10px;padding-bottom:5px;padding-left:9px"=
 valign=3D"middle" align=3D"left">
                                                                    <table =
style=3D"border-collapse:collapse" width=3D"" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" align=3D"left">
                                                                        <tb=
ody><tr>

                                                                           =
     <td width=3D"24" valign=3D"middle" align=3D"center">
                                                                           =
         <a href=3D"https://archive.us20.list-manage.com/track/click?u=3D38=
bd6154386f64fcd92204a25&amp;id=3Dda8b1348df&amp;e=3Dbea3b20d02" target=3D"_=
blank"><img src=3D"https://cdn-images.mailchimp.com/icons/social-block-v2/c=
olor-instagram-48.png" alt=3D"Instagram" style=3D"display:block;border:0;he=
ight:auto;outline:none;text-decoration:none" width=3D"24" height=3D"24"></a=
>
                                                                           =
     </td>


                                                                        </t=
r>
                                                                    </tbody=
></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>

                                       =20

                                       =20


                                            <table style=3D"display:inline;=
border-collapse:collapse" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
align=3D"left">
                                                <tbody><tr>
                                                    <td style=3D"padding-ri=
ght:0;padding-bottom:9px" valign=3D"top">
                                                        <table style=3D"bor=
der-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" b=
order=3D"0">
                                                            <tbody><tr>
                                                                <td style=
=3D"padding-top:5px;padding-right:10px;padding-bottom:5px;padding-left:9px"=
 valign=3D"middle" align=3D"left">
                                                                    <table =
style=3D"border-collapse:collapse" width=3D"" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" align=3D"left">
                                                                        <tb=
ody><tr>

                                                                           =
     <td width=3D"24" valign=3D"middle" align=3D"center">
                                                                           =
         <a href=3D"https://archive.us20.list-manage.com/track/click?u=3D38=
bd6154386f64fcd92204a25&amp;id=3Da116a294f3&amp;e=3Dbea3b20d02" target=3D"_=
blank"><img src=3D"https://cdn-images.mailchimp.com/icons/social-block-v2/c=
olor-link-48.png" alt=3D"Website" style=3D"display:block;border:0;height:au=
to;outline:none;text-decoration:none" width=3D"24" height=3D"24"></a>
                                                                           =
     </td>


                                                                        </t=
r>
                                                                    </tbody=
></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>

                                       =20

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

            </td>
        </tr>
    </tbody>
</table><table class=3D"m_2411789296191483362mcnDividerBlock" style=3D"min-=
width:100%;border-collapse:collapse;table-layout:fixed!important" width=3D"=
100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"min-width:100%;padding:18px">
                <table style=3D"min-width:100%;border-top:2px solid #505050=
;border-collapse:collapse" width=3D"100%" cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>

            </td>
        </tr>
    </tbody>
</table><table style=3D"min-width:100%;border-collapse:collapse" width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
    <tbody>
        <tr>
            <td style=3D"padding-top:9px" valign=3D"top">
              =09
		=09
			=09
                <table style=3D"max-width:100%;min-width:100%;border-collap=
se:collapse" class=3D"m_2411789296191483362mcnTextContentContainer" width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left">
                    <tbody><tr>

                        <td class=3D"m_2411789296191483362mcnTextContent" s=
tyle=3D"padding-top:0;padding-right:18px;padding-bottom:9px;padding-left:18=
px;word-break:break-word;color:#ffffff;font-family:Helvetica;font-size:12px=
;line-height:150%;text-align:center" valign=3D"top">

                            You are receiving this email because of your re=
lationship with the Internet Archive.<br>
<br>
<b>Our mailing address is:</b><br>
Internet Archive<br>
300 Funston Avenue<br>
San Francisco, CA 94118<br>
<br>
<b>Want to change how you receive these emails?</b><br>
You can=C2=A0<b><a href=3D"https://archive.us20.list-manage.com/profile?u=
=3D38bd6154386f64fcd92204a25&amp;id=3Dc675b9ae13&amp;e=3Dbea3b20d02&amp;c=
=3D57622d374e" style=3D"color:#ffffff;font-weight:normal;text-decoration:un=
derline" target=3D"_blank">update your preferences</a>=C2=A0</b>to change w=
hat types of notifications you receive,<br>
or switch from HTML format to plain text.<br>
You can also=C2=A0<b><a href=3D"https://archive.us20.list-manage.com/unsubs=
cribe?u=3D38bd6154386f64fcd92204a25&amp;id=3Dc675b9ae13&amp;e=3Dbea3b20d02&=
amp;c=3D57622d374e" style=3D"color:#ffffff;font-weight:normal;text-decorati=
on:underline" target=3D"_blank">unsubscribe from this list</a>=C2=A0</b>if =
you don&#39;t want to hear from us again.
                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
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
                       =20
                    </td>
                </tr>
            </tbody></table>
        </center>
    <img src=3D"https://archive.us20.list-manage.com/track/open.php?u=3D38b=
d6154386f64fcd92204a25&amp;id=3D57622d374e&amp;e=3Dbea3b20d02" alt=3D"" wid=
th=3D"1" height=3D"1"></div>
</div></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>This song=
 goes out to all the folk that thought Stadia would work:</div><div><a href=
=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366=
665607352320-FXtz" target=3D"_blank">https://www.linkedin.com/posts/dtaht_t=
he-mushroom-song-activity-6981366665607352320-FXtz</a></div><div>Dave T=C3=
=A4ht CEO, TekLibre, LLC <br></div></div></div></div></div>

--0000000000004ecaec05ed351a85--

--===============9138217914354548252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9138217914354548252==--
