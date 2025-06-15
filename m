Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18827ADAC85
	for <lists+cake@lfdr.de>; Mon, 16 Jun 2025 11:57:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8949D3CB5C;
	Mon, 16 Jun 2025 05:57:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750067871;
	bh=Y2y2szX4EqBVf8CRmEYAm/pb0DFLjtPdlFPPq9BZxec=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QVzt0BuOe8VakPI1aLCZaTvCu6UzljhiYxtIpbLkocX3uDHEshYP9QTzKOi8KzMSm
	 m6s98EmC1jCUXkER7X/rIY6qAl5i1Qe4YtpfCYqjKQWDVlpcV4YQ4Uvsobf/+u/3ky
	 qtMgIC4pIr4hK2iyiokKGwP9zxrTPmkrjhjOXGaX2HfAJl9GuVvonq/NM6/7zIBgC9
	 NLb2ayEp6YbeSSoyCAcBqTQlZwSkxuHDtAKOps3zIE08UFxTU0n26c1x6/qLDZtdrR
	 c5ZRQhkO7NBtlJ/jbP01uEHoGaI/voU2FWNfbipItqyKQKfc2nlWzx6glSvopk+Spm
	 MweOF9i7pT4/Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2BE163B29D
 for <cake@lists.bufferbloat.net>; Sun, 15 Jun 2025 14:05:27 -0400 (EDT)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-607c2b96b29so7592919a12.1
 for <cake@lists.bufferbloat.net>; Sun, 15 Jun 2025 11:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=libreqos.io; s=google; t=1750010726; x=1750615526; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4sO7qlCA1GPqhRN62MAhnqA1ac09oLSC7TUGE6+sv3s=;
 b=Az7quSt2TOQ5dPvMFMzEFLoaFGBcJCmMqr1ca+S1fjiveGXMhK3SMssWtKIp+WJsyp
 QNXEwlOYU73jaVGyl26EWgJCTVjqVm1IDEZva51d2RqqExy++c+aQAKq0SAs7p0L7upM
 q2hiKeGkNri6LfV8jup5ORGwB31ol8FuYNiV1iFnivFxPHUZPsQDFTJTJSCjMzXeiWQn
 okHYkvh/eo0nl4tDPbaKsiui0kTl+KJ5jAg3fZ5LDMAggBoarGSoDZafACj7AO+C2Z59
 qfVvNxfsYZi22Oy/82u+PxXk4SRG0wssvYABhBKD3BXPxl9uPW6+7rsCWT7qMezuRxwe
 HGVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750010726; x=1750615526;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4sO7qlCA1GPqhRN62MAhnqA1ac09oLSC7TUGE6+sv3s=;
 b=MrgCwF0ZvEeAxscC8oyZ3P0leGGYQ+gPB004ZpWt8NZdt5ZV8soHiUJdxC9z6/bvy7
 Nv/9AJZjQ58dA/Nasn66b/LBlY1o4P2EmEafKShucV95jHcJP6e/SY+YlvJAodNeTG0U
 LTlnqj8lfo0nk6NaExJI167oe5D26QCTIovnXuLHIhgXNLzc8+NQQeR4w2LF8Ru08IvV
 lMgHXcm+F9acbe4lxzWTwetVERDb/Tr9qmuURDgZCfnLX7s53FgJhfyGm0SMN67I+bIr
 9LRRaw8+nHJZAsWTwF0SeGhl9lty6/VS+mNxCwVUqBZBs8xoHAQRyDHNY6AWtHe59iF7
 11fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlfzD9H78RD+Ah54AC6wP7Q0LALFWvQvhuXtUC02rekDyseJZWIFLk/CItdeGUbM/Kt9Zl@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwpYU9+F0ngpFwVT4rx71E9cfNh8C+PWDpNW8EB7hU9N5quKrLa
 rxXw02UTQ4ZhkmlNNFEbfhFQoEtTycSwYhnUCD+XCD5NcbpcmJIHaaCffWjZ7MtqR38gaBLP+4X
 pGjvxP4hg4puyay+3bl3rHMJ35VDP7y6cGRwA20E1Iw==
X-Gm-Gg: ASbGnctRBXI7mP2SNZXwAz1gk/U2dy3Kcg2N/RIG2bNPEcDJ2XgAkhVIYT1q+SB95N+
 e5amuOwNz7yO/vxoTLKoGppfgysB3yA/JBeUkwjKfSvB2tR+y68LeM32s8zIYdt5YEMhTPbt0Wf
 fwFIcK3t8buZQnGhropWlsE5hTAWW4nS8si0SsGl3eZg==
X-Google-Smtp-Source: AGHT+IG6oBr1FGw3+Ciw8Yn2futUSGXA930Ph3x5ufk8qCf3pmrXlL2fB9QyNqVLdECoGuL/u7yATrfeoLXaoMtJpzk=
X-Received: by 2002:a05:6402:3552:b0:608:4945:ca47 with SMTP id
 4fb4d7f45d1cf-608d09486c4mr6403635a12.17.1750010725940; Sun, 15 Jun 2025
 11:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
 <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
 <6684dff4-c2a1-4f41-be9a-71162f256031@app.fastmail.com>
 <CANypexSrrU_y+UrejFgsUbK3TA_rfpM3XfrdvM+qkm=aHVyKfA@mail.gmail.com>
In-Reply-To: <CANypexSrrU_y+UrejFgsUbK3TA_rfpM3XfrdvM+qkm=aHVyKfA@mail.gmail.com>
Date: Sun, 15 Jun 2025 12:05:14 -0600
X-Gm-Features: AX0GCFsUOPyFgQ42_BkfMn3Ux_9j4MLJa8K4XdyRlfdHos2c54lW8ZuCvBk5aZA
Message-ID: <CABJOm+beaD-9vGTq4YSjPgYcjcaXJ-VSS1Jduktz=oLa3HUkVA@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
X-Mailman-Approved-At: Mon, 16 Jun 2025 05:57:50 -0400
Subject: Re: [Cake] [Bloat] [Starlink] Announcing the LibreQoS Bufferbloat
	TestPlatform
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
From: =?UTF-8?Q?Robert_Chac=C3=B3n?= via Cake <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Cc: Jeremy Austin <rpm@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 the keyboard of geoff goodfellow <geoff@iconia.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht <starlink@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============5151434269583842545=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5151434269583842545==
Content-Type: multipart/alternative; boundary="000000000000ac508f0637a01fb3"

--000000000000ac508f0637a01fb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nils,

I've now fixed the issue where the initial latency spike skews baseline
results by switching to using 75th percentile for baseline calculation.
Thanks for catching that.

Geoff,

I may have fixed that now. Our Vultr VPS was hitting its bandwidth limit
apparently, and they throttled it. Switched to hosting it locally in El
Paso as fast as I could. Now tests can achieve saturation throughput.

Dave,

If you try it again does it still fail to ping currently?

Thanks,
Robert

On Sun, Jun 15, 2025 at 11:32=E2=80=AFAM dave seddon <dave.seddon.ca@gmail.=
com>
wrote:

> Very cool Frank!
>
> When I run it, it says all of my latency is 0.0ms.  This
> is firefox-139.0.1 on NixOS unstable.
>
> I guess soem of the CORS headers are screwed up?
> Cross-Origin Request Blocked: The Same Origin Policy disallows reading th=
e
> remote resource at https://test-elp.libreqos.com:8005/ping?cb=3D242578.
> (Reason: CORS request did not succeed). Status code: (null).
>
> I don't know, I guess you probably _do_ want these objects to be
> cacheable via the CDN?
>
> GET /ping?cb=3D819806 HTTP/1.1
> Host: test-elp.libreqos.com:8005
> User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:139.0) Gecko/20100101
> Firefox/139.0
> Accept: */*
> Accept-Language: en-US,en;q=3D0.5
> Accept-Encoding: gzip, deflate, br, zstd
> Pragma: no-cache
> Cache-Control: no-store, no-cache, must-revalidate
> X-Priority: high
> X-Ping-Attempt: 0
> Referer: https://test.libreqos.com/
> Origin: https://test.libreqos.com
> Connection: keep-alive
> Sec-Fetch-Dest: empty
> Sec-Fetch-Mode: cors
> Sec-Fetch-Site: same-site
>
> HTTP/1.1 200 OK
> date: Sun, 15 Jun 2025 17:13:55 GMT
> server: uvicorn
> cache-control: no-store, no-cache, must-revalidate
> pragma: no-cache
> x-ping-server: dedicated
> x-priority-processed: true
> x-ping-timeouts-seen: 0
> content-length: 4
> content-type: text/plain; charset=3Dutf-8
> access-control-allow-origin: *
> access-control-allow-credentials: true
>
> Your Nginx server also can have caching enabled for the favorite icon, an=
d
> the javascript, which should make it faster to load.
>
> HTTP/2 200
> server: nginx/1.18.0 (Ubuntu)
> date: Sun, 15 Jun 2025 17:13:35 GMT
> content-type: text/javascript; charset=3Dutf-8
> vary: Accept-Encoding
> last-modified: Tue, 10 Jun 2025 04:28:53 GMT
> strict-transport-security: max-age=3D63072000
> x-content-type-options: nosniff
> x-frame-options: SAMEORIGIN
> content-encoding: gzip
> X-Firefox-Spdy: h2
>
> I've found that you can set the caching for the CORS "preflight" requests
> too and it definitely helps. e.g. access-control-max-age 345600
>
> On Sun, Jun 15, 2025 at 9:53=E2=80=AFAM Nils Andreas Svee via Cake <
> cake@lists.bufferbloat.net> wrote:
>
>> Just tried it too: https://imgur.com/a/F2cNZd4, also getting A+ overall,
>> and "only" A for bidirectional.
>>
>> I seem to be getting a 200+ ms spike right at the beginning of the
>> baseline test, which skews the results.
>> This happened at least on a couple of tests, but after a few tries it go=
t
>> better. At least with ICMP ping separately I don't see any spikes like t=
hat.
>>
>> Best Regards
>> Nils
>>
>> On Sun, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow via
>> Bloat wrote:
>>
>> re: *thoughts and feedback!*
>>
>> your https://test.libreqos.com tests of [Single User Test] & [Virtual
>> Household Mode] both give yours truly bufferbloat grades of *A+ *
>>
>> whereas the https://www.waveform.com/tools/bufferbloat test gives yours
>> truly a bufferbloat brade grade of *C*
>>
>>
>> https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-4045-=
8e8b-ab3ab8b957c5
>>
>> #1.) Why/What's the difference?
>>
>> #2.) Who/Which one to believe=C2=BF
>>
>> g
>>
>>
>> On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik via Starlink <
>> starlink@lists.bufferbloat.net> wrote:
>>
>> Hello to all,
>>
>> We're excited to announce the release of the *LibreQoS Bufferbloat Test*
>> =E2=80=93 an open-source bufferbloat testing solution designed specifica=
lly for
>> ISPs and network operators to deploy for their customers.
>>
>> *Link*
>> https://test.libreqos.com
>>
>> *What Makes This Different*
>>
>> While there are several bufferbloat testing tools available, this
>> platform addresses a critical gap: ISP-deployable infrastructure that
>> provides both traditional testing and realistic household simulation.
>>
>> As Dave T=C3=A4ht highlighted in his influential article "What's Wrong w=
ith
>> Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditional
>> speed tests fail to measure what users actually experience. We tried to
>> address Dave's points to make a better speed test that focuses on the
>> metric that matters: latency under load in realistic usage scenarios.
>>
>> *Two Complementary Test Modes*
>>
>> *Single User Test Mode*
>>
>>    - Traditional sequential load testing (baseline =E2=86=92 download =
=E2=86=92 upload =E2=86=92
>>    bidirectional)
>>    - Measures working latency and jitter during each phase
>>    - Familiar A+ to F grading based on latency under load increases
>>    - Comparable to existing tools like DSLReports Speed Test and
>>    Waveform Bufferbloat Test
>>
>>
>> *Virtual Household Mode (The Innovation)*
>>
>> Process-isolated simulation of 4 concurrent users with authentic traffic
>> patterns:
>>
>>    - Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for competitive
>>    gaming
>>    - Sarah (Video Conference): 2.5 Mbps bidirectional, Teams simulation
>>    with working latency monitoring
>>    - Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic
>>    streaming patterns
>>    - Computer (Background): Up to 200 Mbps continuous download, system
>>    updates
>>
>>
>> Real-world relevance: Tests latency under load when multiple family
>> members are online simultaneously
>>
>> Advanced grading: Network fairness, jitter measurement, and per-user
>> working latency analysis
>>
>> *Why (not only) ISPs Need This*
>>
>> *The traditional approach of sending customers to third-party speed test
>> sites has limitations:*
>>
>>    - No control over test methodology or server placement
>>    - Limited correlation with customer support tickets
>>    - Generic results that don't reflect real-world usage patterns
>>    - No integration with ISP operational systems
>>
>> *This platform enables (not only) ISPs to:*
>>
>>    - Host their own testing infrastructure with full control
>>    - Integrate with support systems via telemetry APIs
>>    - Provide customers with realistic household testing scenarios
>>    - Correlate test results with network performance and customer
>>    complaints
>>
>>
>> *Open Source & Community*
>>
>> The entire platform is open source and available here:
>> https://github.com/LibreQoE/bufferbloat_test
>>
>> We've designed this to be:
>>
>>    - Easy to deploy for (not only) ISPs of any size
>>    - Scientifically meaningful in its measurement methodology
>>    - Realistic in its simulation of actual household usage
>>    - Integrable with existing ISP operational workflows
>>
>>
>>
>> *Community Feedback Requested*
>> We'd love feedback from the bufferbloat.net community on:
>>
>>    - Test methodology: Are we measuring the right metrics?
>>    - Grading thresholds: Do our A+ to F grades align with real-world
>>    impact?
>>    - Virtual household scenarios: What other realistic usage patterns
>>    should we simulate?
>>    - ISP adoption: What barriers exist for ISP deployment?
>>
>>
>>
>> *Technical Discussion*
>> We'd welcome discussion about:
>>
>>    - Measurement accuracy for working latency and jitter in virtual
>>    household mode
>>    - Traffic pattern authenticity (gaming, video conferencing, streaming=
)
>>    - Grading methodology for latency under load in complex multi-user
>>    scenarios
>>    - Integration approaches for ISP operational systems
>>
>>
>> The platform represents our attempt to bridge the gap between academic
>> bufferbloat research and practical ISP operations, building on the
>> foundational work of researchers like Dave T=C3=A4ht and the broader buf=
ferbloat
>> community. We believe that widespread ISP deployment of proper bufferblo=
at
>> testing infrastructure will ultimately benefit the entire internet
>> ecosystem.
>>
>>
>> *Looking forward to the community's thoughts and feedback!*
>> Best regards,
>>
>> The LibreQoS Team
>>
>>
>> *In loving memory of Dave T=C3=A4ht: *1965-2025
>>
>> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
>>
>>
>> https://www.linkedin.com/in/frantisekborsik
>>
>> Signal, Telegram, WhatsApp: +421919416714
>>
>> iMessage, mobile: +420775230885
>>
>> Skype: casioa5302ca
>>
>> frantisek.borsik@gmail.com
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>>
>>
>> --
>> Geoff.Goodfellow@iconia.com
>>
>> living as The Truth is True
>>
>> _______________________________________________
>> Bloat mailing list
>> Bloat@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/bloat
>>
>>
>> _______________________________________________
>> Cake mailing list
>> Cake@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/cake
>>
>
>
> --
> Regards,
> Dave Seddon
> +1 415 857 5102
>


--=20

ROBERT CHAC=C3=93N

FOUNDER

+1-915-730-1472

LibreQoS.com

--000000000000ac508f0637a01fb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nils,</div><div><br></div><div>I&#39;ve now fixed the=
 issue where the initial latency spike skews baseline results by switching =
to using 75th percentile for baseline calculation. Thanks for catching that=
.=C2=A0</div><div><br></div><div>Geoff,</div><div><br></div><div>I may have=
 fixed that now. Our Vultr VPS was hitting its bandwidth limit apparently, =
and they throttled it. Switched to hosting it locally in El Paso as fast as=
 I could. Now tests can achieve saturation throughput.</div><div><br></div>=
<div>Dave,</div><div><br></div><div>If you try it again does it still fail =
to ping currently?</div><div><br></div><div>Thanks,</div><div>Robert</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, Jun 15, 2025 at 11:32=E2=80=AFAM dave seddon &=
lt;<a href=3D"mailto:dave.seddon.ca@gmail.com">dave.seddon.ca@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>Very cool Frank!</div><div><br></div><div>When I run it, =
it says all of my latency is 0.0ms.=C2=A0 This is=C2=A0firefox-139.0.1=C2=
=A0on NixOS unstable.</div><div><br></div><div>I guess soem of the CORS=C2=
=A0headers are screwed up?</div><div></div><div>Cross-Origin Request Blocke=
d: The Same Origin Policy disallows reading the remote resource at <a href=
=3D"https://test-elp.libreqos.com:8005/ping?cb=3D242578" target=3D"_blank">=
https://test-elp.libreqos.com:8005/ping?cb=3D242578</a>. (Reason: CORS requ=
est did not succeed). Status code: (null).</div><div><br></div><div>I don&#=
39;t know, I guess you probably _do_ want these objects to be cacheable=C2=
=A0via the CDN?</div><div><br></div><div><span style=3D"font-family:monospa=
ce">GET /ping?cb=3D819806 HTTP/1.1<br>Host: <a href=3D"http://test-elp.libr=
eqos.com:8005" target=3D"_blank">test-elp.libreqos.com:8005</a><br>User-Age=
nt: Mozilla/5.0 (X11; Linux x86_64; rv:139.0) Gecko/20100101 Firefox/139.0<=
br>Accept: */*<br>Accept-Language: en-US,en;q=3D0.5<br>Accept-Encoding: gzi=
p, deflate, br, zstd<br><span style=3D"background-color:rgb(255,242,204)">P=
ragma: no-cache<br>Cache-Control: no-store, no-cache, must-revalidate</span=
><br>X-Priority: high<br>X-Ping-Attempt: 0<br>Referer: <a href=3D"https://t=
est.libreqos.com/" target=3D"_blank">https://test.libreqos.com/</a><br>Orig=
in: <a href=3D"https://test.libreqos.com" target=3D"_blank">https://test.li=
breqos.com</a><br>Connection: keep-alive<br>Sec-Fetch-Dest: empty<br>Sec-Fe=
tch-Mode: cors<br>Sec-Fetch-Site: same-site</span></div><div><br></div><div=
><span style=3D"font-family:monospace">HTTP/1.1 200 OK<br>date: Sun, 15 Jun=
 2025 17:13:55 GMT<br>server: uvicorn<br><span style=3D"background-color:rg=
b(255,242,204)">cache-control: no-store, no-cache, must-revalidate<br>pragm=
a: no-cache</span><br>x-ping-server: dedicated<br>x-priority-processed: tru=
e<br>x-ping-timeouts-seen: 0<br>content-length: 4<br>content-type: text/pla=
in; charset=3Dutf-8<br>access-control-allow-origin: *<br>access-control-all=
ow-credentials: true</span><br></div><div><br></div><div>Your Nginx server =
also can have caching enabled for the favorite icon, and the javascript, wh=
ich should make it faster to load.</div><div><br></div><div><span style=3D"=
font-family:monospace">HTTP/2 200 <br>server: nginx/1.18.0 (Ubuntu)<br>date=
: Sun, 15 Jun 2025 17:13:35 GMT<br>content-type: text/javascript; charset=
=3Dutf-8<br>vary: Accept-Encoding<br>last-modified: Tue, 10 Jun 2025 04:28:=
53 GMT<br>strict-transport-security: max-age=3D63072000<br>x-content-type-o=
ptions: nosniff<br>x-frame-options: SAMEORIGIN<br>content-encoding: gzip<br=
>X-Firefox-Spdy: h2</span></div><div><span style=3D"font-family:arial,sans-=
serif"><br></span></div><div><span style=3D"font-family:arial,sans-serif">I=
&#39;ve found that you can set the caching for the CORS &quot;preflight&quo=
t; requests too and it definitely helps. e.g.=C2=A0</span>access-control-ma=
x-age=C2=A0345600<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Sun, Jun 15, 2025 at 9:53=E2=80=AFAM Nils And=
reas Svee via Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=
=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><u></u><div><div>Just tried it too:=
=C2=A0<a href=3D"https://imgur.com/a/F2cNZd4" target=3D"_blank">https://img=
ur.com/a/F2cNZd4</a>, also getting A+ overall, and &quot;only&quot; A for b=
idirectional.</div><div><br></div><div>I seem to be getting a 200+ ms spike=
 right at the beginning of the baseline test, which skews the results.</div=
><div>This happened at least on a couple of tests, but after a few tries it=
 got better. At least with ICMP ping separately I don&#39;t see any spikes =
like that.</div><div><br></div><div id=3D"m_662637394944178619m_24470953835=
42085124sig44785538"><div>Best Regards</div><div>Nils</div></div><div><br><=
/div><div>On Sun, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow =
via Bloat wrote:</div><blockquote type=3D"cite" id=3D"m_662637394944178619m=
_2447095383542085124qt"><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=
=3D"font-family:verdana,sans-serif">re:=C2=A0<b>thoughts and feedback!</b><=
/span></div><div><span style=3D"font-family:verdana,sans-serif"></span><br>=
</div><div><span style=3D"font-family:verdana,sans-serif">your=C2=A0<a href=
=3D"https://test.libreqos.com/" target=3D"_blank">https://test.libreqos.com=
</a>=C2=A0tests of [Single User Test] &amp; [Virtual Household Mode] both g=
ive yours truly bufferbloat grades of <b>A+=C2=A0</b></span></div><div><spa=
n style=3D"font-family:verdana,sans-serif"></span><br></div><div><span styl=
e=3D"font-family:verdana,sans-serif">whereas the=C2=A0<a href=3D"https://ww=
w.waveform.com/tools/bufferbloat" target=3D"_blank">https://www.waveform.co=
m/tools/bufferbloat</a>=C2=A0test gives yours truly a bufferbloat brade gra=
de of <b>C</b></span></div><div><span style=3D"font-family:verdana,sans-ser=
if"></span><br></div><div><span style=3D"font-family:verdana,sans-serif"><a=
 href=3D"https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999=
-4045-8e8b-ab3ab8b957c5" target=3D"_blank">https://www.waveform.com/tools/b=
ufferbloat?test-id=3Db13810f2-e999-4045-8e8b-ab3ab8b957c5</a></span></div><=
div><span style=3D"font-family:verdana,sans-serif"></span><br></div><div><s=
pan style=3D"font-family:verdana,sans-serif">#1.) Why/What&#39;s the differ=
ence?</span></div><div><span style=3D"font-family:verdana,sans-serif"></spa=
n><br></div><div><span style=3D"font-family:verdana,sans-serif">#2.) Who/Wh=
ich one to believe=C2=BF</span></div><div><span style=3D"font-family:verdan=
a,sans-serif"></span><br></div><div><span style=3D"font-family:verdana,sans=
-serif">g</span></div><div style=3D"font-family:verdana,sans-serif;font-siz=
e:small"><br></div></div><div><br></div><div><div dir=3D"ltr">On Sun, Jun 1=
5, 2025 at 4:58=E2=80=AFAM Frantisek Borsik via Starlink &lt;<a href=3D"mai=
lto:starlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.buffer=
bloat.net</a>&gt; wrote:</div><blockquote style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div><div>Hello to all,</div><div><br></div><div>We&#39;re excited to annou=
nce the release of the <b>LibreQoS Bufferbloat Test</b> =E2=80=93 an open-s=
ource bufferbloat testing solution designed specifically for ISPs and netwo=
rk operators to deploy for their customers.</div><div><br></div><div><b>Lin=
k</b></div><div><a href=3D"https://test.libreqos.com" target=3D"_blank">htt=
ps://test.libreqos.com</a></div><div><br></div><div><b>What Makes This Diff=
erent</b></div><div><br></div><div>While there are several bufferbloat test=
ing tools available, this platform addresses a critical gap: ISP-deployable=
 infrastructure that provides both traditional testing and realistic househ=
old simulation.</div><div><br></div><div>As Dave T=C3=A4ht highlighted in h=
is influential article <a href=3D"https://blog.cerowrt.org/post/speedtests/=
" target=3D"_blank">&quot;What&#39;s Wrong with Speed Tests&quot;</a>, trad=
itional speed tests fail to measure what users actually experience. We trie=
d to address Dave&#39;s points to make a better speed test that focuses on =
the metric that matters: latency under load in realistic usage scenarios.</=
div><div><br></div><div><b>Two Complementary Test Modes</b></div><div><br><=
/div><div><i>Single User Test Mode</i></div><ul><li>Traditional sequential =
load testing (baseline =E2=86=92 download =E2=86=92 upload =E2=86=92 bidire=
ctional)</li><li>Measures working latency and jitter during each phase</li>=
<li>Familiar A+ to F grading based on latency under load increases</li><li>=
Comparable to existing tools like DSLReports Speed Test and Waveform Buffer=
bloat Test</li></ul><div><br></div><div><i>Virtual Household Mode (The Inno=
vation)</i></div><div><br></div><div>Process-isolated simulation of 4 concu=
rrent users with authentic traffic patterns:</div><ul><li>Alex (Gaming): 1.=
5 Mbps constant, jitter-sensitive for competitive gaming</li><li>Sarah (Vid=
eo Conference): 2.5 Mbps bidirectional, Teams simulation with working laten=
cy monitoring</li><li>Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), re=
alistic streaming patterns</li><li>Computer (Background): Up to 200 Mbps co=
ntinuous download, system updates</li></ul><div><br></div><div>Real-world r=
elevance: Tests latency under load when multiple family members are online =
simultaneously</div><div><br></div><div>Advanced grading: Network fairness,=
 jitter measurement, and per-user working latency analysis</div><div><br></=
div><div><b>Why (not only) ISPs Need This</b></div><div><br></div><div><i>T=
he traditional approach of sending customers to third-party speed test site=
s has limitations:</i></div><ul><li>No control over test methodology or ser=
ver placement</li><li>Limited correlation with customer support tickets</li=
><li>Generic results that don&#39;t reflect real-world usage patterns</li><=
li>No integration with ISP operational systems</li></ul><div><i>This platfo=
rm enables (not only) ISPs to:</i></div><ul><li>Host their own testing infr=
astructure with full control</li><li>Integrate with support systems via tel=
emetry APIs</li><li>Provide customers with realistic household testing scen=
arios</li><li>Correlate test results with network performance and customer =
complaints</li></ul><div><br></div><div><b>Open Source &amp; Community</b><=
/div><div><br></div><div>The entire platform is open source and available h=
ere: <a href=3D"https://github.com/LibreQoE/bufferbloat_test" target=3D"_bl=
ank">https://github.com/LibreQoE/bufferbloat_test</a></div><div><br></div><=
div>We&#39;ve designed this to be:</div><ul><li>Easy to deploy for (not onl=
y) ISPs of any size</li><li>Scientifically meaningful in its measurement me=
thodology</li><li>Realistic in its simulation of actual household usage</li=
><li>Integrable with existing ISP operational workflows</li></ul><div><br><=
/div><div><b>Community Feedback Requested<br></b></div><div>We&#39;d love f=
eedback from the <a href=3D"http://bufferbloat.net" target=3D"_blank">buffe=
rbloat.net</a> community on:</div><ul><li>Test methodology: Are we measurin=
g the right metrics?</li><li>Grading thresholds: Do our A+ to F grades alig=
n with real-world impact?</li><li>Virtual household scenarios: What other r=
ealistic usage patterns should we simulate?</li><li>ISP adoption: What barr=
iers exist for ISP deployment?</li></ul><div><br></div><div><b>Technical Di=
scussion<br></b></div><div>We&#39;d welcome discussion about:</div><ul><li>=
Measurement accuracy for working latency and jitter in virtual household mo=
de</li><li>Traffic pattern authenticity (gaming, video conferencing, stream=
ing)</li><li>Grading methodology for latency under load in complex multi-us=
er scenarios</li><li>Integration approaches for ISP operational systems</li=
></ul><div><br></div><div>The platform represents our attempt to bridge the=
 gap between academic bufferbloat research and practical ISP operations, bu=
ilding on the foundational work of researchers like Dave T=C3=A4ht and the =
broader bufferbloat community. We believe that widespread ISP deployment of=
 proper bufferbloat testing infrastructure will ultimately benefit the enti=
re internet ecosystem.</div><div><br></div><div><b>Looking forward to the c=
ommunity&#39;s thoughts and feedback!<br></b></div><div>Best regards,</div>=
<div><br></div><div>The LibreQoS Team</div></div><div><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><p style=3D"c=
olor:rgb(34,34,34)"><br></p><p style=3D"color:rgb(34,34,34)"><b><u></u>In l=
oving memory of Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:rgb(32,33,36)=
">1965-2025</span></p><p style=3D"color:rgb(34,34,34)"><u></u><a href=3D"ht=
tps://libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">h=
ttps://libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p style=3D"=
color:rgb(34,34,34)"><br></p><p style=3D"color:rgb(34,34,34)"><a href=3D"ht=
tps://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" t=
arget=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u><=
/u></p><p style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919=
416714=C2=A0<u></u><u></u></p><p style=3D"color:rgb(34,34,34)">iMessage, mo=
bile: +420775230885<u></u><u></u></p><p style=3D"color:rgb(34,34,34)">Skype=
: casioa5302ca<u></u><u></u></p><p style=3D"color:rgb(34,34,34)"><a href=3D=
"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div=
></div></div></div></div></div></div></div><div>___________________________=
____________________</div><div> Starlink mailing list</div><div> <a href=3D=
"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlink@lists.bu=
fferbloat.net</a></div><div> <a href=3D"https://lists.bufferbloat.net/listi=
nfo/starlink" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloa=
t.net/listinfo/starlink</a></div></blockquote></div><div><br></div><div><br=
></div><div><span>--</span></div><div dir=3D"ltr"><div dir=3D"ltr"><div><sp=
an style=3D"color:rgb(136,136,136)"><span style=3D"color:rgb(136,136,136)">=
<span style=3D"font-family:verdana,sans-serif"><a href=3D"mailto:Geoff.Good=
fellow@iconia.com" target=3D"_blank">Geoff.Goodfellow@iconia.com</a></span>=
</span></span></div><span style=3D"color:rgb(136,136,136)"><div><br></div><=
div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif;display:inline=
">living as The Truth is True</div></div><div><div style=3D"font-family:ver=
dana,sans-serif;display:inline"><br></div></div></span></div></div></div><d=
iv>_______________________________________________</div><div>Bloat mailing =
list</div><div><a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_bl=
ank">Bloat@lists.bufferbloat.net</a></div><div><a href=3D"https://lists.buf=
ferbloat.net/listinfo/bloat" target=3D"_blank">https://lists.bufferbloat.ne=
t/listinfo/bloat</a></div><div><br></div></blockquote><div><br></div></div>=
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br=
></div>Dave Seddon<br>+1 415 857 5102<br></div></div></div></div></div></di=
v>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><br><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
style=3D"border-collapse:separate;table-layout:fixed;word-break:break-word"=
 width=3D"100%"><tbody><tr><td style=3D"width:100%"><table cellspacing=3D"0=
" cellpadding=3D"0" border=3D"0" style=3D"border-collapse:separate;table-la=
yout:fixed;word-break:break-word" width=3D"400"><tbody><tr><td style=3D"pad=
ding:0px 20px 0px 0px;vertical-align:middle;width:260px;font-family:Tahoma,=
Verdana,Segoe,sans-serif" width=3D"260"><table cellspacing=3D"0" cellpaddin=
g=3D"0" border=3D"0" style=3D"border-collapse:separate;table-layout:fixed;w=
ord-break:break-word" width=3D"100%"><tbody><tr><td style=3D"color:rgb(74,1=
08,151);font-size:16px;line-height:19px;font-family:Tahoma,Verdana,Segoe,sa=
ns-serif"><p style=3D"margin:0.1px"><span style=3D"font-weight:bold">ROBERT=
 CHAC=C3=93N</span></p></td></tr><tr><td style=3D"color:rgb(74,108,151);fon=
t-size:13px;line-height:16px;font-family:Tahoma,Verdana,Segoe,sans-serif"><=
p style=3D"margin:0.1px"><span style=3D"color:rgb(162,162,162);font-size:11=
px;letter-spacing:2px">FOUNDER</span></p></td></tr><tr><td style=3D"color:r=
gb(74,108,151);font-size:13px;line-height:16px;padding-top:6px;font-family:=
Tahoma,Verdana,Segoe,sans-serif"><p style=3D"margin:0.1px"><a href=3D"tel:+=
1-915-730-1472" style=3D"color:rgb(74,108,151);text-decoration:none" target=
=3D"_blank">+1-915-730-1472</a></p></td></tr><tr><td style=3D"color:rgb(74,=
108,151);font-size:13px;line-height:16px;font-family:Tahoma,Verdana,Segoe,s=
ans-serif"><p style=3D"margin:0.1px"><span style=3D"font-weight:bold"><a hr=
ef=3D"https://LibreQoS.com" style=3D"color:rgb(74,108,151);text-decoration:=
none" target=3D"_blank">LibreQoS.com</a></span></p></td></tr></tbody></tabl=
e></td><td style=3D"padding:0px 0px 0px 20px;vertical-align:middle;width:97=
px;font-family:Tahoma,Verdana,Segoe,sans-serif;border-left:3px solid rgb(23=
8,238,238)" width=3D"97"><table cellspacing=3D"0" cellpadding=3D"0" border=
=3D"0" style=3D"border-collapse:separate;table-layout:fixed;word-break:brea=
k-word" width=3D"100%"><tbody><tr><td style=3D"color:rgb(74,108,151);font-s=
ize:13px;height:90px;font-family:Tahoma,Verdana,Segoe,sans-serif"><p style=
=3D"margin:0.1px"><img src=3D"https://jackrabbitwi.img.email/images/67b982c=
b7c89c.png" width=3D"150" height=3D"90" style=3D"display: block; border: 0p=
x;" border=3D"0" alt=3D""></p></td></tr></tbody></table></td></tr></tbody><=
/table></td></tr></tbody></table><br></div></div>

--000000000000ac508f0637a01fb3--

--===============5151434269583842545==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5151434269583842545==--
