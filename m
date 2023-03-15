Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 781EE6BB980
	for <lists+cake@lfdr.de>; Wed, 15 Mar 2023 17:20:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 77FDA3CBF0;
	Wed, 15 Mar 2023 12:20:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678897200;
	bh=HZEWU2I6xLOIYgrbxED1+K7d2ZoLc5fLBL1XDXfQLs0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=gFa4DXjewiutLHoR6scF0tXTZA9kNcxU8zdZNHz5Khq5joxyvkIdZBpUH9iZexWz7
	 dp1q3JUmoVsRrNUyYd5AQDx3R5fzxf7NwCPnJ3wQqKQC3GQ+3WWsHyP/oyzybyvE9x
	 qN6MudYr6Uzyqv3zosFFHWHrbmrPuB5Homps2bunqV52z8GXAQiaAjc4Pd64QuJ8AK
	 8Dni7kc1sj2oVPffRo3cZyaP+r69GVGmf4Sokyk3ZScFl248JtAFTK5cC/Gm6RsKg1
	 2qW5sv0FS04KydZ1h7dEmwpya1MhYqiZixA0HBkVp41e0zldYDurS9PceC5yD9OlCp
	 QIZIckLa+IFZA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2F2153CBC5;
 Wed, 15 Mar 2023 12:19:59 -0400 (EDT)
Received: by mail-wm1-x32e.google.com with SMTP id
 m18-20020a05600c3b1200b003ed2a3d635eso1640646wms.4; 
 Wed, 15 Mar 2023 09:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678897197;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mpyM/7bwRIID1rOj5XQUeYK2k7H0vjqBgorzAR0LSYU=;
 b=UEcrphCBGJsyyH3TOBYX1lTOM3aGOfpnuQ+sBZZ8aqHbdjlMA+1xgrPWAwZ/nn9GzZ
 wAecKPgJOEB4qFwOmwv8TvxAiyC6vHwusgZxkosV2rqoFpY4v7LRjnrFZu//cCC1XdBM
 HF4CdUhwNE8+4Hlcc6ECxaQNvuBFlvdFZCQWtCeRZDBi9+Hbx24tCIbs69r8ZmR1fW32
 nldFFWKZwiYT5D6frJp1HZi5U15xfnG1R4R1iXsD1qASxJqJTNr61QioAyRmFoRHIqV+
 A1AjWsEYfKhkVUTmuMnuklucNbRSjbsREg2QJfvv7lrKTlC286Ew7CUkVu7NqYgb76bi
 dpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678897197;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mpyM/7bwRIID1rOj5XQUeYK2k7H0vjqBgorzAR0LSYU=;
 b=PXGIZn7/uKv8osM7//iAa02NzuQXtgmgsSG0vgV9Wt1lnut+G08oCB2lKrshHwXWdo
 WKrWnOLyxVk+gyrxkyHSR8AdPuD5r1cVdZuikYjuQHzuaxHWSPH4HtQHtyluzDm9/FUT
 Wb9F2UR5o+b/BhTO7MfeldQKS9+SZ0B6du3l4JBLtG4CGFs5ISI1IfwxRHp397/QnFzE
 53ohjIxaWr5NN0Hpq36AQEdpDnuc9ugpTqeUcZU/xP7rm9ggJsS5SBiVZOdaD6JRoO8q
 QpYpI6oaUkhZYp45WAQgEus8+Ca5G8GvKkgOLcS4bgpWre3nJxQyp/K1Y7DUppQ8FX3+
 6qkg==
X-Gm-Message-State: AO0yUKWKg4/Vx8j5lwPHDPZdtJecBaWHozfVi0Ld846z9Qbxq7Kxhr6H
 oU9mNrwb3eG/cbNkj7wCR64zMcfqtnpiTvR1A4w/kOvF
X-Google-Smtp-Source: AK7set+HjXQjkjthLEGRAXLwQ/XMtXNATVmwLYv6e4m5UKj3M+Hn9dPxmi4RXl3ZPbvJX+DJ78fymvp17NU9bnfWMxI=
X-Received: by 2002:a05:600c:1da8:b0:3ed:2937:90e8 with SMTP id
 p40-20020a05600c1da800b003ed293790e8mr2598468wms.0.1678897197506; Wed, 15 Mar
 2023 09:19:57 -0700 (PDT)
MIME-Version: 1.0
References: <a88b74824e9619d1f92eed294.bbdd06e8e6.20230315140019.d12c3de322.3411268c@mail126.atl111.rsgsv.net>
In-Reply-To: <a88b74824e9619d1f92eed294.bbdd06e8e6.20230315140019.d12c3de322.3411268c@mail126.atl111.rsgsv.net>
Date: Wed, 15 Mar 2023 09:19:46 -0700
Message-ID: <CAA93jw6KN=aRo8nPNNWdSyqco5jx5rkUG0z6YA-1tAqmhbpUSA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Subject: [Cake] Fwd: CAKE,
	Michael Franti + many more at the Mill Valley Music Festival
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
Content-Type: multipart/mixed; boundary="===============1446685424212482094=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1446685424212482094==
Content-Type: multipart/alternative; boundary="0000000000001263c405f6f2b79e"

--0000000000001263c405f6f2b79e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

so nice to see CAKE is touring.

---------- Forwarded message ---------
From: Relix <alerts@relix.com>
Date: Wed, Mar 15, 2023 at 7:00=E2=80=AFAM
Subject: CAKE, Michael Franti + many more at the Mill Valley Music Festival
To: <dave.taht@gmail.com>


<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D0f37e9270b&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D65e79f812a&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D3022c4ea78&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D162c954ecf&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3Dff6f50ae1c&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3Df2b6b9055c&e=3Dbbdd06e8e6>
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3Df3714a10f5&e=3Dbbdd06e8e6>
*Mill Valley Music Festival* is returning this May 13 &14! See music
from *Michael
Franti & Spearhead*, *CAKE*, *Tank & The Bangas*, *Original Talking Heads
member Jerry Harrison, and Adrian Belew*, performing *Remain in Light* +
many more! This festival features a diverse mix of local and national acts,
coupled with world-class cuisine, local artists, and craft drinks. Don't
miss out on seeing your favorite band perform in an intimate setting
nestled below the Bay Area slopes of Mount Tamalpais. Single-day and 2-Day
tickets are on sale now at *Millvalleymusicfest.com
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3De6a3760a2c&e=3Dbbdd06e8e6>*
GET TICKETS TODAY
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3Dc9abcfd16d&e=3Dbbdd06e8e6>

*SHARE WITH A FRIEND
<https://us7.forward-to-friend.com/forward?u=3Da88b74824e9619d1f92eed294&id=
=3Dd12c3de322&e=3Dbbdd06e8e6>*
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D36b0619103&e=3Dbbdd06e8e6>

*Subscribe Today* SUBSCRIBE
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D34e0809a3e&e=3Dbbdd06e8e6>
RENEW
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3Dc21f8056aa&e=3Dbbdd06e8e6>
DIGITAL
EDITION
<https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619d1f92eed29=
4&id=3D85ba1cdb55&e=3Dbbdd06e8e6>
Unsubscribe
<https://relix.us7.list-manage.com/unsubscribe?u=3Da88b74824e9619d1f92eed29=
4&id=3D4510819a5c&e=3Dbbdd06e8e6&c=3Dd12c3de322>
  |    View in Browser
<https://mailchi.mp/relix/cake-michael-franti-many-more-at-the-mill-valley-=
music-festival?e=3Dbbdd06e8e6>
*Copyright =C2=A9 2023 Relix Media Group, All rights reserved.*
RELIX MEDIA GROUP 104 West 29th St, 11th Floor, New York, NY 10001
*You are receiving this email because you are an opt-in subscriber for
promotional update emails from Relix.*


--=20
Come Heckle Mar 6-9 at: https://www.understandinglatency.com
<https://www.understandinglatency.com/Dave>/
Dave T=C3=A4ht CEO, TekLibre, LLC

--0000000000001263c405f6f2b79e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">so nice to see CAKE is touring.=C2=A0<br><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded me=
ssage ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Re=
lix</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:alerts@relix.com">ale=
rts@relix.com</a>&gt;</span><br>Date: Wed, Mar 15, 2023 at 7:00=E2=80=AFAM<=
br>Subject: CAKE, Michael Franti + many more at the Mill Valley Music Festi=
val<br>To:  &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com<=
/a>&gt;<br></div><br><br><div class=3D"msg-1613039062777282978"><u></u>

   =20
       =20
       =20
       =20
       =20
       =20
       =20

   =20
    <div style=3D"height:100%;margin:0;padding:0;width:100%;background-colo=
r:#ffffff">
       =20
        <center>
            <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" height=3D"100%" width=3D"100%" id=3D"m_-1613039062777282978bodyTa=
ble" style=3D"border-collapse:collapse;height:100%;margin:0;padding:0;width=
:100%;background-color:#ffffff">
                <tbody><tr>
                    <td align=3D"center" valign=3D"top" id=3D"m_-1613039062=
777282978bodyCell" style=3D"height:100%;margin:0;padding:10px;width:100%;bo=
rder-top:0">
                       =20
                       =20
                        <table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" class=3D"m_-1613039062777282978templateContainer" sty=
le=3D"border-collapse:collapse;border:0;max-width:600px!important">
                            <tbody><tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templatePreheader" style=3D"background:#ffffff none no-repeat center/co=
ver;background-color:#ffffff;background-image:none;background-repeat:no-rep=
eat;background-position:center;background-size:cover;border-top:0;border-bo=
ttom:0;padding-top:0px;padding-bottom:5px"></td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templateHeader" style=3D"background:#ffffff none no-repeat center/cover=
;background-color:#ffffff;background-image:none;background-repeat:no-repeat=
;background-position:center;background-size:cover;border-top:0;border-botto=
m:0;padding-top:0px;padding-bottom:5px"><table border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse=
:collapse">
    <tbody>
            <tr>
                <td valign=3D"top" style=3D"padding:0px">
                    <table align=3D"left" width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"min-width:100%;border-collapse:coll=
apse">
                        <tbody><tr>
                            <td valign=3D"top" style=3D"padding-right:0px;p=
adding-left:0px;padding-top:0;padding-bottom:0;text-align:center">

                                    <a href=3D"https://relix.us7.list-manag=
e.com/track/click?u=3Da88b74824e9619d1f92eed294&amp;id=3D0f37e9270b&amp;e=
=3Dbbdd06e8e6" title=3D"" target=3D"_blank">
                                        <img align=3D"center" alt=3D"" src=
=3D"https://mcusercontent.com/a88b74824e9619d1f92eed294/images/b60b9cff-358=
9-4146-9de4-9d542a09aedf.png" width=3D"180" style=3D"max-width:180px;paddin=
g-bottom:0;display:inline!important;vertical-align:bottom;border:0;height:a=
uto;outline:none;text-decoration:none" class=3D"m_-1613039062777282978mcnIm=
age">
                                    </a>

                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"10=
0%" style=3D"border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top">
               =20
<table style=3D"width:100%;max-width:600px;margin-top:10px;border-collapse:=
collapse" align=3D"center">
<tbody><tr align=3D"center">
   		<td><a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b7=
4824e9619d1f92eed294&amp;id=3D65e79f812a&amp;e=3Dbbdd06e8e6" style=3D"text-=
decoration:none" target=3D"_blank">
			<img border=3D"0" alt=3D"" src=3D"https://gallery.mailchimp.com/a88b7482=
4e9619d1f92eed294/images/16218d5f-9ea5-4b8c-8b79-41a205572ad3.png" width=3D=
"30" height=3D"24px" style=3D"border:0;height:auto;outline:none;text-decora=
tion:none">
			</a></td>
    	<td><a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b7=
4824e9619d1f92eed294&amp;id=3D3022c4ea78&amp;e=3Dbbdd06e8e6" style=3D"text-=
decoration:none" target=3D"_blank">
			<img border=3D"0" alt=3D"" src=3D"https://gallery.mailchimp.com/a88b7482=
4e9619d1f92eed294/images/84031751-494a-4aff-9523-8a4aa6b8050c.png" width=3D=
"30" height=3D"25" align=3D"middle" style=3D"border:0;height:auto;outline:n=
one;text-decoration:none">
			</a></td>
   		<td><a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b7=
4824e9619d1f92eed294&amp;id=3D162c954ecf&amp;e=3Dbbdd06e8e6" style=3D"text-=
decoration:none" target=3D"_blank">
			<img border=3D"0" alt=3D"" src=3D"https://gallery.mailchimp.com/a88b7482=
4e9619d1f92eed294/images/300bcef7-f025-45a6-acbc-bb0ac42865b4.png" width=3D=
"30" height=3D"25" align=3D"middle" style=3D"border:0;height:auto;outline:n=
one;text-decoration:none">
			</a></td>
   		<td><a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b7=
4824e9619d1f92eed294&amp;id=3Dff6f50ae1c&amp;e=3Dbbdd06e8e6" style=3D"text-=
decoration:none" target=3D"_blank">
			<img border=3D"0" alt=3D"" src=3D"https://gallery.mailchimp.com/a88b7482=
4e9619d1f92eed294/images/c5781983-ecce-4969-a00c-83ad951df06c.png" width=3D=
"30" height=3D"25" align=3D"middle" style=3D"border:0;height:auto;outline:n=
one;text-decoration:none">
			</a></td>
   		<td><a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b7=
4824e9619d1f92eed294&amp;id=3Df2b6b9055c&amp;e=3Dbbdd06e8e6" style=3D"text-=
decoration:none" target=3D"_blank">
			<img border=3D"0" alt=3D"" src=3D"https://mcusercontent.com/a88b74824e96=
19d1f92eed294/images/3358e259-1d0b-910d-6e2c-920ba6221a3b.png" width=3D"30"=
 height=3D"25" align=3D"middle" style=3D"border:0;height:auto;outline:none;=
text-decoration:none">
			</a></td></tr>
	<tr>
		<td colspan=3D"5" width=3D"100%" height=3D"5"></td></tr>
	<tr>
		<td colspan=3D"5" width=3D"100%" bgcolor=3D"#b62629" valign=3D"middle" he=
ight=3D"2" style=3D"font-size:1px;line-height:1px">
		</td></tr>
	<tr>
		<td colspan=3D"5" width=3D"100%" bgcolor=3D"white" valign=3D"middle" heig=
ht=3D"4" style=3D"font-size:1px;line-height:1px">
		</td></tr>
</tbody></table>
            </td>
        </tr>
    </tbody>
</table></td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templateUpperBody" style=3D"background:#ffffff none no-repeat center/co=
ver;background-color:#ffffff;background-image:none;background-repeat:no-rep=
eat;background-position:center;background-size:cover;border-top:0;border-bo=
ttom:0;padding-top:8px;padding-bottom:0"><table border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-collaps=
e:collapse">
    <tbody>
            <tr>
                <td valign=3D"top" style=3D"padding:9px">
                    <table align=3D"left" width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"min-width:100%;border-collapse:coll=
apse">
                        <tbody><tr>
                            <td valign=3D"top" style=3D"padding-right:9px;p=
adding-left:9px;padding-top:0;padding-bottom:0;text-align:center">

                                    <a href=3D"https://relix.us7.list-manag=
e.com/track/click?u=3Da88b74824e9619d1f92eed294&amp;id=3Df3714a10f5&amp;e=
=3Dbbdd06e8e6" title=3D"" target=3D"_blank">
                                        <img align=3D"center" alt=3D"" src=
=3D"https://mcusercontent.com/a88b74824e9619d1f92eed294/images/c0a946ce-d0e=
f-d3a4-f036-0570284594ee.png" width=3D"564" style=3D"max-width:1080px;paddi=
ng-bottom:0;display:inline!important;vertical-align:bottom;border:0;height:=
auto;outline:none;text-decoration:none" class=3D"m_-1613039062777282978mcnI=
mage">
                                    </a>

                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"10=
0%" style=3D"min-width:100%;border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-1613039062777282978mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1613039062777282978m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#000000;font-family:Helvetic=
a;font-size:16px;line-height:150%;text-align:center">

                            <span style=3D"font-size:16px"><strong>Mill Val=
ley Music Festival</strong> is returning this May 13 &amp;14! See music fro=
m <strong>Michael Franti &amp; Spearhead</strong>, <strong>CAKE</strong>, <=
strong>Tank &amp; The Bangas</strong>, <strong>Original Talking Heads membe=
r Jerry Harrison, and Adrian Belew</strong>, performing <em>Remain in Light=
</em> + many more! This festival features a diverse mix of local and nation=
al acts, coupled with world-class cuisine, local artists, and craft drinks.=
 Don&#39;t miss out on seeing your favorite band perform in an intimate set=
ting nestled below the Bay Area slopes of Mount Tamalpais. Single-day and 2=
-Day tickets are on sale now at <u><a href=3D"https://relix.us7.list-manage=
.com/track/click?u=3Da88b74824e9619d1f92eed294&amp;id=3De6a3760a2c&amp;e=3D=
bbdd06e8e6" style=3D"color:#cc0000;font-weight:bold;text-decoration:none" t=
arget=3D"_blank">Millvalleymusicfest.com</a></u></span>
                        </td>
                    </tr>
                </tbody></table>
			=09

			=09
            </td>
        </tr>
    </tbody>
</table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"10=
0%" style=3D"min-width:100%;border-collapse:collapse">
    <tbody>
        <tr>
            <td style=3D"padding-top:0;padding-right:18px;padding-bottom:18=
px;padding-left:18px" valign=3D"top" align=3D"center">
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"border-collapse:separate!important;border-radius:4px;background-color=
:#fc5200">
                    <tbody>
                        <tr>
                            <td align=3D"center" valign=3D"middle" style=3D=
"font-family:Arial;font-size:18px;padding:18px">
                                <a class=3D"m_-1613039062777282978mcnButton=
" title=3D"GET TICKETS TODAY" href=3D"https://relix.us7.list-manage.com/tra=
ck/click?u=3Da88b74824e9619d1f92eed294&amp;id=3Dc9abcfd16d&amp;e=3Dbbdd06e8=
e6" style=3D"font-weight:bold;letter-spacing:normal;line-height:100%;text-a=
lign:center;text-decoration:none;color:#ffffff;display:block" target=3D"_bl=
ank">GET TICKETS TODAY</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table></td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templateColumns" style=3D"background:#ffffff none no-repeat center/cove=
r;background-color:#ffffff;background-image:none;background-repeat:no-repea=
t;background-position:center;background-size:cover;border-top:0;border-bott=
om:0;padding-top:0;padding-bottom:0">
                                   =20
                                    <table align=3D"left" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"300" class=3D"m_-16130390627772829=
78columnWrapper" style=3D"border-collapse:collapse">
                                        <tbody><tr>
                                            <td valign=3D"top" class=3D"m_-=
1613039062777282978columnContainer"></td>
                                        </tr>
                                    </tbody></table>
                                   =20
                                    <table align=3D"left" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"300" class=3D"m_-16130390627772829=
78columnWrapper" style=3D"border-collapse:collapse">
                                        <tbody><tr>
                                            <td valign=3D"top" class=3D"m_-=
1613039062777282978columnContainer"></td>
                                        </tr>
                                    </tbody></table>
                                   =20
                                </td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templateLowerBody" style=3D"background:#ffffff none no-repeat center/co=
ver;background-color:#ffffff;background-image:none;background-repeat:no-rep=
eat;background-position:center;background-size:cover;border-top:0;border-bo=
ttom:0;padding-top:5px;padding-bottom:0px"><table border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-coll=
apse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-1613039062777282978mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1613039062777282978m=
cnTextContent" style=3D"padding:0px 18px 9px;line-height:100%;word-break:br=
eak-word;color:#000000;font-family:Helvetica;font-size:10px;text-align:cent=
er">

                            <div style=3D"text-align:center"><span style=3D=
"font-size:10px"><strong><a href=3D"https://us7.forward-to-friend.com/forwa=
rd?u=3Da88b74824e9619d1f92eed294&amp;id=3Dd12c3de322&amp;e=3Dbbdd06e8e6" st=
yle=3D"color:#b62629;font-weight:bold;text-decoration:none" target=3D"_blan=
k"><span style=3D"color:#b62629">SHARE WITH A FRIEND</span></a></strong></s=
pan></div>

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
                            <tr>
                                <td valign=3D"top" id=3D"m_-161303906277728=
2978templateFooter" style=3D"background:#ffffff none no-repeat center/cover=
;background-color:#ffffff;background-image:none;background-repeat:no-repeat=
;background-position:center;background-size:cover;border-top:4px solid #b62=
629;border-bottom:0;padding-top:2px;padding-bottom:2px"><table border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"border-collaps=
e:collapse">
    <tbody>
        <tr>
            <td valign=3D"top">
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" cla=
ss=3D"m_-1613039062777282978mcnCaptionRightContentOuter" width=3D"100%" sty=
le=3D"border-collapse:collapse;margin-top:10px">
    <tbody><tr>
        <td valign=3D"top" style=3D"padding:0 9px">
            <table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" class=3D"m_-1613039062777282978mcnCaptionRightImageContentContainer=
" width=3D"420" style=3D"border-collapse:collapse">
                <tbody><tr>
                    <td align=3D"center" valign=3D"top">


                        <a href=3D"https://relix.us7.list-manage.com/track/=
click?u=3Da88b74824e9619d1f92eed294&amp;id=3D36b0619103&amp;e=3Dbbdd06e8e6"=
 title=3D"" target=3D"_blank">


                        <img alt=3D"" src=3D"https://relix.com/wp-content/u=
ploads/2022/03/relix_Mailchimp_covergraphic.png" width=3D"420" style=3D"max=
-width:420px;border:0;height:auto;outline:none;text-decoration:none;vertica=
l-align:bottom" class=3D"m_-1613039062777282978mcnImage">
                        </a>


                    </td>
                </tr>
            </tbody></table>
            <table class=3D"m_-1613039062777282978mcnCaptionRightTextConten=
tContainer" align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" width=3D"150" style=3D"border-collapse:collapse">
                <tbody><tr>
                    <td valign=3D"top" class=3D"m_-1613039062777282978mcnTe=
xtContent" style=3D"word-break:break-word;color:#000000;font-family:Helveti=
ca;font-size:10px;line-height:200%;text-align:center">
                        <div align=3D"center" style=3D"text-align:center;ma=
rgin-left:5px;margin-right:5px;margin-top:5px"><font color=3D"#000000"><spa=
n style=3D"font-size:17px"><strong>Subscribe Today</strong></span></font>

<a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619=
d1f92eed294&amp;id=3D34e0809a3e&amp;e=3Dbbdd06e8e6" style=3D"color:#6e6e6e;=
border-color:#848484;border-style:solid;border-width:1px;border-radius:3px;=
font-weight:bold;font-family:Arial;font-size:11px;text-decoration:none;marg=
in-top:10px;padding:3px;text-align:center;display:block;width:100%;max-widt=
h:300px" target=3D"_blank"> SUBSCRIBE </a>

<a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619=
d1f92eed294&amp;id=3Dc21f8056aa&amp;e=3Dbbdd06e8e6" style=3D"color:#6e6e6e;=
border-color:#848484;border-style:solid;border-width:1px;border-radius:3px;=
font-weight:bold;font-family:Arial;font-size:11px;text-decoration:none;marg=
in-top:10px;padding:3px;text-align:center;display:block;width:100%;max-widt=
h:300px" target=3D"_blank"> RENEW </a>

<a href=3D"https://relix.us7.list-manage.com/track/click?u=3Da88b74824e9619=
d1f92eed294&amp;id=3D85ba1cdb55&amp;e=3Dbbdd06e8e6" style=3D"color:#6e6e6e;=
border-color:#848484;border-style:solid;border-width:1px;border-radius:3px;=
font-weight:bold;font-family:Arial;font-size:11px;text-decoration:none;marg=
in-top:10px;padding:3px;text-align:center;display:block;width:100%;max-widt=
h:300px" target=3D"_blank"> DIGITAL EDITION </a>


</div>

                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
</tbody></table>

            </td>
        </tr>
    </tbody>
</table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"10=
0%" class=3D"m_-1613039062777282978mcnDividerBlock" style=3D"min-width:100%=
;border-collapse:collapse;table-layout:fixed!important">
    <tbody>
        <tr>
            <td style=3D"min-width:100%;padding:10px 18px">
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" wid=
th=3D"100%" style=3D"min-width:100%;border-top:2px solid #eeeeee;border-col=
lapse:collapse">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>

            </td>
        </tr>
    </tbody>
</table><table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"10=
0%" style=3D"min-width:100%;border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-1613039062777282978mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1613039062777282978m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#656565;font-family:Helvetic=
a;font-size:12px;line-height:150%;text-align:center">

                            <a href=3D"https://relix.us7.list-manage.com/un=
subscribe?u=3Da88b74824e9619d1f92eed294&amp;id=3D4510819a5c&amp;e=3Dbbdd06e=
8e6&amp;c=3Dd12c3de322" style=3D"color:#6e6e6e;font-weight:bold;text-decora=
tion:none" target=3D"_blank">Unsubscribe</a>=C2=A0 =C2=A0 |=C2=A0 =C2=A0=C2=
=A0<a href=3D"https://mailchi.mp/relix/cake-michael-franti-many-more-at-the=
-mill-valley-music-festival?e=3Dbbdd06e8e6" style=3D"color:#6e6e6e;font-wei=
ght:bold;text-decoration:none" target=3D"_blank">View in Browser</a><br>
<em>Copyright =C2=A9 2023 Relix Media Group, All rights reserved.</em><br>
RELIX MEDIA GROUP 104 West 29th St, 11th Floor, New York, NY 10001<br>
<em><span style=3D"font-size:10px">You are receiving this email because you=
 are an opt-in subscriber for promotional update emails from Relix.</span><=
/em>
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
                       =20
                    </td>
                </tr>
            </tbody></table>
        </center>
    <img src=3D"https://relix.us7.list-manage.com/track/open.php?u=3Da88b74=
824e9619d1f92eed294&amp;id=3Dd12c3de322&amp;e=3Dbbdd06e8e6" height=3D"1" wi=
dth=3D"1" alt=3D""></div>
</div></div><br clear=3D"all"><div><br></div><span class=3D"gmail_signature=
_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>Come Heckle Mar 6-9 at: <a =
href=3D"https://www.understandinglatency.com/Dave" target=3D"_blank">https:=
//www.understandinglatency.com</a>/=C2=A0</div><div>Dave T=C3=A4ht CEO, Tek=
Libre, LLC</div></div></div></div>

--0000000000001263c405f6f2b79e--

--===============1446685424212482094==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1446685424212482094==--
