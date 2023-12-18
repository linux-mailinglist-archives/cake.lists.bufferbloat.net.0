Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAC6817C44
	for <lists+cake@lfdr.de>; Mon, 18 Dec 2023 21:50:09 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7903A3CB50;
	Mon, 18 Dec 2023 15:49:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1702932598;
	bh=hjZYjDHKfjSbmjLE6cnCTcuMZsYycB8feaIdhsjj4Zs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=S43n2WJFaYdzHGzdYYPolSbO6HJP1r767UplbbFsgBoNG5rD5/BpPW9Zi4lPe+GzE
	 oN7CtSkw47n2yP9pz9gc0EXENdLyAhLUsqmR/umw+1KOD5ir+SNoUm1HIyjUZ2U96t
	 xdr/9bHw0YoBMOOE8XhjGmKioPVT4SExFc45O0SyDfI9KROurjlw6+L8QYmQi+vGKR
	 Mv1kF6/a8VRVwLJso1eWT8vwtDlvwI8BhCGrD9uCHAIqVO/yVjoHulhZBbDDTkt5WY
	 0nHIWJ+lxvnOVuAOMD6UyW4blu5fS1E2CptvFSUtmU9cDWOh+/AoQ3PeNa5JBRDplz
	 eXay3kDA8NHkw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 431A93CB40;
 Mon, 18 Dec 2023 15:49:57 -0500 (EST)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-425f5964ce1so33469981cf.1; 
 Mon, 18 Dec 2023 12:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702932596; x=1703537396; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5eDLd77pLiPJX/rer5PqH04t9S7bgHM6l0sEMqDUXDE=;
 b=BMSYfC/Mgkddpgu86GhSIrL2lA/YvkQOZmh9U4Ym4ZPlKMS8RblWGmnxz3VjKI9WO+
 aOSrSdCNvBFxMMFW1l3286HDxB6eXZJCM3fagyy/PXCHxsPIdiaNMYKzAp0JDnJdWyXp
 ltHBJ/DZXI9FxwE2e7XxIDLAQErWrjM9IOvuEJVUo1LhUy7YIsMMi4GGF+YsSr2iudvg
 nmW3s79MywVEPL9GchWPOqLsvi18loe6rtM2T/cE/8HaavJRXuhUE9yMcEWcDLzd8M74
 HxHVQy4yujMrlDZaLqYHbo7cnOoThucQVgHAS8HrPvMWc5sYWmNpcV8pTbLtF8k2ClRW
 CkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702932596; x=1703537396;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5eDLd77pLiPJX/rer5PqH04t9S7bgHM6l0sEMqDUXDE=;
 b=VWve8ywrVymzAdEXrQ0d4D1LtNzJqisATSiztcsUvJBM25hsnwNRk6pc0YmeX+hJ0G
 rYays3Z0rP4+xOMOfuDzLuAB9f1RTh+4uA2hENsTseslnODfvYpZBN0Qk3TwiNRy2b8e
 TROQp0uSRkb7dkwNVDcVHiPIeQWefOZPqpSUzn8vpKPEu9AkJkCe6BcO+P6rF+n2w2C6
 OnRQFanTE6+28JnvNQW74Th8wgO9wa7O/wnaR5OqYPF7kmqtXlcccJ7r/LHUFl1rWn1d
 jU6PhAnPlevz9VvVKDKRlGJoYA7udy3AELe6zOFsQe2jM2ScgWEMfxMB3sxUs0C2vijo
 38qQ==
X-Gm-Message-State: AOJu0YwJorHctxUrfbAZW5lhL2pqRuDeOyU+ppCKqEViONnWZeCpyEaG
 dUG2I3+wMVQm33Hk/ThUaIMWpyxRDlvB9Kg/otPVyW6sp4k=
X-Google-Smtp-Source: AGHT+IGUS2lMLpCSiz2rWSEyOjESn8i3a0SCVWxXhgrlUiSYg81jm2mXY1AlZrcQgLGa8Pb3fdU8akmAqLi0Ab5tqQE=
X-Received: by 2002:ac8:5881:0:b0:423:7261:9596 with SMTP id
 t1-20020ac85881000000b0042372619596mr22336051qta.49.1702932596533; Mon, 18
 Dec 2023 12:49:56 -0800 (PST)
MIME-Version: 1.0
References: <42f9fdfad6a7bbc3af0a33f41.7e1d8e665c.20231218103433.dbc284f075.0ad0f1be@mail88.sea31.mcsv.net>
In-Reply-To: <42f9fdfad6a7bbc3af0a33f41.7e1d8e665c.20231218103433.dbc284f075.0ad0f1be@mail88.sea31.mcsv.net>
Date: Mon, 18 Dec 2023 21:49:20 +0100
Message-ID: <CAJUtOOhuX61tuRXnr7gcd=RMWAE63D-AdqZC7pvSpqn_34Vxqg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, cake@lists.bufferbloat.net, 
 ecn-sane@lists.bufferbloat.net, codel@lists.bufferbloat.net, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Subject: [Cake] Understanding Latency 2.0 recordings and slide decks
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
Content-Type: multipart/mixed; boundary="===============1406937258692281125=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1406937258692281125==
Content-Type: multipart/alternative; boundary="0000000000007e2e29060ccee492"

--0000000000007e2e29060ccee492
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My personal favorite talks were following, but honestly, every single one
of them is really great and worth watching!
https://www.understandinglatency.com/recordings-2-0
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3Dc5742af193&e=3D7e1d8e665c>

Dave Taht "A grumpy look at the state of network latency"
Video <https://www.youtube.com/watch?v=3DFHKymZHSLV4&t=3D103s>
Slides
<https://static1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657ada78=
f7044a64e9002143/1702550138472/A+slightly+less+grumpy+look+at+latency+%281%=
29.pdf>

Jeremy Austin "Measuring Customer Experience"
Video <https://www.youtube.com/watch?v=3DYKw1VZhlOxo&t=3D11223s>
Slides
<https://static1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657ad3ab=
427d0c4fcf312b7c/1702548397577/Understanding+Latency+2.0+-+Preseem.pptx.pdf=
>

Toke H=C3=B8iland J=C3=B8rgensen "Always-on latency monitoring with eBPF"
Video <https://www.youtube.com/watch?v=3DFHKymZHSLV4&t=3D1191s>
Slides
<https://static1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657ada92=
266c6522842fbb82/1702550164239/ebpf-latency-monitoring+%282%29.pdf>

Jason Livingood "L4S Field Trial Experiences"
Video <https://www.youtube.com/watch?v=3DYKw1VZhlOxo&t=3D170s>
Slides
<https://static1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657ad18c=
8f4bc16365606f59/1702547854349/Comcast+L4S+-+Domos+-+20231212+%281%29.pdf>

Kathleen Nichols "Why Controlled Delay?"
Video <https://www.youtube.com/watch?v=3DFHKymZHSLV4&t=3D9271s>
Slides
<https://static1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657adec6=
8cc13c7faff0f480/1702551241830/WhyControlDelay.pdf>

Have fun!

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
Date: Mon, Dec 18, 2023 at 11:34=E2=80=AFAM
Subject: It=E2=80=99s a wrap! Your link to the Understanding Latency 2.0 re=
cordings
and slide decks
To: <frantisek.borsik@gmail.com>


View this email in your browser
<https://mailchi.mp/bfba4b5c2c8f/your-links-to-the-understanding-latency-we=
binar-series-6260002?e=3D7e1d8e665c>

Hello, and thank you for attending the Understanding Latency 2.0 webinar
series!

We=E2=80=99re very happy to say the event has been a success. The stats are=
 in: 34
speakers and nearly 700 registered attendees. The webinar has reached 20+
ISPs and Telcos worldwide, totaling over 1.1 billion(!) subscribers, and
representatives from companies like Microsoft, Meta, Google, Apple,
Netflix, Nokia, Broadcom, Cisco, Ericsson, and Cloudflare, along with 22
universities globally.

Recordings and slide decks are now available at:
https://www.understandinglatency.com/recordings-2-0
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3Dc5742af193&e=3D7e1d8e665c>

If you'd like to jump to a specific speaker, open the videos on YouTube and
navigate the timeline via the description.

Thanks again for your interest in making a better internet. We hope to see
you again next time!

Best,
The Understanding Latency team
*You are receiving this email because you have registered for the
Understanding Latency
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D710ac5eee6&e=3D7e1d8e665c>
webinar series. *

Want to change how you receive these emails?
You can update your preferences
<https://domos.us11.list-manage.com/profile?u=3D42f9fdfad6a7bbc3af0a33f41&i=
d=3D1d8bf67e5c&e=3D7e1d8e665c&c=3Ddbc284f075>
or unsubscribe from this list
<https://domos.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D1d8bf67e5c&e=3D7e1d8e665c&c=3Ddbc284f075>.

--0000000000007e2e29060ccee492
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My personal favorite talks were following, but honest=
ly, every single one of them is really great and worth watching!=C2=A0<a hr=
ef=3D"https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af=
0a33f41&amp;id=3Dc5742af193&amp;e=3D7e1d8e665c" target=3D"_blank" style=3D"=
font-size:13px;color:rgb(42,142,158);font-family:Helvetica">https://www.und=
erstandinglatency.com/recordings-2-0</a><br></div><div><br></div><div>Dave =
Taht &quot;A grumpy look at the state of network latency&quot;</div><div><a=
 href=3D"https://www.youtube.com/watch?v=3DFHKymZHSLV4&amp;t=3D103s">Video<=
/a></div><div><a href=3D"https://static1.squarespace.com/static/63bd2fe01bb=
96c686064ebad/t/657ada78f7044a64e9002143/1702550138472/A+slightly+less+grum=
py+look+at+latency+%281%29.pdf">Slides</a></div><div><br></div><div>Jeremy =
Austin &quot;Measuring Customer Experience&quot;</div><div><a href=3D"https=
://www.youtube.com/watch?v=3DYKw1VZhlOxo&amp;t=3D11223s">Video</a></div><di=
v><a href=3D"https://static1.squarespace.com/static/63bd2fe01bb96c686064eba=
d/t/657ad3ab427d0c4fcf312b7c/1702548397577/Understanding+Latency+2.0+-+Pres=
eem.pptx.pdf">Slides</a></div><div><br></div><div>Toke H=C3=B8iland J=C3=B8=
rgensen &quot;Always-on latency monitoring with eBPF&quot;<br></div><div><a=
 href=3D"https://www.youtube.com/watch?v=3DFHKymZHSLV4&amp;t=3D1191s">Video=
</a></div><div><a href=3D"https://static1.squarespace.com/static/63bd2fe01b=
b96c686064ebad/t/657ada92266c6522842fbb82/1702550164239/ebpf-latency-monito=
ring+%282%29.pdf">Slides</a></div><div><br></div><div>Jason Livingood &quot=
;L4S Field Trial Experiences&quot;</div><a href=3D"https://www.youtube.com/=
watch?v=3DYKw1VZhlOxo&amp;t=3D170s">Video</a><div><a href=3D"https://static=
1.squarespace.com/static/63bd2fe01bb96c686064ebad/t/657ad18c8f4bc16365606f5=
9/1702547854349/Comcast+L4S+-+Domos+-+20231212+%281%29.pdf">Slides</a></div=
><div><br></div><div>Kathleen Nichols &quot;Why Controlled Delay?&quot;</di=
v><div><a href=3D"https://www.youtube.com/watch?v=3DFHKymZHSLV4&amp;t=3D927=
1s">Video</a></div><div><a href=3D"https://static1.squarespace.com/static/6=
3bd2fe01bb96c686064ebad/t/657adec68cc13c7faff0f480/1702551241830/WhyControl=
Delay.pdf">Slides</a></div><div><br></div><div>Have fun!</div><div><br clea=
r=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoN=
ormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNorma=
l" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p>=
<p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://w=
ww.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, Wh=
atsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=
=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" targe=
t=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></di=
v></div></div></div></div></div></div></div></div><br><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded messag=
e ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Domos<=
/strong> <span dir=3D"auto">&lt;<a href=3D"mailto:info@domos.no">info@domos=
.no</a>&gt;</span><br>Date: Mon, Dec 18, 2023 at 11:34=E2=80=AFAM<br>Subjec=
t: It=E2=80=99s a wrap! Your link to the Understanding Latency 2.0 recordin=
gs and slide decks<br>To:  &lt;<a href=3D"mailto:frantisek.borsik@gmail.com=
">frantisek.borsik@gmail.com</a>&gt;<br></div><br><br><div class=3D"msg-921=
1605455276185557"><u></u>

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
ing=3D"0" height=3D"100%" width=3D"100%" id=3D"m_-9211605455276185557bodyTa=
ble" style=3D"border-collapse:collapse;height:100%;margin:0;padding:0;width=
:100%;background-color:#fafafa">
                <tbody><tr>
                    <td align=3D"center" valign=3D"top" id=3D"m_-9211605455=
276185557bodyCell" style=3D"height:100%;margin:0;padding:10px;width:100%;bo=
rder-top:0">
                       =20
                       =20
                        <table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" class=3D"m_-9211605455276185557templateContainer" sty=
le=3D"border-collapse:collapse;border:0;max-width:600px!important">
                            <tbody><tr>
                                <td valign=3D"top" id=3D"m_-921160545527618=
5557templatePreheader" style=3D"background:#fafafa none no-repeat center/co=
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
" width=3D"100%" class=3D"m_-9211605455276185557mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-9211605455276185557m=
cnTextContent" style=3D"padding:0px 18px 9px;text-align:center;word-break:b=
reak-word;color:#656565;font-family:Helvetica;font-size:12px;line-height:15=
0%">

                            <a href=3D"https://mailchi.mp/bfba4b5c2c8f/your=
-links-to-the-understanding-latency-webinar-series-6260002?e=3D7e1d8e665c" =
style=3D"color:#656565;font-weight:normal;text-decoration:underline" target=
=3D"_blank">View this email in your browser</a>
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
                                <td valign=3D"top" id=3D"m_-921160545527618=
5557templateHeader" style=3D"background:#ffffff none no-repeat center/cover=
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
apse">
                        <tbody><tr>
                            <td valign=3D"top" style=3D"padding-right:9px;p=
adding-left:9px;padding-top:0;padding-bottom:0;text-align:center">


                                        <img align=3D"center" alt=3D"" src=
=3D"https://mcusercontent.com/42f9fdfad6a7bbc3af0a33f41/images/15ba3d89-0b2=
3-b757-1195-e32f7a5b3948.png" width=3D"564" style=3D"max-width:2400px;paddi=
ng-bottom:0;display:inline!important;vertical-align:bottom;border:0;height:=
auto;outline:none;text-decoration:none" class=3D"m_-9211605455276185557mcnI=
mage">


                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table></td>
                            </tr>
                            <tr>
                                <td valign=3D"top" id=3D"m_-921160545527618=
5557templateBody" style=3D"background:#ffffff none no-repeat center/cover;b=
ackground-color:#ffffff;background-image:none;background-repeat:no-repeat;b=
ackground-position:center;background-size:cover;border-top:0;border-bottom:=
2px solid #eaeaea;padding-top:0;padding-bottom:9px"><table border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%" class=3D"m_-921160545527618=
5557mcnDividerBlock" style=3D"min-width:100%;border-collapse:collapse;table=
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
" width=3D"100%" class=3D"m_-9211605455276185557mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-9211605455276185557m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#202020;font-family:Helvetic=
a;font-size:16px;line-height:150%;text-align:left">

                            <p style=3D"margin:10px 0;padding:0;color:#2020=
20;font-family:Helvetica;font-size:16px;line-height:150%;text-align:left"><=
span style=3D"font-size:13px">Hello, and thank you for attending the Unders=
tanding Latency 2.0 webinar series!<br>
<br>
We=E2=80=99re very happy to say the event has been a success. The stats are=
 in: 34 speakers and nearly 700 registered attendees. The webinar has reach=
ed 20+ ISPs and Telcos worldwide, totaling over 1.1 billion(!) subscribers,=
 and representatives from companies like Microsoft, Meta, Google, Apple, Ne=
tflix, Nokia, Broadcom, Cisco, Ericsson, and Cloudflare, along with 22 univ=
ersities globally.<br>
<br>
Recordings and slide decks are now available at:<br>
<a href=3D"https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7b=
bc3af0a33f41&amp;id=3Dc5742af193&amp;e=3D7e1d8e665c" style=3D"color:#2a8e9e=
;font-weight:normal;text-decoration:underline" target=3D"_blank">https://ww=
w.understandinglatency.com/recordings-2-0</a><br>
<br>
If you&#39;d like to jump to a specific speaker, open the videos on YouTube=
 and navigate the timeline via the description.<br>
<br>
Thanks again for your interest in making a better internet. We hope to see =
you again next time!<br>
<br>
Best,<br>
The Understanding Latency team</span></p>

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
                                <td valign=3D"top" id=3D"m_-921160545527618=
5557templateFooter" style=3D"background:#fafafa none no-repeat center/cover=
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
" width=3D"100%" class=3D"m_-9211605455276185557mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-9211605455276185557m=
cnTextContent" style=3D"padding-top:0;padding-right:18px;padding-bottom:9px=
;padding-left:18px;word-break:break-word;color:#656565;font-family:Helvetic=
a;font-size:12px;line-height:150%;text-align:center">

                            <em>You are receiving this email because you ha=
ve registered for the <a href=3D"https://domos.us11.list-manage.com/track/c=
lick?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D710ac5eee6&amp;e=3D7e1d8e665c" =
style=3D"color:#656565;font-weight:normal;text-decoration:underline" target=
=3D"_blank">Understanding Latency</a> webinar series.=C2=A0</em><br>
<br>
Want to change how you receive these emails?<br>
You can <a href=3D"https://domos.us11.list-manage.com/profile?u=3D42f9fdfad=
6a7bbc3af0a33f41&amp;id=3D1d8bf67e5c&amp;e=3D7e1d8e665c&amp;c=3Ddbc284f075"=
 style=3D"color:#656565;font-weight:normal;text-decoration:underline" targe=
t=3D"_blank">update your preferences</a> or <a href=3D"https://domos.us11.l=
ist-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D1d8bf67e5=
c&amp;e=3D7e1d8e665c&amp;c=3Ddbc284f075" style=3D"color:#656565;font-weight=
:normal;text-decoration:underline" target=3D"_blank">unsubscribe from this =
list</a>.
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
dfad6a7bbc3af0a33f41&amp;id=3Ddbc284f075&amp;e=3D7e1d8e665c" height=3D"1" w=
idth=3D"1" alt=3D""></div>
</div></div></div></div>

--0000000000007e2e29060ccee492--

--===============1406937258692281125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1406937258692281125==--
