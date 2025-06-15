Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF98ADA1B4
	for <lists+cake@lfdr.de>; Sun, 15 Jun 2025 13:58:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3B9F73CB49;
	Sun, 15 Jun 2025 07:58:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749988692;
	bh=PrpKg/GP0P4sfPo7mBK9szospgn39TqXS2w13rFP3lc=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=l6Tw/H3JW1f4Pae/3imFjUP2t15wp6W/okkP61OHl03S7JQZ0bA+WgoI5el9vbgsv
	 PMhRN+nRly43nl9ZslJGx/hjYwHL1TGviWugjjNF/Je/s8Vt+eWeCD8Dvi/FfvmMri
	 2BZkS9UJSAIfzOcgmdteWRuztP9EYkXoFbT4rc+ldqxkegY5YpScr34QH2xV+Nkm+k
	 IIJOrYiIsWp/JFZ0UX7BiSNERdkSyRhsdeD9td0gxiYJCtdcLYaGoT8+8L6zoAiEZd
	 5aP8BGSbi43/GNhE4Cr38xk8sPmB7WYFuwsQ7SROXmZrPMIYjAvOwJxhFrb+Hw7VeK
	 7iMbkFiSPKTdQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 732C33B29D;
 Sun, 15 Jun 2025 07:58:10 -0400 (EDT)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-60780d74c8cso6478007a12.2; 
 Sun, 15 Jun 2025 04:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749988689; x=1750593489; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9YkGflKfspRydMeJg0UtKY+XO9Vi5fIxRWa/AdRzS/M=;
 b=DJHUJiYQbib00iVuQm7BdH1KLM8h4lvB03xBs/S1b3aBiiUIoGXeH43OcTUUoxd7ME
 HRXbWajUQQGD0t+rhKzCdYJ+VtPvod6kp4jMhzcRst9qlp63A9RZKPKeuSVRUthbJTuo
 drRRI0cEMhzlNSyMFo560gzNnSLBeFYWRfti3jwMni65dMb7kRguQQjsmkHvgBjK8Ds/
 FtcGIWVAzArRubavZoQ9J0Xnq44VKeFoWOjzgJjrgK3Sx+N5YZ6qFrUAAHB4cW2mil7y
 kURmessLWCm2KHiqdQ5UpVJkRJoZXxiTqFXEc2WS4YuXSUgMBQeJxJJD0Z2+mnYAnVIG
 ggfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749988689; x=1750593489;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9YkGflKfspRydMeJg0UtKY+XO9Vi5fIxRWa/AdRzS/M=;
 b=oiw6qSJBgGK4Umv6f9IFrdmiUs5T2NO+xjSA4xUaUb1zoQaNA0V0xSILzB6avqzEeQ
 kCpQYtLglpWPLAN93RSUeYt/IGnsW7w+0o/Z4yG5rDzlZlk3IiUwsUB6F9pwlR9yL9QW
 NvXPIcu7p/4VO9D98QkUY8QXorRa7svv9qWExHuxiK8b+7G69sx6rPE7Oycna2AO/W8+
 K2UDvrsnyrzoF85WS3/G7tlGzEqESgpR0FG9CsXmyAJ+dF77I1JobX5hhDWrs783twZY
 l/ASmLCD/x4ARw0Ly2V9mCOACPboC2wtXoEgi9PiYMA9siVQy4LeiH7vnM5srnDq/kHw
 RVeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3OlEoW7jFWLmkBUN0YtUEnAAfQO/thXA5G8y0WaAIbMfVE/UYpNeXYUEXw6+6U341t0px9ChcJ24=@lists.bufferbloat.net,
 AJvYcCUFjbcVXTXoYIr+VsJjQR40AezP9MQGQNGaFHFp3PWWV64pTYUBzvB3h9QfgIt/HYIM26NIB5s=@lists.bufferbloat.net,
 AJvYcCV04fufvBTVh2sEuLpM/e6gjc7WWAiwkMon8rArJuI4kdoCXoM9Y9cafPYd2oh/U8UQY6cWdmY=@lists.bufferbloat.net,
 AJvYcCW9ydzeCrycTqZ67wXsF/rKTEJkbyteD/qS8HzVRr5x3Dyp+2EI6rO3GGsNAVXrATPvlNAzXA==@lists.bufferbloat.net,
 AJvYcCWGa0xesukTUqBIxqO9Heiw/vXa9Pl5iTPPsvXoYZ5pw8d26RyvWWgj1OLzTpZOwIfCyK7eJuwZXt2x@lists.bufferbloat.net,
 AJvYcCXw7jgHdaXue/tN2H+cBiFrt4loe1ydWzbLhpoN7hePt6oK15DlufvY/Z/7SiOMTQ5UEkRG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxsnUfK/bR/xCZL8OCFF36+e3gPgo3XJ8ZVccuNKuf44AFJu9fF
 ZkC2fmoClrcdz7zUVQD+U2jVOx7vjSApatU2nUSh3JHCoLd4PLAHwqyAsPiWet8PrPM/fM2WuWU
 LiH4BihmPfRE0C9dTSrnrydzjlnKpNZJjR6QvhiBmPA==
X-Gm-Gg: ASbGnctUX5XPOLYSjZ98C79fwdftyFH3uBxGBu4cN/08tXc7ZaALQ7xZNZL8lBiN3i1
 Ksxl3n+rWUb5riUFNQSvxxHEZYy0ivwBS5LlziKSXRTaAb/EGjLxatXoMorgNjpnVEDYzHlpmz1
 YUcEUzGp2kJOlJ6Cx/z6IPQb/fw6ZeV/BbiyY/dtUcg/s0
X-Google-Smtp-Source: AGHT+IGByYpndrC47OV0HIkvavchx5YS7GX6x2X4VT50t9dZAGO4RHarUm2mPnaVPwqc0fFToWa5qJLKgSlTeznDcW0=
X-Received: by 2002:a17:907:1ca0:b0:aca:95e7:9977 with SMTP id
 a640c23a62f3a-adfad438078mr491728466b.28.1749988688933; Sun, 15 Jun 2025
 04:58:08 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 15 Jun 2025 14:00:26 +0200
X-Gm-Features: AX0GCFspl_LyBGXzzSeMCaKkosPWW2ejH3RDDN6mWPBswaZbLCcH55lE9Kf94NI
Message-ID: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, 
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net
Subject: [Cake] Announcing the LibreQoS Bufferbloat Test Platform
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
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============0048909933156629732=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0048909933156629732==
Content-Type: multipart/alternative; boundary="0000000000002a3cbf06379afe9c"

--0000000000002a3cbf06379afe9c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

We're excited to announce the release of the *LibreQoS Bufferbloat Test* =
=E2=80=93
an open-source bufferbloat testing solution designed specifically for ISPs
and network operators to deploy for their customers.

*Link*
https://test.libreqos.com

*What Makes This Different*

While there are several bufferbloat testing tools available, this platform
addresses a critical gap: ISP-deployable infrastructure that provides both
traditional testing and realistic household simulation.

As Dave T=C3=A4ht highlighted in his influential article "What's Wrong with
Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditional speed
tests fail to measure what users actually experience. We tried to address
Dave's points to make a better speed test that focuses on the metric that
matters: latency under load in realistic usage scenarios.

*Two Complementary Test Modes*

*Single User Test Mode*

   - Traditional sequential load testing (baseline =E2=86=92 download =E2=
=86=92 upload =E2=86=92
   bidirectional)
   - Measures working latency and jitter during each phase
   - Familiar A+ to F grading based on latency under load increases
   - Comparable to existing tools like DSLReports Speed Test and Waveform
   Bufferbloat Test


*Virtual Household Mode (The Innovation)*

Process-isolated simulation of 4 concurrent users with authentic traffic
patterns:

   - Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for competitive
   gaming
   - Sarah (Video Conference): 2.5 Mbps bidirectional, Teams simulation
   with working latency monitoring
   - Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic streaming
   patterns
   - Computer (Background): Up to 200 Mbps continuous download, system
   updates


Real-world relevance: Tests latency under load when multiple family members
are online simultaneously

Advanced grading: Network fairness, jitter measurement, and per-user
working latency analysis

*Why (not only) ISPs Need This*

*The traditional approach of sending customers to third-party speed test
sites has limitations:*

   - No control over test methodology or server placement
   - Limited correlation with customer support tickets
   - Generic results that don't reflect real-world usage patterns
   - No integration with ISP operational systems

*This platform enables (not only) ISPs to:*

   - Host their own testing infrastructure with full control
   - Integrate with support systems via telemetry APIs
   - Provide customers with realistic household testing scenarios
   - Correlate test results with network performance and customer complaint=
s


*Open Source & Community*

The entire platform is open source and available here:
https://github.com/LibreQoE/bufferbloat_test

We've designed this to be:

   - Easy to deploy for (not only) ISPs of any size
   - Scientifically meaningful in its measurement methodology
   - Realistic in its simulation of actual household usage
   - Integrable with existing ISP operational workflows



*Community Feedback Requested*
We'd love feedback from the bufferbloat.net community on:

   - Test methodology: Are we measuring the right metrics?
   - Grading thresholds: Do our A+ to F grades align with real-world impact=
?
   - Virtual household scenarios: What other realistic usage patterns
   should we simulate?
   - ISP adoption: What barriers exist for ISP deployment?



*Technical Discussion*
We'd welcome discussion about:

   - Measurement accuracy for working latency and jitter in virtual
   household mode
   - Traffic pattern authenticity (gaming, video conferencing, streaming)
   - Grading methodology for latency under load in complex multi-user
   scenarios
   - Integration approaches for ISP operational systems


The platform represents our attempt to bridge the gap between academic
bufferbloat research and practical ISP operations, building on the
foundational work of researchers like Dave T=C3=A4ht and the broader buffer=
bloat
community. We believe that widespread ISP deployment of proper bufferbloat
testing infrastructure will ultimately benefit the entire internet
ecosystem.


*Looking forward to the community's thoughts and feedback!*
Best regards,

The LibreQoS Team


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--0000000000002a3cbf06379afe9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,<br><br>We&#39;re excited to announce th=
e release of the <b>LibreQoS Bufferbloat Test</b> =E2=80=93 an open-source =
bufferbloat testing solution designed specifically for ISPs and network ope=
rators to deploy for their customers.<br><br><b>Link</b><br><a href=3D"http=
s://test.libreqos.com">https://test.libreqos.com</a><br><br><b>What Makes T=
his Different</b><br><br>While there are several bufferbloat testing tools =
available, this platform addresses a critical gap: ISP-deployable infrastru=
cture that provides both traditional testing and realistic household simula=
tion.<br><br>As Dave T=C3=A4ht highlighted in his influential article <a hr=
ef=3D"https://blog.cerowrt.org/post/speedtests/">&quot;What&#39;s Wrong wit=
h Speed Tests&quot;</a>, traditional speed tests fail to measure what users=
 actually experience. We tried to address Dave&#39;s points to make a bette=
r speed test that focuses on the metric that matters: latency under load in=
 realistic usage scenarios.<br><br><b>Two Complementary Test Modes</b><br><=
br><i>Single User Test Mode</i><br><ul><li>Traditional sequential load test=
ing (baseline =E2=86=92 download =E2=86=92 upload =E2=86=92 bidirectional)<=
/li><li>Measures working latency and jitter during each phase</li><li>Famil=
iar A+ to F grading based on latency under load increases</li><li>Comparabl=
e to existing tools like DSLReports Speed Test and Waveform Bufferbloat Tes=
t<br></li></ul><br><i>Virtual Household Mode (The Innovation)</i><br><br>Pr=
ocess-isolated simulation of 4 concurrent users with authentic traffic patt=
erns:<br><ul><li>Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for com=
petitive gaming</li><li>Sarah (Video Conference): 2.5 Mbps bidirectional, T=
eams simulation with working latency monitoring</li><li>Jake (Netflix HD): =
25 Mbps bursts (1s on, 4s off), realistic streaming patterns</li><li>Comput=
er (Background): Up to 200 Mbps continuous download, system updates<br></li=
></ul><br>Real-world relevance: Tests latency under load when multiple fami=
ly members are online simultaneously<br><br>Advanced grading: Network fairn=
ess, jitter measurement, and per-user working latency analysis<br><br><b>Wh=
y (not only) ISPs Need This</b><br><br><i>The traditional approach of sendi=
ng customers to third-party speed test sites has limitations:</i><br><ul><l=
i>No control over test methodology or server placement</li><li>Limited corr=
elation with customer support tickets</li><li>Generic results that don&#39;=
t reflect real-world usage patterns</li><li>No integration with ISP operati=
onal systems</li></ul><i>This platform enables (not only) ISPs to:</i><br><=
ul><li>Host their own testing infrastructure with full control</li><li>Inte=
grate with support systems via telemetry APIs</li><li>Provide customers wit=
h realistic household testing scenarios</li><li>Correlate test results with=
 network performance and customer complaints<br></li></ul><br><b>Open Sourc=
e &amp; Community</b><br><br>The entire platform is open source and availab=
le here: <a href=3D"https://github.com/LibreQoE/bufferbloat_test">https://g=
ithub.com/LibreQoE/bufferbloat_test</a><br><br>We&#39;ve designed this to b=
e:<br><ul><li>Easy to deploy for (not only) ISPs of any size</li><li>Scient=
ifically meaningful in its measurement methodology</li><li>Realistic in its=
 simulation of actual household usage</li><li>Integrable with existing ISP =
operational workflows<br></li></ul><br><b>Community Feedback Requested<br><=
/b><br>We&#39;d love feedback from the <a href=3D"http://bufferbloat.net">b=
ufferbloat.net</a> community on:<br><ul><li>Test methodology: Are we measur=
ing the right metrics?</li><li>Grading thresholds: Do our A+ to F grades al=
ign with real-world impact?</li><li>Virtual household scenarios: What other=
 realistic usage patterns should we simulate?</li><li>ISP adoption: What ba=
rriers exist for ISP deployment?<br></li></ul><br><b>Technical Discussion<b=
r></b><br>We&#39;d welcome discussion about:<br><ul><li>Measurement accurac=
y for working latency and jitter in virtual household mode</li><li>Traffic =
pattern authenticity (gaming, video conferencing, streaming)</li><li>Gradin=
g methodology for latency under load in complex multi-user scenarios</li><l=
i>Integration approaches for ISP operational systems<br></li></ul><br>The p=
latform represents our attempt to bridge the gap between academic bufferblo=
at research and practical ISP operations, building on the foundational work=
 of researchers like Dave T=C3=A4ht and the broader bufferbloat community. =
We believe that widespread ISP deployment of proper bufferbloat testing inf=
rastructure will ultimately benefit the entire internet ecosystem.<br><br><=
b>Looking forward to the community&#39;s thoughts and feedback!<br></b><br>=
Best regards,<br><br>The LibreQoS Team</div><div><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div><p class=3D"MsoNormal" style=3D"=
color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span style=
=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/i=
n-loving-memory-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/01/=
in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rgb(=
34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signa=
l, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"Mso=
Normal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u=
><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: cas=
ioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,=
34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85=
,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></di=
v></div></div></div></div></div></div></div></div></div>

--0000000000002a3cbf06379afe9c--

--===============0048909933156629732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0048909933156629732==--
