Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4BF9C434D
	for <lists+cake@lfdr.de>; Mon, 11 Nov 2024 18:13:32 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3ABCC3CB4B;
	Mon, 11 Nov 2024 12:13:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1731345205;
	bh=7BPTUxjx14EbGvwZXGLua2LGRx3RYgpQOjsTtDWlO2s=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=csQwUvulBXE7WpgY9uor7BRSJtYv0hO0jfNIGf4ADjnkpOMTyXqHYYkH39wsEsFEP
	 U7O9fgQameWx9BbGoJYUaEI1ldgR9XKXvCCBm5JoFGu6B8xBMVSa9GTBCsAtjlfXkY
	 u0Ik/YMhqxvFCXDwReKPPLUl+d42W10vaL6PPP+ppeQ0VlQhZy0I8OQ2u5fh5PqSCr
	 yScrWZRKfIQq/LYIEIALZ445Mkh+VMpRcMS+YP7UkNm+Wrcjj/m4rvO95QwSdNvzOa
	 hv9SWfN/u2dxTnsuaxGcCH4cZI8DzAjW3VhCfmDGNk8A5oTjgOrALDXn9SnTN+O74S
	 msf/8wsjazwRg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 23D6F3B29D;
 Mon, 11 Nov 2024 12:13:23 -0500 (EST)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-aa15ede48e0so4907966b.0; 
 Mon, 11 Nov 2024 09:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731345202; x=1731950002; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3ZbqOMOzMkLpwY09OJWo1OyhFjJCIrNdZpiSs4MxG1s=;
 b=A4ILCOLlZoBxiW40Zv8hyZ677lBTr94hA7G7JD7V4vyBVLG89cA40Nv8UfkgKGBYaW
 nwB6jqLMGfBPnCqnLf4ScqWsS8LQLowel+lkyeAK0jfZsJqE8k7ZaHCxU4YMXmB78DYR
 0u0eyV1H40cXNuKrvQ3RguG3nse1uxs81m6tHL8bVlCtnm4K+79flvSLPKUWMAbZFM/9
 EwqLAUcKR0ncFQy3HoGy4NJFxr3t6yFjw5Uvb8GA4nHc2qXzO28qN/sNenC6r3NSAECe
 qbPdaBGk1kh/RCsNZcm4wv23hR7cHkTZTaLw/bW5fLxisTH7sGvVK6wbdXP1RBOdNVS7
 RCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731345202; x=1731950002;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3ZbqOMOzMkLpwY09OJWo1OyhFjJCIrNdZpiSs4MxG1s=;
 b=mIQdRCk36TaUJVk/+lNogzZLKR3oFzuuN+U1WEi0kQjNUrQ523v29WV8Rx52xgjptw
 l1OQglDJV31SbzTL50hbSLiZ7WdGy1AgZ2usX4aneE5zv5rPFp6DZeccfbMmPZt8QosJ
 7N+geBYldosjf7Qc+TC+7TSf41L2UbZzlFjEYqRST2Wi8DXPSLwRsPaTxkLLOi0WH9ms
 OpQDRtcR2E2L62WG8FNmP9hgUY1cVMFaKqv06d0Zm0sDHA3ebLi2kPVx/6S55CkqZNKp
 8/pOjzkHo21Hs43HhaDLJvRTELUqVrG0Atbe2VbE1a9cTyU52jZurMYwFz5KOj3aBXhV
 YecA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0Y/Ed3BqOGJxViqbrQoNv8zMWn7TyVTmgp97nMw6m6MDy0MfprRAq9BBV3L/mpq28WV3Il+OKFhc=@lists.bufferbloat.net,
 AJvYcCUB4VWIyUcMJc456MHNVCVWXhvjKnzNZJDGsvk9klO+cf/Z3dQO0cvp+9iy7ecN7n/GPF6R0g==@lists.bufferbloat.net,
 AJvYcCUmmBLQb/N6KCdP1eimIIPtf+KaZ7z5Xc8xtpJKGRmvoO3WLXsZgCMvOfYiifdRYmRgHJyQgA==@lists.bufferbloat.net,
 AJvYcCVeLDHVUNgpi+2r3f4m1VZioLmKzy7SsbCvFdEtkYMH2HCCpob0BVg6x+8VKpKjJm4PEWa4@lists.bufferbloat.net,
 AJvYcCWXNIbb2mj9i2hl7Q9rqgbLglLS4fjKRth99UKDGcvrGiqigm1ExjV3MKJWxHlBmRePkoNyom4=@lists.bufferbloat.net,
 AJvYcCWeO/5suQ2CA8BSTlpfCxd/Sp0Ym1SglWSrCct7N0+X49Hw3gxW0P/9q4d0vTkkzqUt/ifDWsyIJh8PAVtb4sQ=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzDD6J6dzI5F3OY9xTbngfcBb0Ra/D1PsJHaFdQXzHDcwt0hn6r
 GwDOt9xhntOPtMd7OLbCfahRQAzmjOs0oOkzqnUzjqUpUDk7mlXFV6klRI0ZqhBFnhUlVG/eJUU
 3dvVM+YG0UXZvFDO7GUsc5sz3cStf1tOop8cEy76C
X-Google-Smtp-Source: AGHT+IEQCHHJVZBsG53xl7IxRNWBSG7uqNXXeBY3kIMk4yIluMvkt3F+ttISxwQGvROjJWeAFqMWUK2lJlwTvUGEdlM=
X-Received: by 2002:a17:907:9702:b0:a9e:e1be:158 with SMTP id
 a640c23a62f3a-a9eeff445bemr1416035066b.31.1731345201701; Mon, 11 Nov 2024
 09:13:21 -0800 (PST)
MIME-Version: 1.0
References: <42f9fdfad6a7bbc3af0a33f41.7e1d8e665c.20241111144952.146b035395.78514b4b@mail243.atl61.mcsv.net>
In-Reply-To: <42f9fdfad6a7bbc3af0a33f41.7e1d8e665c.20241111144952.146b035395.78514b4b@mail243.atl61.mcsv.net>
Date: Mon, 11 Nov 2024 17:13:24 +0000
Message-ID: <CAJUtOOhwZ71B55YbeKTDqfCZG5yy2oMu5Zfyhev-UwXbjTGhZg@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, l4s-discuss@ietf.org
Subject: [Cake] Fwd: Registration for Understanding Latency 3.0 is open!
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============1736952932775118717=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1736952932775118717==
Content-Type: multipart/alternative; boundary="000000000000bb2a0c0626a637a3"

--000000000000bb2a0c0626a637a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

Register for the 3rd run of the FREE webinar series, Understanding Latency
https://understandinglatency.com, organized by Domos.ai - if you are
interested in the 1.0 and 2.0 runs, here you are:
https://www.youtube.com/@domoslabs/videos

PS: LibreQoS/Dave Taht will be there!

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


---------- Forwarded message ---------
From: Domos <info@domos.no>
Date: Mon, Nov 11, 2024 at 2:50=E2=80=AFPM
Subject: Registration for Understanding Latency 3.0 is open!
To: <frantisek.borsik@gmail.com>


View this email in your browser
<https://mailchi.mp/domos/your-links-to-the-understanding-latency-webinar-s=
eries-6417399?e=3D7e1d8e665c>
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D74aa87c21f&e=3D7e1d8e665c>

FINALLY: Understanding Latency
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D8aaef5c0fe&e=3D7e1d8e665c>
is back!

   - 9-11 December 2024
   - Online
   - The Biggest Expert-Led Knowledge-Sharing Event on Network Latency

Our biggest event of the year is back, with top industry speakers already
lining up. Expect expert insights, practical advice, and a whole lot of
knowledge-sharing.

Reserve your spot now! *Register here: understandinglatency.com/register
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D147ea0f8e2&e=3D7e1d8e665c>*

Best,
The Understanding Latency team
*You are receiving this email because you previously signed up to stay
informed about our latest updates and events.*

Want to change how you receive these emails?
You can update your preferences
<https://domos.us11.list-manage.com/profile?u=3D42f9fdfad6a7bbc3af0a33f41&i=
d=3D01cb58b2d8&e=3D7e1d8e665c&c=3D146b035395>
or unsubscribe from this list
<https://domos.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D01cb58b2d8&t=3Db&e=3D7e1d8e665c&c=3D146b035395>.

--000000000000bb2a0c0626a637a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>Register for t=
he 3rd run of the FREE webinar series, Understanding Latency <a href=3D"htt=
ps://understandinglatency.com">https://understandinglatency.com</a>, organi=
zed by Domos.ai - if you are interested in the 1.0 and 2.0 runs, here you a=
re:=C2=A0<a href=3D"https://www.youtube.com/@domoslabs/videos">https://www.=
youtube.com/@domoslabs/videos</a></div><div><br></div><div>PS: LibreQoS/Dav=
e Taht will be there!</div><div><br></div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div>=
<br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u=
></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u=
><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek =
(Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/fra=
ntisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +4=
20775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a><=
/p></div></div></div></div></div></div></div></div></div></div></div></div>=
</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">---------- Forwarded message ---------<br>From: <strong class=3D"gmail_=
sendername" dir=3D"auto">Domos</strong> <span dir=3D"auto">&lt;<a href=3D"m=
ailto:info@domos.no">info@domos.no</a>&gt;</span><br>Date: Mon, Nov 11, 202=
4 at 2:50=E2=80=AFPM<br>Subject: Registration for Understanding Latency 3.0=
 is open!<br>To:  &lt;<a href=3D"mailto:frantisek.borsik@gmail.com">frantis=
ek.borsik@gmail.com</a>&gt;<br></div><br><br><div class=3D"msg-164228733944=
9383545"><u></u>

   =20
       =20
       =20
       =20
       =20
       =20
       =20

   =20
    <div style=3D"height:100%;margin:0;padding:0;width:100%;background-colo=
r:#fafafa">
       =20
        <center>
            <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" height=3D"100%" width=3D"100%" id=3D"m_-1642287339449383545bodyTa=
ble" style=3D"border-collapse:collapse;height:100%;margin:0;padding:0;width=
:100%;background-color:#fafafa">
                <tbody><tr>
                    <td align=3D"center" valign=3D"top" id=3D"m_-1642287339=
449383545bodyCell" style=3D"height:100%;margin:0;padding:10px;width:100%;bo=
rder-top:0">
                       =20
                       =20
                        <table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" class=3D"m_-1642287339449383545templateContainer" sty=
le=3D"border-collapse:collapse;border:0;max-width:600px!important">
                            <tbody><tr>
                                <td valign=3D"top" id=3D"m_-164228733944938=
3545templatePreheader" style=3D"background:#fafafa none no-repeat center/co=
ver;background-color:#fafafa;background-image:none;background-repeat:no-rep=
eat;background-position:center;background-size:cover;border-top:0;border-bo=
ttom:0;padding-top:9px;padding-bottom:9px"><table border=3D"0" cellpadding=
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
;float:left" width=3D"100%" class=3D"m_-1642287339449383545mcnTextContentCo=
ntainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1642287339449383545m=
cnTextContent" style=3D"padding:0px 18px 9px;text-align:center;word-break:b=
reak-word;color:#656565;font-family:Helvetica;font-size:12px;line-height:15=
0%">

                            <a href=3D"https://mailchi.mp/domos/your-links-=
to-the-understanding-latency-webinar-series-6417399?e=3D7e1d8e665c" style=
=3D"color:#656565;font-weight:normal;text-decoration:underline" target=3D"_=
blank">View this email in your browser</a>
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
                                <td valign=3D"top" id=3D"m_-164228733944938=
3545templateHeader" style=3D"background:#ffffff none no-repeat center/cover=
;background-color:#ffffff;background-image:none;background-repeat:no-repeat=
;background-position:center;background-size:cover;border-top:0;border-botto=
m:0;padding-top:9px;padding-bottom:0"><table border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse:c=
ollapse">
    <tbody>
            <tr>
                <td valign=3D"top" style=3D"padding:9px">
                    <table align=3D"left" width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"min-width:100%;border-collapse:coll=
apse;float:left">
                        <tbody><tr>
                            <td valign=3D"top" style=3D"padding-right:9px;p=
adding-left:9px;padding-top:0;padding-bottom:0;text-align:center">

                                    <a href=3D"https://domos.us11.list-mana=
ge.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D74aa87c21f&amp;e=
=3D7e1d8e665c" title=3D"" target=3D"_blank">
                                        <img align=3D"center" alt=3D"" src=
=3D"https://mcusercontent.com/42f9fdfad6a7bbc3af0a33f41/images/4ae5ee3c-199=
6-6a4c-ced4-385e65191eb7.png" width=3D"564" style=3D"max-width:1500px;paddi=
ng-bottom:0;display:inline!important;vertical-align:bottom;border:0;height:=
auto;outline:none;text-decoration:none" class=3D"m_-1642287339449383545mcnI=
mage">
                                    </a>

                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table></td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-164228733944938=
3545templateBody" style=3D"background:#ffffff none no-repeat center/cover;b=
ackground-color:#ffffff;background-image:none;background-repeat:no-repeat;b=
ackground-position:center;background-size:cover;border-top:0;border-bottom:=
2px solid #eaeaea;padding-top:0;padding-bottom:9px"><table border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%" class=3D"m_-164228733944938=
3545mcnDividerBlock" style=3D"min-width:100%;border-collapse:collapse;table=
-layout:fixed!important">
    <tbody>
        <tr>
            <td style=3D"min-width:100%;padding:18px 18px 0px">
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" wid=
th=3D"100%" style=3D"min-width:100%;border-collapse:collapse">
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
;float:left" width=3D"100%" class=3D"m_-1642287339449383545mcnTextContentCo=
ntainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1642287339449383545m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#202020;font-family:Helvetic=
a;font-size:16px;line-height:150%;text-align:left">

                            <p style=3D"margin:10px 0;padding:0;color:#2020=
20;font-family:Helvetica;font-size:16px;line-height:150%;text-align:left"><=
span style=3D"font-size:13px">FINALLY: <a href=3D"https://domos.us11.list-m=
anage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D8aaef5c0fe&amp=
;e=3D7e1d8e665c" style=3D"color:#2a8e9e;font-weight:normal;text-decoration:=
underline" target=3D"_blank">Understanding Latency</a> is back!</span></p>

<ul>
	<li><span style=3D"font-size:13px">9-11 December 2024</span></li>
	<li><span style=3D"font-size:13px">Online</span></li>
	<li><span style=3D"font-size:13px">The Biggest Expert-Led Knowledge-Sharin=
g Event on Network Latency</span></li>
</ul>
<span style=3D"font-size:13px">Our biggest event of the year is back, with =
top industry speakers already lining up. Expect expert insights, practical =
advice, and a whole lot of knowledge-sharing.<br>
<br>
Reserve your spot now!=C2=A0<strong>Register here: <a href=3D"https://domos=
.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D14=
7ea0f8e2&amp;e=3D7e1d8e665c" style=3D"color:#2a8e9e;font-weight:normal;text=
-decoration:underline" target=3D"_blank">understandinglatency.com/register<=
/a></strong><br>
<br>
Best,<br>
The Understanding Latency=C2=A0team</span>
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
                                <td valign=3D"top" id=3D"m_-164228733944938=
3545templateFooter" style=3D"background:#fafafa none no-repeat center/cover=
;background-color:#fafafa;background-image:none;background-repeat:no-repeat=
;background-position:center;background-size:cover;border-top:0;border-botto=
m:0;padding-top:9px;padding-bottom:9px"><table border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse=
:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
;float:left" width=3D"100%" class=3D"m_-1642287339449383545mcnTextContentCo=
ntainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-1642287339449383545m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#656565;font-family:Helvetic=
a;font-size:12px;line-height:150%;text-align:center">

                            <em>You are receiving this email because you pr=
eviously signed up to stay informed about our latest updates and events.</e=
m><br>
<br>
Want to change how you receive these emails?<br>
You can <a href=3D"https://domos.us11.list-manage.com/profile?u=3D42f9fdfad=
6a7bbc3af0a33f41&amp;id=3D01cb58b2d8&amp;e=3D7e1d8e665c&amp;c=3D146b035395"=
 style=3D"color:#656565;font-weight:normal;text-decoration:underline" targe=
t=3D"_blank">update your preferences</a> or <a href=3D"https://domos.us11.l=
ist-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D01cb58b2d=
8&amp;t=3Db&amp;e=3D7e1d8e665c&amp;c=3D146b035395" style=3D"color:#656565;f=
ont-weight:normal;text-decoration:underline" target=3D"_blank">unsubscribe =
from this list</a>.
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
    <img src=3D"https://domos.us11.list-manage.com/track/open.php?u=3D42f9f=
dfad6a7bbc3af0a33f41&amp;id=3D146b035395&amp;e=3D7e1d8e665c" height=3D"1" w=
idth=3D"1" alt=3D""></div>
</div></div></div>

--000000000000bb2a0c0626a637a3--

--===============1736952932775118717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1736952932775118717==--
