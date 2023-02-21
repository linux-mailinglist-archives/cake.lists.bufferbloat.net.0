Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B80B69E75E
	for <lists+cake@lfdr.de>; Tue, 21 Feb 2023 19:21:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 49D4E3CB41;
	Tue, 21 Feb 2023 13:21:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677003705;
	bh=5nlN6oTjJj7g3urywFh8xNleeKN/IYZKN6F96zAmWD4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Jzb5pCYu+TQqj+bsCd5kQeEH7qjVujtZrFLpYQ008xDJWIqEqP3ZV4AU3rzC88Jg9
	 QOv+v1JICmV4wyvV2+qP9T7SKTehw7W2DHAkxFB69ZhWWTqEGtlRL5RYdBGZ6M4VCK
	 q7bbJJch3PPq4HPYRX7VsopasD1MkInHK3zEqz/TdYO+F7IcZl9MADnnb48ojJ6d8N
	 Kh/CQvr711tTaP/rxcw8PcwBhAvarsNNwoH5j21Jc2ESlEwtHFiPH56LKdZ2TwdN8M
	 xlTc6jLSCJvuPR151xzJz97MgQoc7PbI+VjbwdOL2+3q0vAJDrx9n2qSf2dyuq6Z+q
	 ugBch43X+uV5A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BC0E03CB37;
 Tue, 21 Feb 2023 13:21:44 -0500 (EST)
Received: by mail-wr1-x433.google.com with SMTP id l1so5179077wry.10;
 Tue, 21 Feb 2023 10:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GBg7WFUoZzLJBZNWe5ns5Ejtzc4ej9g1NxENqiV2f4c=;
 b=T/Uq+AvMmlnzHQm1yrRAbevg1FyN7gEGIzyD8DqXTu/c6xzRMGvUXTj6i3UvrBu89G
 6V/lt5Qfhwx8R8w0yi/qXY3Y4OOgJzfAJ/AqdTUjTEXklS/8ABsTAKPK+y1PjDfwDlQI
 u83pZVCEZiicmDH4pWWDpIkicGhqf3zLLihHmAkCMsPK3iMsUgeAAzFkjmG5ZRdzmC0H
 tE+ZXlm+q9QESqRCBqil4jIPOfq9cA2IFfzz5fR+G5lI9kRH5EzP7jnE1ih7MPTqFPSb
 YJStZvBdMFHFAIVKSeOXo+YumfgjIiLH5kNCrpqlTRPMnjV3iqWz302E3+Py/4Et80sW
 gf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GBg7WFUoZzLJBZNWe5ns5Ejtzc4ej9g1NxENqiV2f4c=;
 b=UZiMtWcMuT7ViIYT7CmxwClSIDlsQfWd2kOntPiy03O3z84sso41FRJFCOZqO8VnN9
 2NMNOenbLH+XJDena+M5vDaCwiR3bsJILPLES34pF+xmT7SATod6GFMTcOdPuZtZoaDL
 KDj6lgYxcN91vuWeHP8Es8YS1rkWEmtVoayrayfPzNU6f/schLyXgE1xskcvJSURwX1C
 rXHZRBU8cclv5JYiaCUEXRBNscVAYg+Su4FCcFRKegvFNF3ps2QTtIIFsPAO5hOFgHX+
 a8LUkccAGFQU7QUuVGKczQMKC4ecoxZAijTVPZkjdULO4uKT+Ti/5drU+Rr1PP2J8Twc
 DT+g==
X-Gm-Message-State: AO0yUKU+dhqsFe32fg2b5VAndlZrPNVWhR4jAsKn9I8MgUO1TEVqh+2l
 IXRjpvcID/REsllLqFc4drabETswOaKd0Tvkx4gXBzLCb5c=
X-Google-Smtp-Source: AK7set9lL4hr+LNAw9yLty+0EkLR+cdD9fZCxgNi6HZNs6yZgeVtZ87nzzygwrIzX/7IESuJbXiunDbL36OqvZxbjW4=
X-Received: by 2002:adf:e351:0:b0:2c5:6175:a609 with SMTP id
 n17-20020adfe351000000b002c56175a609mr275478wrj.0.1677003703038; Tue, 21 Feb
 2023 10:21:43 -0800 (PST)
MIME-Version: 1.0
References: <42f9fdfad6a7bbc3af0a33f41.b814f808f8.20230221130855.1ec3c6c2b4.f288c08b@mail224.atl291.mcsv.net>
In-Reply-To: <42f9fdfad6a7bbc3af0a33f41.b814f808f8.20230221130855.1ec3c6c2b4.f288c08b@mail224.atl291.mcsv.net>
Date: Tue, 21 Feb 2023 10:21:31 -0800
Message-ID: <CAA93jw7FZyqopJauP=4Uzgc9Y+HuTAXdbzhLC+Af_bMzn_G0zA@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] Fwd: Domos Latency Webinar Series featuring: Apple, Comcast,
 Vodafone, Nokia, CloudFlare, Ericsson, Ookla, GameBench, Red Hat, Daily,
 Bufferbloat
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
Content-Type: multipart/mixed; boundary="===============4772809428005259010=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4772809428005259010==
Content-Type: multipart/alternative; boundary="00000000000001b66405f539da52"

--00000000000001b66405f539da52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I absolutely could not write a better promotional piece for our upcoming
latency conference march 6-8.

That long, endless throbbing, bass note is the soundtrack of my life! I
could call out a lot of folk doing this, notably Matt Mathis has a keynote,
and Toke is talking about ebpf, and Stuart about "RPM", and the rest of our
"gang", like Jason Livingood & Brennan Smith - but it's the newer folk,
like Varun Singh from Callstats - and Angus Laurie-Pile (of Gamebench)  and
Dave Tuber (from Cloudflare) that I am looking forward to hearing from
most.

I hope that the overall set of speakers and the topic has broad enough
appeal to reach a wider audience than usual. Please sign up at:
understandinglatency.com - or better, pass along to someone that might be
interested?

I will probably burn a slide on starlink, and another on LTE. Is there
anything new y'all would like me to speak to in my talk about "measuring
internet quality"?

---------- Forwarded message ---------
From: Magnus Olden <magnus@domos.no>
Date: Tue, Feb 21, 2023 at 5:09 AM
Subject: Domos Latency Webinar Series featuring: Apple, Comcast, Vodafone,
Nokia, CloudFlare, Ericsson, Ookla, GameBench, Red Hat, Daily, Bufferbloat
To: <dave.taht@gmail.com>


Hi there,
How do you get...

   - A internet legend and ex-Googler
   - A guy with "Wizard" in his job title at Apple
   - A former XR-Specialist at Microsoft
   - Key technologists from Vodafone, Comcast, Ericsson, Cloudflare, Ookla,
   Red Hat, GameBench, Daily, and Aterlo
   - A Bell Labs fellow
   - The ultimate Bufferbloat fighter
   - A WebRTC spec writer
   - And authors of numerous IETF RFCs, ITU and BBF TRs

...to team up for a webinar?

You make it about network latency.

Don't miss out on our knowledge sharing event. Check out our Video Teaser
(sound ON for dramatic effect)
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3De71c9c6bc1&e=3Db814f808f8>
.

Get all the details and register at understandinglatency.com
<https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D43a725b41e&e=3Db814f808f8>
.

Cheers,
Magnus Olden
CTO, Domos - Latency Management






This email was sent to dave.taht@gmail.com
*why did I get this?*
<https://domos.us11.list-manage.com/about?u=3D42f9fdfad6a7bbc3af0a33f41&id=
=3D2286175598&e=3Db814f808f8&c=3D1ec3c6c2b4>
    unsubscribe from this list
<https://domos.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f=
41&id=3D2286175598&e=3Db814f808f8&c=3D1ec3c6c2b4>
    update subscription preferences
<https://domos.us11.list-manage.com/profile?u=3D42f9fdfad6a7bbc3af0a33f41&i=
d=3D2286175598&e=3Db814f808f8&c=3D1ec3c6c2b4>
Domos Labs =C2=B7 Ole Moes Vei 12 =C2=B7 Oslo, 03 1165 =C2=B7 Norway



--=20
A pithy note on VOQs vs SQM: https://blog.cerowrt.org/post/juniper/
Dave T=C3=A4ht CEO, TekLibre, LLC

--00000000000001b66405f539da52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I absolutely could not write a better promotional piece fo=
r our upcoming latency conference march 6-8.<div><br></div><div>That long, =
endless throbbing, bass note is the soundtrack of my life! I could call out=
 a lot of folk doing this, notably Matt Mathis has a keynote, and Toke is t=
alking about ebpf, and Stuart about &quot;RPM&quot;, and the rest of our &q=
uot;gang&quot;, like Jason Livingood &amp; Brennan Smith - but it&#39;s the=
 newer folk, like Varun Singh from Callstats - and Angus Laurie-Pile (of Ga=
mebench)=C2=A0 and Dave Tuber (from Cloudflare) that I am looking forward t=
o hearing from most.=C2=A0</div><div><br></div><div>I hope that the overall=
 set of speakers and the topic has broad enough appeal to reach a wider aud=
ience than usual. Please sign up at: <a href=3D"http://understandinglatency=
.com">understandinglatency.com</a> - or better, pass along to someone that =
might be interested?=C2=A0<br><br>I will probably burn a slide on starlink,=
 and another on LTE. Is there anything new y&#39;all would like me to speak=
 to in my talk about &quot;measuring internet quality&quot;?</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">----------=
 Forwarded message ---------<br>From: <strong class=3D"gmail_sendername" di=
r=3D"auto">Magnus Olden</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:m=
agnus@domos.no">magnus@domos.no</a>&gt;</span><br>Date: Tue, Feb 21, 2023 a=
t 5:09 AM<br>Subject: Domos Latency Webinar Series featuring: Apple, Comcas=
t, Vodafone, Nokia, CloudFlare, Ericsson, Ookla, GameBench, Red Hat, Daily,=
=C2=A0Bufferbloat<br>To:  &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.t=
aht@gmail.com</a>&gt;<br></div><br><br><div class=3D"msg-666363720219707496=
9"><u></u>

   =20
       =20
       =20
       =20
       =20
       =20
       =20

   =20
    <div style=3D"background:#ffffff none no-repeat center/cover;height:100=
%;margin:0;padding:0;width:100%;background-color:#ffffff;background-image:n=
one;background-repeat:no-repeat;background-position:center;background-size:=
cover">
       =20
        <center>
            <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" height=3D"100%" width=3D"100%" id=3D"m_-6663637202197074969bodyTa=
ble" style=3D"background:#ffffff none no-repeat center/cover;border-collaps=
e:collapse;height:100%;margin:0;padding:0;width:100%;background-color:#ffff=
ff;background-image:none;background-repeat:no-repeat;background-position:ce=
nter;background-size:cover">
                <tbody><tr>
                    <td align=3D"left" valign=3D"top" id=3D"m_-666363720219=
7074969bodyCell" style=3D"height:100%;margin:0;padding:10px;width:100%;bord=
er-top:0">
                       =20
                       =20
                        <table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" class=3D"m_-6663637202197074969templateContainer" sty=
le=3D"border-collapse:collapse;border:0;max-width:600px!important">
                            <tbody><tr>
                                <td valign=3D"top" id=3D"m_-666363720219707=
4969templateHeader" style=3D"border-top:0;border-bottom:0"><table border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:1=
00%;border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-6663637202197074969mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-6663637202197074969m=
cnTextContent" style=3D"padding:0px 18px 9px;font-size:14px;word-break:brea=
k-word;color:#202020;font-family:Helvetica;line-height:150%;text-align:left=
">

                            Hi there,
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
                                <td valign=3D"top" id=3D"m_-666363720219707=
4969templateBody" style=3D"border-top:0;border-bottom:0"><table border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100=
%;border-collapse:collapse">
    <tbody>
        <tr>
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-6663637202197074969mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-6663637202197074969m=
cnTextContent" style=3D"padding:0px 18px 9px;font-size:14px;word-break:brea=
k-word;color:#202020;font-family:Helvetica;line-height:150%;text-align:left=
">

                            How do you get...
<ul>
	<li>A=C2=A0internet legend and ex-Googler</li>
	<li>A guy with &quot;Wizard&quot; in his job title at Apple</li>
	<li>A former XR-Specialist at Microsoft</li>
	<li>Key technologists from Vodafone, Comcast, Ericsson, Cloudflare, Ookla,=
 Red Hat, GameBench, Daily, and Aterlo</li>
	<li>A Bell Labs fellow</li>
	<li>The ultimate Bufferbloat fighter</li>
	<li>A WebRTC spec writer</li>
	<li>And=C2=A0authors of numerous IETF RFCs, ITU and BBF TRs</li>
</ul>
...to team up for a webinar?<br>
<br>
You make it about network latency.<br>
<br>
Don&#39;t miss out on our knowledge sharing event. Check out our <a href=3D=
"https://domos.us11.list-manage.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f=
41&amp;id=3De71c9c6bc1&amp;e=3Db814f808f8" style=3D"color:#007c89;font-weig=
ht:normal;text-decoration:underline" target=3D"_blank">Video Teaser (sound =
ON for dramatic effect)</a>.<br>
<br>
Get all the details and register at <a href=3D"https://domos.us11.list-mana=
ge.com/track/click?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D43a725b41e&amp;e=
=3Db814f808f8" style=3D"color:#007c89;font-weight:normal;text-decoration:un=
derline" target=3D"_blank">understandinglatency.com</a>.<br>
=C2=A0
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
            <td valign=3D"top" style=3D"padding-top:9px">
              =09
		=09
			=09
                <table align=3D"left" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"max-width:100%;min-width:100%;border-collapse:collapse=
" width=3D"100%" class=3D"m_-6663637202197074969mcnTextContentContainer">
                    <tbody><tr>

                        <td valign=3D"top" class=3D"m_-6663637202197074969m=
cnTextContent" style=3D"padding:0px 18px 9px;font-size:14px;word-break:brea=
k-word;color:#202020;font-family:Helvetica;line-height:150%;text-align:left=
">

                            Cheers,<br>
Magnus Olden<br>
CTO, Domos - Latency Management
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
                                <td valign=3D"top" id=3D"m_-666363720219707=
4969templateFooter" style=3D"border-top:0;border-bottom:0"></td>
                            </tr>
                        </tbody></table>
                       =20
                       =20
                    </td>
                </tr>
            </tbody></table>
        </center>
                <center>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" wid=
th=3D"100%" id=3D"m_-6663637202197074969canspamBarWrapper" style=3D"backgro=
und-color:#ffffff;border-top:1px solid #e5e5e5">
                    <tbody><tr>
                        <td align=3D"center" valign=3D"top" style=3D"paddin=
g-top:20px;padding-bottom:20px">
                            <table border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" id=3D"m_-6663637202197074969canspamBar">
                                <tbody><tr>
                                    <td align=3D"center" valign=3D"top" sty=
le=3D"color:#606060;font-family:Helvetica,Arial,sans-serif;font-size:11px;l=
ine-height:150%;padding-right:20px;padding-bottom:5px;padding-left:20px;tex=
t-align:center">
                                        This email was sent to <a href=3D"m=
ailto:dave.taht@gmail.com" style=3D"color:#404040!important" target=3D"_bla=
nk">dave.taht@gmail.com</a>
                                        <br>
                                        <a href=3D"https://domos.us11.list-=
manage.com/about?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D2286175598&amp;e=3D=
b814f808f8&amp;c=3D1ec3c6c2b4" style=3D"color:#404040!important" target=3D"=
_blank"><em>why did I get this?</em></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"=
https://domos.us11.list-manage.com/unsubscribe?u=3D42f9fdfad6a7bbc3af0a33f4=
1&amp;id=3D2286175598&amp;e=3Db814f808f8&amp;c=3D1ec3c6c2b4" style=3D"color=
:#404040!important" target=3D"_blank">unsubscribe from this list</a>=C2=A0=
=C2=A0=C2=A0=C2=A0<a href=3D"https://domos.us11.list-manage.com/profile?u=
=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D2286175598&amp;e=3Db814f808f8&amp;c=
=3D1ec3c6c2b4" style=3D"color:#404040!important" target=3D"_blank">update s=
ubscription preferences</a>
                                        <br>
                                        Domos Labs =C2=B7 Ole Moes Vei 12 =
=C2=B7 Oslo, 03 1165 =C2=B7 Norway
                                        <br>
                                        <br>

                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
               =20
            </center><img src=3D"https://domos.us11.list-manage.com/track/o=
pen.php?u=3D42f9fdfad6a7bbc3af0a33f41&amp;id=3D1ec3c6c2b4&amp;e=3Db814f808f=
8" height=3D"1" width=3D"1" alt=3D""></div>
</div></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv>A pithy note on VOQs vs SQM: <a href=3D"https://blog.cerowrt.org/post/ju=
niper/" target=3D"_blank">https://blog.cerowrt.org/post/juniper/</a><br></d=
iv><div>Dave T=C3=A4ht CEO, TekLibre, LLC <br></div></div></div></div></div=
>

--00000000000001b66405f539da52--

--===============4772809428005259010==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4772809428005259010==--
