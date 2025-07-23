Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6B0B0EA44
	for <lists+cake@lfdr.de>; Wed, 23 Jul 2025 07:59:45 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id BB1AFB69866;
	Wed, 23 Jul 2025 07:59:35 +0200 (CEST)
Authentication-Results: mail.toke.dk; dmarc=none (p=none dis=none) header.from=lochnair.net
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=lists.bufferbloat.net
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=lochnair.net header.i=@lochnair.net header.a=rsa-sha256 header.s=fm1 header.b=GtLtzvGJ;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=kEXLjzOM
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1753250375;
 b=JtXmwAoV9mqzDj+LQ0pr/9k1KUDRUinyVNpFcsl+UeL2Hgb/0i+4F084Z8n6VAJjrdR7L
 +iyLH3sW/hstqkEJShy2LIbZ8DHSl3j7tCpwZ1tQQ7jo48Hok8JbYNmr2wGwiG2BHYs14zx
 QE6W3Av4uUWZoa0WQh3HmM6H4HuZ4Ks=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1753250375; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9Dc4sP+YqT6Tov/Vuno6R14AlnafRO9o8WOJ0EXoy60=;
 b=vep3nef+DoVBd0buep4GUXJT5Zaf9fvdSgb0Fjdec6I6eEtBvMh2BtYJlRg1/ehAge4a0
 vl6iR8dkcaQ0DmnbneZQ8JPk4/sexTbufJxVbVrRYjJolPKZ4Mh+06gkDDcJ7Ja6+7XNx7m
 MNp3P3VLrwz1kou0X0BD96NyupaP3rY=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lochnair.net;
 dkim=pass header.d=lochnair.net;
 arc=none;
 dmarc=none
Received: from fhigh-b2-smtp.messagingengine.com
 (fhigh-b2-smtp.messagingengine.com [202.12.124.153])
	by mail.toke.dk (Postfix) with ESMTPS id 33961B6980D;
	Wed, 23 Jul 2025 07:59:23 +0200 (CEST)
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 69A9B7A00E1;
	Wed, 23 Jul 2025 01:59:20 -0400 (EDT)
Received: from phl-imap-09 ([10.202.2.99])
  by phl-compute-08.internal (MEProxy); Wed, 23 Jul 2025 01:59:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1753250360; x=1753336760; bh=yEvj4391Ez
	q8226dksl4qOo2FIaqKeCb+MYTv4ExHvM=; b=GtLtzvGJVR1tANLkZZ/H6Q5FW1
	yE2eEKImdw04AJlMSf9pY6mWTuGoQDMDeL7shHgcQGfvrD5LCvP454zmKv1Y4vat
	Fvy0cMIxDCIc/w+YNUgb2gsfDpVU7DnOfLOoWYLJ96hX/ues4j1tcqGIgRnsFEnr
	XMSZvhwJ2rUBE0KKdl6bDMNKYM99JKs4FF2dkujOFvLqTMVYc7Di/dSxTNl1gOvP
	rCZKhn/Sqj97BZxDqbUVuWX5jjS1XoogfSqmQ/QD0akAIeiQi5UR4a7NeQLEhW5e
	/bazNS0j33qIyTbd6aEMvZmj16xPOFrdQVTfKR11ugwReiv6x2Irj9+9/+zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1753250360; x=1753336760; bh=yEvj4391Ezq8226dksl4qOo2FIaqKeCb+MY
	Tv4ExHvM=; b=kEXLjzOMPsp4e5ieu8a2Fm3qGSp1OjFcG8ig58xsNcsq1qo+5VH
	QLRi+N9HGX69P4DsJSw+Q4Ddyx0aB/UdrODCkjAEJTP8Q/Cznee2QGj+PIrCPY+9
	QbhO2FL2DkjwPhSK13Bvb8rPvXQXg+urtszeA1DoY8+WQg1H2OMEBUv/LuiupIVv
	W4O6WT0kAsiwM1yIGGvF2BPUi97MPOhc4Zk0R0XC9B0xJtXUGxEtmcvhLfa1OxgK
	PuE0SlRxcX7T1kJXE/9bZ6h8ltQr+lSvleHtYLMN762anag38sxoSNkEXdsIWPKX
	cMhUqnIgITAyGdfh+mS4AurX+InKGIyzYLg==
X-ME-Sender: <xms:N3qAaJlzYjR6PDgjwRzTJjKeOhdas8-ld2pPkpS3XvEeHeEdWzTSeQ>
    <xme:N3qAaE3KyEgC6EFxh1jqEaUdiEQi6GWJbhoDuuZwbTAdl7wjWYNU6kDY0Ocw_E2Wz
    BVYBaC6uCzZ73Hqkw>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdejjedttdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvvefkjghfufgtsegrtderreertdejnecuhfhrohhmpedfpfhilhhsucet
    nhgurhgvrghsucfuvhgvvgdfuceomhgvsehlohgthhhnrghirhdrnhgvtheqnecuggftrf
    grthhtvghrnhepfefhfeffgeduvddukeevvdehleeggfehueduteejhffhvdeluefgvdfg
    ieefveejnecuffhomhgrihhnpehlihgsrhgvqhhoshdrtghomhdptggvrhhofihrthdroh
    hrghdpghhithhhuhgsrdgtohhmpdgsuhhffhgvrhgslhhorghtrdhnvghtpdhlihgsrhgv
    qhhoshdrihhopdhlihhnkhgvughinhdrtghomhenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvghtpdhnsggp
    rhgtphhtthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepfhhrrghnth
    hishgvkhdrsghorhhsihhksehgmhgrihhlrdgtohhmpdhrtghpthhtohephhifohhlvhgv
    rhhsohhnsehlihgsrhgvqhhoshdrihhopdhrtghpthhtoheprhhosggvrhhtsehlihgsrh
    gvqhhoshdrihhopdhrtghpthhtohepsghlohgrthdqihgvthhfsehlihhsthhsrdgsuhhf
    fhgvrhgslhhorghtrdhnvghtpdhrtghpthhtohepsghlohgrtheslhhishhtshdrsghufh
    hfvghrsghlohgrthdrnhgvthdprhgtphhtthhopegtrghkvgeslhhishhtshdrsghufhhf
    vghrsghlohgrthdrnhgvthdprhgtphhtthhopegtohguvghlsehlihhsthhsrdgsuhhffh
    gvrhgslhhorghtrdhnvghtpdhrtghpthhtoheplhhisghrvghqohhssehlihhsthhsrdgs
    uhhffhgvrhgslhhorghtrdhnvghtpdhrtghpthhtoheprhhpmheslhhishhtshdrsghufh
    hfvghrsghlohgrthdrnhgvth
X-ME-Proxy: <xmx:N3qAaJo4MQz5G66vN0zV72230Si6gt4XO4NKsPJPFrao7WuMkPWNeQ>
    <xmx:N3qAaBIMUmr1rISaCYQVgO_91Bkw4vFSwBfQq2zTQkak3QAqZkveoA>
    <xmx:N3qAaFQhXuN6J3DRM8wOJtNCSP80KGSra0mbH0Ba4TGAW0TR-pYLkw>
    <xmx:N3qAaJO2DrxvgK9r5BSzKPIvRFVjqbZG_EHw3JwhsnxxwngqV3fTfQ>
    <xmx:OHqAaG0WYNUuuGflLsB0EGRac2hyUcYw6c8cCLD280VQs6uwM_N_b3tv>
Feedback-ID: i6a5b4305:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id C6006302007C; Wed, 23 Jul 2025 01:59:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T73d355fa67b694f7
Date: Wed, 23 Jul 2025 12:58:50 +0700
From: "Nils Andreas Svee" <me@lochnair.net>
To: "Frantisek Borsik" <frantisek.borsik@gmail.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 "Dave Taht" <starlink@lists.bufferbloat.net>,
 "Jeremy Austin" <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, "Cake List" <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net
Cc: "Herbert Wolverson" <hwolverson@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Message-Id: <ec975a15-4105-4849-82f1-8c88abb8e26f@app.fastmail.com>
In-Reply-To: 
 <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
References: 
 <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
Message-ID-Hash: VKMIIXXWEG5DPKW5FQXSVWINILTLL6UZ
X-Message-ID-Hash: VKMIIXXWEG5DPKW5FQXSVWINILTLL6UZ
X-MailFrom: me@lochnair.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Bloat] Announcing the LibreQoS Bufferbloat Test Platform
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/ec975a15-4105-4849-82f1-8c88abb8e26f@app.fastmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============1458452034806921533=="

--===============1458452034806921533==
Content-Type: multipart/alternative;
 boundary=a1d49b56754f4726a6951127a211b976

--a1d49b56754f4726a6951127a211b976
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Are there any issues with the Singapore test server, or is it just me?

Ping says 1000 ms, and 0.0Mbit, browser console spams:
> Ping timeout 579 - skipping measurement for accuracy latencyWorker.js:=
173:21 <https://test.libreqos.com/latencyWorker.js>
> Latency measurement timeout: Ping timeout - measurement skipped for ac=
curacy (consecutive: 579)

> curl -v 'https://test-sg.libreqos.com:8005/ <https://test-sg.libreqos.=
com:8005/ping?cb=3D53351>'
> * Host test-sg.libreqos.com:8005 was resolved.
> * IPv6: (none)
> * IPv4: 45.77.41.196
> *   Trying 45.77.41.196:8005...
> * connect to 45.77.41.196 port 8005 from 172.20.20.50 port 57105 faile=
d: Operation timed out
> * Failed to connect to test-sg.libreqos.com port 8005 after 75004 ms: =
Could not connect to server
> * closing connection #0
> curl: (28) Failed to connect to test-sg.libreqos.com port 8005 after 7=
5004 ms: Could not connect to server
>=20
> ping 45.77.41.196
> PING 45.77.41.196 (45.77.41.196): 56 data bytes
> 64 bytes from 45.77.41.196: icmp_seq=3D0 ttl=3D53 time=3D27.369 ms
> 64 bytes from 45.77.41.196: icmp_seq=3D1 ttl=3D53 time=3D27.372 ms
> 64 bytes from 45.77.41.196: icmp_seq=3D2 ttl=3D53 time=3D27.014 ms
> ^C
> --- 45.77.41.196 ping statistics ---
> 3 packets transmitted, 3 packets received, 0.0% packet loss
> round-trip min/avg/max/stddev =3D 27.014/27.252/27.372/0.168 ms

Best Regards
Nils

On Sun, Jun 15, 2025, at 19:00, Frantisek Borsik via Bloat wrote:
> Hello to all,
>=20
> We're excited to announce the release of the *LibreQoS Bufferbloat Tes=
t* =E2=80=93 an open-source bufferbloat testing solution designed specif=
ically for ISPs and network operators to deploy for their customers.
>=20
> *Link*
> https://test.libreqos.com
>=20
> *What Makes This Different*
>=20
> While there are several bufferbloat testing tools available, this plat=
form addresses a critical gap: ISP-deployable infrastructure that provid=
es both traditional testing and realistic household simulation.
>=20
> As Dave T=C3=A4ht highlighted in his influential article "What's Wrong=
 with Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditio=
nal speed tests fail to measure what users actually experience. We tried=
 to address Dave's points to make a better speed test that focuses on th=
e metric that matters: latency under load in realistic usage scenarios.
>=20
> *Two Complementary Test Modes*
>=20
> *Single User Test Mode*
>  =E2=80=A2 Traditional sequential load testing (baseline =E2=86=92 dow=
nload =E2=86=92 upload =E2=86=92 bidirectional)
>  =E2=80=A2 Measures working latency and jitter during each phase
>  =E2=80=A2 Familiar A+ to F grading based on latency under load increa=
ses
>  =E2=80=A2 Comparable to existing tools like DSLReports Speed Test and=
 Waveform Bufferbloat Test
>=20
> *Virtual Household Mode (The Innovation)*
>=20
> Process-isolated simulation of 4 concurrent users with authentic traff=
ic patterns:
>  =E2=80=A2 Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for comp=
etitive gaming
>  =E2=80=A2 Sarah (Video Conference): 2.5 Mbps bidirectional, Teams sim=
ulation with working latency monitoring
>  =E2=80=A2 Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realisti=
c streaming patterns
>  =E2=80=A2 Computer (Background): Up to 200 Mbps continuous download, =
system updates
>=20
> Real-world relevance: Tests latency under load when multiple family me=
mbers are online simultaneously
>=20
> Advanced grading: Network fairness, jitter measurement, and per-user w=
orking latency analysis
>=20
> *Why (not only) ISPs Need This*
>=20
> *The traditional approach of sending customers to third-party speed te=
st sites has limitations:*
>  =E2=80=A2 No control over test methodology or server placement
>  =E2=80=A2 Limited correlation with customer support tickets
>  =E2=80=A2 Generic results that don't reflect real-world usage patterns
>  =E2=80=A2 No integration with ISP operational systems
> *This platform enables (not only) ISPs to:*
>  =E2=80=A2 Host their own testing infrastructure with full control
>  =E2=80=A2 Integrate with support systems via telemetry APIs
>  =E2=80=A2 Provide customers with realistic household testing scenarios
>  =E2=80=A2 Correlate test results with network performance and custome=
r complaints
>=20
> *Open Source & Community*
>=20
> The entire platform is open source and available here: https://github.=
com/LibreQoE/bufferbloat_test
>=20
> We've designed this to be:
>  =E2=80=A2 Easy to deploy for (not only) ISPs of any size
>  =E2=80=A2 Scientifically meaningful in its measurement methodology
>  =E2=80=A2 Realistic in its simulation of actual household usage
>  =E2=80=A2 Integrable with existing ISP operational workflows
>=20
> *Community Feedback Requested
*
> We'd love feedback from the bufferbloat.net community on:
>  =E2=80=A2 Test methodology: Are we measuring the right metrics?
>  =E2=80=A2 Grading thresholds: Do our A+ to F grades align with real-w=
orld impact?
>  =E2=80=A2 Virtual household scenarios: What other realistic usage pat=
terns should we simulate?
>  =E2=80=A2 ISP adoption: What barriers exist for ISP deployment?
>=20
> *Technical Discussion
*
> We'd welcome discussion about:
>  =E2=80=A2 Measurement accuracy for working latency and jitter in virt=
ual household mode
>  =E2=80=A2 Traffic pattern authenticity (gaming, video conferencing, s=
treaming)
>  =E2=80=A2 Grading methodology for latency under load in complex multi=
-user scenarios
>  =E2=80=A2 Integration approaches for ISP operational systems
>=20
> The platform represents our attempt to bridge the gap between academic=
 bufferbloat research and practical ISP operations, building on the foun=
dational work of researchers like Dave T=C3=A4ht and the broader bufferb=
loat community. We believe that widespread ISP deployment of proper buff=
erbloat testing infrastructure will ultimately benefit the entire intern=
et ecosystem.
>=20
> *Looking forward to the community's thoughts and feedback!
*
> Best regards,
>=20
> The LibreQoS Team
>=20
> *__In loving memory of Dave T=C3=A4ht: *1965-2025
> __https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
>=20
> https://www.linkedin.com/in/frantisekborsik____
> Signal, Telegram, WhatsApp: +421919416714 ____
> iMessage, mobile: +420775230885____
> Skype: casioa5302ca____
> frantisek.borsik@gmail.com
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>=20

--a1d49b56754f4726a6951127a211b976
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title></head><body><div>Are there an=
y issues with the Singapore test server, or is it just me?<br></div><div=
><br></div><div>Ping says 1000 ms, and 0.0Mbit, browser console spams:</=
div><blockquote type=3D"cite"><div>Ping timeout 579 - skipping measureme=
nt for accuracy <a href=3D"https://test.libreqos.com/latencyWorker.js">l=
atencyWorker.js:173:21</a></div><div>Latency measurement timeout: Ping t=
imeout - measurement skipped for accuracy (consecutive: 579)<br></div></=
blockquote><div><br></div><blockquote type=3D"cite"><div>curl -v '<a hre=
f=3D"https://test-sg.libreqos.com:8005/ping?cb=3D53351">https://test-sg.=
libreqos.com:8005/</a>'</div><div>* Host test-sg.libreqos.com:8005 was r=
esolved.</div><div>* IPv6: (none)</div><div>* IPv4: 45.77.41.196</div><d=
iv>*&nbsp;&nbsp; Trying 45.77.41.196:8005...</div><div>* connect to 45.7=
7.41.196 port 8005 from 172.20.20.50 port 57105 failed: Operation timed =
out</div><div>* Failed to connect to test-sg.libreqos.com port 8005 afte=
r 75004 ms: Could not connect to server</div><div>* closing connection #=
0</div><div>curl: (28) Failed to connect to test-sg.libreqos.com port 80=
05 after 75004 ms: Could not connect to server</div><div><br></div><div>=
ping 45.77.41.196</div><div>PING 45.77.41.196 (45.77.41.196): 56 data by=
tes</div><div>64 bytes from 45.77.41.196: icmp_seq=3D0 ttl=3D53 time=3D2=
7.369 ms</div><div>64 bytes from 45.77.41.196: icmp_seq=3D1 ttl=3D53 tim=
e=3D27.372 ms</div><div>64 bytes from 45.77.41.196: icmp_seq=3D2 ttl=3D5=
3 time=3D27.014 ms</div><div>^C</div><div>--- 45.77.41.196 ping statisti=
cs ---</div><div>3 packets transmitted, 3 packets received, 0.0% packet =
loss</div><div>round-trip min/avg/max/stddev =3D 27.014/27.252/27.372/0.=
168 ms</div></blockquote><div><br></div><div id=3D"sig44785538"><div cla=
ss=3D"signature">Best Regards</div><div class=3D"signature">Nils</div></=
div><div><br></div><div>On Sun, Jun 15, 2025, at 19:00, Frantisek Borsik=
 via Bloat wrote:</div><blockquote type=3D"cite" id=3D"qt" style=3D""><d=
iv dir=3D"ltr"><div><div>Hello to all,</div><div><br></div><div>We're ex=
cited to announce the release of the <b>LibreQoS Bufferbloat Test</b> =E2=
=80=93 an open-source bufferbloat testing solution designed specifically=
 for ISPs and network operators to deploy for their customers.</div><div=
><br></div><div><b>Link</b></div><div><a href=3D"https://test.libreqos.c=
om">https://test.libreqos.com</a></div><div><br></div><div><b>What Makes=
 This Different</b></div><div><br></div><div>While there are several buf=
ferbloat testing tools available, this platform addresses a critical gap=
: ISP-deployable infrastructure that provides both traditional testing a=
nd realistic household simulation.</div><div><br></div><div>As Dave T=C3=
=A4ht highlighted in his influential article <a href=3D"https://blog.cer=
owrt.org/post/speedtests/">"What's Wrong with Speed Tests"</a>, traditio=
nal speed tests fail to measure what users actually experience. We tried=
 to address Dave's points to make a better speed test that focuses on th=
e metric that matters: latency under load in realistic usage scenarios.<=
/div><div><br></div><div><b>Two Complementary Test Modes</b></div><div><=
br></div><div><i>Single User Test Mode</i></div><ul><li>Traditional sequ=
ential load testing (baseline =E2=86=92 download =E2=86=92 upload =E2=86=
=92 bidirectional)</li><li>Measures working latency and jitter during ea=
ch phase</li><li>Familiar A+ to F grading based on latency under load in=
creases</li><li>Comparable to existing tools like DSLReports Speed Test =
and Waveform Bufferbloat Test</li></ul><div><br></div><div><i>Virtual Ho=
usehold Mode (The Innovation)</i></div><div><br></div><div>Process-isola=
ted simulation of 4 concurrent users with authentic traffic patterns:</d=
iv><ul><li>Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for compet=
itive gaming</li><li>Sarah (Video Conference): 2.5 Mbps bidirectional, T=
eams simulation with working latency monitoring</li><li>Jake (Netflix HD=
): 25 Mbps bursts (1s on, 4s off), realistic streaming patterns</li><li>=
Computer (Background): Up to 200 Mbps continuous download, system update=
s</li></ul><div><br></div><div>Real-world relevance: Tests latency under=
 load when multiple family members are online simultaneously</div><div><=
br></div><div>Advanced grading: Network fairness, jitter measurement, an=
d per-user working latency analysis</div><div><br></div><div><b>Why (not=
 only) ISPs Need This</b></div><div><br></div><div><i>The traditional ap=
proach of sending customers to third-party speed test sites has limitati=
ons:</i></div><ul><li>No control over test methodology or server placeme=
nt</li><li>Limited correlation with customer support tickets</li><li>Gen=
eric results that don't reflect real-world usage patterns</li><li>No int=
egration with ISP operational systems</li></ul><div><i>This platform ena=
bles (not only) ISPs to:</i></div><ul><li>Host their own testing infrast=
ructure with full control</li><li>Integrate with support systems via tel=
emetry APIs</li><li>Provide customers with realistic household testing s=
cenarios</li><li>Correlate test results with network performance and cus=
tomer complaints</li></ul><div><br></div><div><b>Open Source &amp; Commu=
nity</b></div><div><br></div><div>The entire platform is open source and=
 available here: <a href=3D"https://github.com/LibreQoE/bufferbloat_test=
">https://github.com/LibreQoE/bufferbloat_test</a></div><div><br></div><=
div>We've designed this to be:</div><ul><li>Easy to deploy for (not only=
) ISPs of any size</li><li>Scientifically meaningful in its measurement =
methodology</li><li>Realistic in its simulation of actual household usag=
e</li><li>Integrable with existing ISP operational workflows</li></ul><d=
iv><br></div><div><b>Community Feedback Requested<br></b></div><div>We'd=
 love feedback from the <a href=3D"http://bufferbloat.net">bufferbloat.n=
et</a> community on:</div><ul><li>Test methodology: Are we measuring the=
 right metrics?</li><li>Grading thresholds: Do our A+ to F grades align =
with real-world impact?</li><li>Virtual household scenarios: What other =
realistic usage patterns should we simulate?</li><li>ISP adoption: What =
barriers exist for ISP deployment?</li></ul><div><br></div><div><b>Techn=
ical Discussion<br></b></div><div>We'd welcome discussion about:</div><u=
l><li>Measurement accuracy for working latency and jitter in virtual hou=
sehold mode</li><li>Traffic pattern authenticity (gaming, video conferen=
cing, streaming)</li><li>Grading methodology for latency under load in c=
omplex multi-user scenarios</li><li>Integration approaches for ISP opera=
tional systems</li></ul><div><br></div><div>The platform represents our =
attempt to bridge the gap between academic bufferbloat research and prac=
tical ISP operations, building on the foundational work of researchers l=
ike Dave T=C3=A4ht and the broader bufferbloat community. We believe tha=
t widespread ISP deployment of proper bufferbloat testing infrastructure=
 will ultimately benefit the entire internet ecosystem.</div><div><br></=
div><div><b>Looking forward to the community's thoughts and feedback!<br=
></b></div><div>Best regards,</div><div><br></div><div>The LibreQoS Team=
</div></div><div><div dir=3D"ltr" class=3D"qt-gmail_signature"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><p class=3D"qt=
-MsoNormal" style=3D"color:rgb(34, 34, 34);"><br></p><p class=3D"qt-MsoN=
ormal" style=3D"color:rgb(34, 34, 34);"><b><u></u>In loving memory of Da=
ve T=C3=A4ht:&nbsp;</b><span style=3D"color:rgb(32, 33, 36);">1965-2025<=
/span></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><u>=
</u><a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/"=
 target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-memory-of-da=
ve/</a></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><b=
r></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><a href=
=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17, =
85, 204);" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik=
</a><u></u><u></u></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 3=
4, 34);">Signal, Telegram, WhatsApp: +421919416714&nbsp;<u></u><u></u></=
p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);">iMessage, m=
obile: +420775230885<u></u><u></u></p><p class=3D"qt-MsoNormal" style=3D=
"color:rgb(34, 34, 34);">Skype: casioa5302ca<u></u><u></u></p><p class=3D=
"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><a href=3D"mailto:franti=
sek.borsik@gmail.com" style=3D"color:rgb(17, 85, 204);" target=3D"_blank=
">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></div>=
</div></div></div></div></div></div><div>_______________________________=
________________</div><div>Bloat mailing list</div><div><a href=3D"mailt=
o:Bloat@lists.bufferbloat.net">Bloat@lists.bufferbloat.net</a></div><div=
><a href=3D"https://lists.bufferbloat.net/listinfo/bloat">https://lists.=
bufferbloat.net/listinfo/bloat</a></div><div><br></div></blockquote><div=
><br></div></body></html>
--a1d49b56754f4726a6951127a211b976--

--===============1458452034806921533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

--===============1458452034806921533==--
