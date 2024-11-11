Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 833949C45EF
	for <lists+cake@lfdr.de>; Mon, 11 Nov 2024 20:34:53 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8CC973CB47;
	Mon, 11 Nov 2024 14:34:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1731353686;
	bh=+xkZDSDKrNmK7i4gdlwIynVYkNfPOobJnrJPk2ih6Ss=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PO56esDlr3AIHgTBajulIc4e04XUaDb3MVI44utGyndajfKJiK6ZQtlhvn5QOajds
	 W2C+tED5Y+m/irIDG6MK4mFv0awbHMgWqH2/5VgHCdwIBZFx/yhAZhbW051nyNEIHO
	 EAGE7CMAhrownR8rG+BN3V2eyMaJJaODB68Kr0f+snLFM2j9qT9xbtdC1kD9zmFbr5
	 nDGJNyjoDkVRI0Qgfn1R28K6EGddqhTqwtvfwwJS7PzDIC/enF3RkM92YR9r8fDGNq
	 eQ2+6QmlK0WV+h7X0bDkLbqzHW7cHJK6YZqzaJwb4a+plivcznKSCUUFwrs0PeuON5
	 X+SJ5nPmi7hkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A22633B29D;
 Mon, 11 Nov 2024 14:34:44 -0500 (EST)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by bobcat.rjmcmahon.com (Postfix) with ESMTPSA id C10411B274;
 Mon, 11 Nov 2024 11:34:43 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com C10411B274
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1731353683;
 bh=Xl/PVLF+riCQoxudPnR/Pk5pH1Dzd89tipk9IpEWLSg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aFdN+Td+BYp/Tm6spqsJaZ1AXAMkcXYBfLlfDlscDRZpBX+c2cGMsZ3HS6m+YyCQX
 55FHGPsVxdQ0z4xFUbnwtX/djpv8nN5Cxh6RK5Fr2B3/lHYzoqpmsPVtJInnU9gXpX
 C/OUPL5SbqnzRqXD6gtIPeujUWEXvxr0jWXE8bH4=
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7180bd5b79dso1727431a34.2; 
 Mon, 11 Nov 2024 11:34:43 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUuFeKxLt2WvyMbE4+Q9I3DK2Q/2r08MieJVoZBGMK1weRGWjCRNkyADmrCP10nVRHIxWthDCmpB18=@lists.bufferbloat.net,
 AJvYcCV+JY9+WqNUCtzAr8EoUtCgALoK3bAzrUxXkykCBwgkA82OqMYVODT/sHdzLMdLVWg/RgIq@lists.bufferbloat.net,
 AJvYcCV7eZVLhUBneM4T/LPVApAzmqSNpjXcjZk9ZwGx+JqCFfhIRHePCoP4Nf1ziHmLmvvqaq7ibQ==@lists.bufferbloat.net,
 AJvYcCW4KVCe4JuNNN4ea0J7lvQl650T9vodn1uQXQSGp67ga4rqWT5VA4jqpvArdwCRWVwkAHNLtg==@lists.bufferbloat.net,
 AJvYcCWnCP+FiVa933ojQh4NR8PjrZ/OBj7OsxuERn++ow7UQS5E82a/dROFw6JI27UDFwryLcQSzD0=@lists.bufferbloat.net,
 AJvYcCXcVbXY8GZFU04RmX8m1kczSN7ghtuIyYrl70yVFYf2gIvgxNP5V80YHUIr4lOM27avJnoTqddIYiXMqB0uGCk=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyoo9BcpJiIndatR4YFadMmjb231+zeE+7BKFY7Gh/if91ScjvN
 MWA/t2SqcJX5rsE1BXVUXN9sTrDzJDvOH0DVc6YDwdrD6mLOEzRSYpSurKm0C09a+6lqsq5saQ8
 6JWLXFGBxMIVj4HDyCQ6EnXKiXFM=
X-Google-Smtp-Source: AGHT+IEcMYBHrkatlHCue4YlxGWYao9na7RUVGV6Qd/Lw3ccKiRg/yH/V3sedR5ta4p6jvKHizIhmoz3R/KMdirdP70=
X-Received: by 2002:a05:6830:6a8f:b0:718:12aa:f7b5 with SMTP id
 46e09a7af769-71a1c20c4c2mr11133322a34.12.1731353683105; Mon, 11 Nov 2024
 11:34:43 -0800 (PST)
MIME-Version: 1.0
References: <42f9fdfad6a7bbc3af0a33f41.7e1d8e665c.20241111144952.146b035395.78514b4b@mail243.atl61.mcsv.net>
 <CAJUtOOhwZ71B55YbeKTDqfCZG5yy2oMu5Zfyhev-UwXbjTGhZg@mail.gmail.com>
In-Reply-To: <CAJUtOOhwZ71B55YbeKTDqfCZG5yy2oMu5Zfyhev-UwXbjTGhZg@mail.gmail.com>
Date: Mon, 11 Nov 2024 11:34:31 -0800
X-Gmail-Original-Message-ID: <CAEBrVk505mVa62soGomv7q_7G_Z+KOjo==5a4SG09zBNed79JQ@mail.gmail.com>
Message-ID: <CAEBrVk505mVa62soGomv7q_7G_Z+KOjo==5a4SG09zBNed79JQ@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Subject: Re: [Cake] [L4s-discuss] Fwd: Registration for Understanding
	Latency 3.0 is open!
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
From: Robert McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Robert McMahon <rjmcmahon@rjmcmahon.com>
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, l4s-discuss@ietf.org,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5433143863384843403=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5433143863384843403==
Content-Type: multipart/alternative; boundary="00000000000043261c0626a831d4"

--00000000000043261c0626a831d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is a Wi-Fi low latency table suggesting many different technologies
that apply towards just the Wi-Fi user QoE.

https://www.l4sgear.com/WiFiLowLatencyTable.html

My opinion is that it will be market payments and/or substantial opex
reductions that will drive the solutions.

Bob

On Mon, Nov 11, 2024 at 9:13=E2=80=AFAM Frantisek Borsik <frantisek.borsik@=
gmail.com>
wrote:

> Hello to all,
>
> Register for the 3rd run of the FREE webinar series, Understanding Latenc=
y
> https://understandinglatency.com, organized by Domos.ai - if you are
> interested in the 1.0 and 2.0 runs, here you are:
> https://www.youtube.com/@domoslabs/videos
>
> PS: LibreQoS/Dave Taht will be there!
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
>
>
> https://www.linkedin.com/in/frantisekborsik
>
> Signal, Telegram, WhatsApp: +421919416714
>
> iMessage, mobile: +420775230885
>
> Skype: casioa5302ca
>
> frantisek.borsik@gmail.com
>
>
> ---------- Forwarded message ---------
> From: Domos <info@domos.no>
> Date: Mon, Nov 11, 2024 at 2:50=E2=80=AFPM
> Subject: Registration for Understanding Latency 3.0 is open!
> To: <frantisek.borsik@gmail.com>
>
>
> View this email in your browser
> <https://mailchi.mp/domos/your-links-to-the-understanding-latency-webinar=
-series-6417399?e=3D7e1d8e665c>
>
> <https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a3=
3f41&id=3D74aa87c21f&e=3D7e1d8e665c>
>
> FINALLY: Understanding Latency
> <https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a3=
3f41&id=3D8aaef5c0fe&e=3D7e1d8e665c>
> is back!
>
>    - 9-11 December 2024
>    - Online
>    - The Biggest Expert-Led Knowledge-Sharing Event on Network Latency
>
> Our biggest event of the year is back, with top industry speakers already
> lining up. Expect expert insights, practical advice, and a whole lot of
> knowledge-sharing.
>
> Reserve your spot now! *Register here: understandinglatency.com/register
> <https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a3=
3f41&id=3D147ea0f8e2&e=3D7e1d8e665c>*
>
> Best,
> The Understanding Latency team
> *You are receiving this email because you previously signed up to stay
> informed about our latest updates and events.*
>
> Want to change how you receive these emails?
> You can update your preferences
> <https://domos.us11.list-manage.com/profile?u=3D42f9fdfad6a7bbc3af0a33f41=
&id=3D01cb58b2d8&e=3D7e1d8e665c&c=3D146b035395>
> or unsubscribe from this list
> <https://domos.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a3=
3f41&id=3D01cb58b2d8&t=3Db&e=3D7e1d8e665c&c=3D146b035395>.
>
> --
> L4s-discuss mailing list -- l4s-discuss@ietf.org
> To unsubscribe send an email to l4s-discuss-leave@ietf.org
>

--00000000000043261c0626a831d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here is a Wi-Fi low latency table suggesting=C2=A0many dif=
ferent technologies that apply towards just the Wi-Fi user QoE.<br><br><a h=
ref=3D"https://www.l4sgear.com/WiFiLowLatencyTable.html">https://www.l4sgea=
r.com/WiFiLowLatencyTable.html</a><div><br>My opinion is that it will be ma=
rket payments and/or substantial opex reductions that will drive the soluti=
ons.=C2=A0<br><br>Bob</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Nov 11, 2024 at 9:13=E2=80=AFAM Frantise=
k Borsik &lt;<a href=3D"mailto:frantisek.borsik@gmail.com">frantisek.borsik=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>Reg=
ister for the 3rd run of the FREE webinar series, Understanding Latency <a =
href=3D"https://understandinglatency.com" target=3D"_blank">https://underst=
andinglatency.com</a>, organized by Domos.ai - if you are interested in the=
 1.0 and 2.0 runs, here you are:=C2=A0<a href=3D"https://www.youtube.com/@d=
omoslabs/videos" target=3D"_blank">https://www.youtube.com/@domoslabs/video=
s</a></div><div><br></div><div>PS: LibreQoS/Dave Taht will be there!</div><=
div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the be=
st,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" sty=
le=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisek=
borsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linked=
in.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessag=
e, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail=
.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gma=
il.com</a></p></div></div></div></div></div></div></div></div></div></div><=
/div></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Domos</strong> <span dir=3D"auto">&lt;=
<a href=3D"mailto:info@domos.no" target=3D"_blank">info@domos.no</a>&gt;</s=
pan><br>Date: Mon, Nov 11, 2024 at 2:50=E2=80=AFPM<br>Subject: Registration=
 for Understanding Latency 3.0 is open!<br>To:  &lt;<a href=3D"mailto:frant=
isek.borsik@gmail.com" target=3D"_blank">frantisek.borsik@gmail.com</a>&gt;=
<br></div><br><br><div><u></u>

   =20
       =20
       =20
       =20
       =20
       =20
       =20

   =20
    <div style=3D"height:100%;margin:0px;padding:0px;width:100%;background-=
color:rgb(250,250,250)">
       =20
        <center>
            <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" height=3D"100%" width=3D"100%" id=3D"m_-3332080803052240732m_-164=
2287339449383545bodyTable" style=3D"border-collapse:collapse;height:100%;ma=
rgin:0px;padding:0px;width:100%;background-color:rgb(250,250,250)">
                <tbody><tr>
                    <td align=3D"center" valign=3D"top" id=3D"m_-3332080803=
052240732m_-1642287339449383545bodyCell" style=3D"height:100%;margin:0px;pa=
dding:10px;width:100%;border-top:0px">
                       =20
                       =20
                        <table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" style=3D"border-collapse:collapse;border:0px;max-widt=
h:600px">
                            <tbody><tr>
                                <td valign=3D"top" id=3D"m_-333208080305224=
0732m_-1642287339449383545templatePreheader" style=3D"background:none 50% 5=
0%/cover no-repeat rgb(250,250,250);border-top:0px;border-bottom:0px;paddin=
g-top:9px;padding-bottom:9px"><table border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse:collapse"=
>
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
;float:left" width=3D"100%">
                    <tbody><tr>

                        <td valign=3D"top" style=3D"padding:0px 18px 9px;te=
xt-align:center;word-break:break-word;color:rgb(101,101,101);font-family:He=
lvetica;font-size:12px;line-height:150%">

                            <a href=3D"https://mailchi.mp/domos/your-links-=
to-the-understanding-latency-webinar-series-6417399?e=3D7e1d8e665c" style=
=3D"color:rgb(101,101,101);font-weight:normal;text-decoration:underline" ta=
rget=3D"_blank">View this email in your browser</a>
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
                                <td valign=3D"top" id=3D"m_-333208080305224=
0732m_-1642287339449383545templateHeader" style=3D"background:none 50% 50%/=
cover no-repeat rgb(255,255,255);border-top:0px;border-bottom:0px;padding-t=
op:9px;padding-bottom:0px"><table border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse:collapse">
    <tbody>
            <tr>
                <td valign=3D"top" style=3D"padding:9px">
                    <table align=3D"left" width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"min-width:100%;border-collapse:coll=
apse;float:left">
                        <tbody><tr>
                            <td valign=3D"top" style=3D"padding:0px 9px;tex=
t-align:center">

                                    <a href=3D"https://domos.us11.list-mana=
ge.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D74aa87c21f&amp;e=
=3D7e1d8e665c" title=3D"" target=3D"_blank">
                                        <img align=3D"center" alt=3D"" src=
=3D"https://mcusercontent.com/42f9fdfad6a7bbc3af0a33f41/images/4ae5ee3c-199=
6-6a4c-ced4-385e65191eb7.png" width=3D"564" style=3D"max-width: 1500px; pad=
ding-bottom: 0px; vertical-align: bottom; border: 0px; height: auto; outlin=
e: none; text-decoration: none; display: inline;">
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
                                <td valign=3D"top" id=3D"m_-333208080305224=
0732m_-1642287339449383545templateBody" style=3D"background:none 50% 50%/co=
ver no-repeat rgb(255,255,255);border-top:0px;border-bottom:2px solid rgb(2=
34,234,234);padding-top:0px;padding-bottom:9px"><table border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border-=
collapse:collapse;table-layout:fixed">
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
;float:left" width=3D"100%">
                    <tbody><tr>

                        <td valign=3D"top" style=3D"padding:0px 18px 9px;wo=
rd-break:break-word;color:rgb(32,32,32);font-family:Helvetica;font-size:16p=
x;line-height:150%;text-align:left">

                            <p style=3D"margin:10px 0px;padding:0px;color:r=
gb(32,32,32);font-family:Helvetica;font-size:16px;line-height:150%;text-ali=
gn:left"><span style=3D"font-size:13px">FINALLY: <a href=3D"https://domos.u=
s11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D8aae=
f5c0fe&amp;e=3D7e1d8e665c" style=3D"color:rgb(42,142,158);font-weight:norma=
l;text-decoration:underline" target=3D"_blank">Understanding Latency</a> is=
 back!</span></p>

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
7ea0f8e2&amp;e=3D7e1d8e665c" style=3D"color:rgb(42,142,158);font-weight:nor=
mal;text-decoration:underline" target=3D"_blank">understandinglatency.com/r=
egister</a></strong><br>
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
                                <td valign=3D"top" id=3D"m_-333208080305224=
0732m_-1642287339449383545templateFooter" style=3D"background:none 50% 50%/=
cover no-repeat rgb(250,250,250);border-top:0px;border-bottom:0px;padding-t=
op:9px;padding-bottom:9px"><table border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" width=3D"100%" style=3D"min-width:100%;border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
;float:left" width=3D"100%">
                    <tbody><tr>

                        <td valign=3D"top" style=3D"padding:0px 18px 9px;wo=
rd-break:break-word;color:rgb(101,101,101);font-family:Helvetica;font-size:=
12px;line-height:150%;text-align:center">

                            <em>You are receiving this email because you pr=
eviously signed up to stay informed about our latest updates and events.</e=
m><br>
<br>
Want to change how you receive these emails?<br>
You can <a href=3D"https://domos.us11.list-manage.com/profile?u=3D42f9fdfad=
6a7bbc3af0a33f41&amp;id=3D01cb58b2d8&amp;e=3D7e1d8e665c&amp;c=3D146b035395"=
 style=3D"color:rgb(101,101,101);font-weight:normal;text-decoration:underli=
ne" target=3D"_blank">update your preferences</a> or <a href=3D"https://dom=
os.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D=
01cb58b2d8&amp;t=3Db&amp;e=3D7e1d8e665c&amp;c=3D146b035395" style=3D"color:=
rgb(101,101,101);font-weight:normal;text-decoration:underline" target=3D"_b=
lank">unsubscribe from this list</a>.
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
-- <br>
L4s-discuss mailing list -- <a href=3D"mailto:l4s-discuss@ietf.org" target=
=3D"_blank">l4s-discuss@ietf.org</a><br>
To unsubscribe send an email to <a href=3D"mailto:l4s-discuss-leave@ietf.or=
g" target=3D"_blank">l4s-discuss-leave@ietf.org</a><br>
</blockquote></div>

--00000000000043261c0626a831d4--

--===============5433143863384843403==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5433143863384843403==--
