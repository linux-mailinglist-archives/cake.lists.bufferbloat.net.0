Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 57969ADA2CC
	for <lists+cake@lfdr.de>; Sun, 15 Jun 2025 19:32:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4561D3CB43;
	Sun, 15 Jun 2025 13:32:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750008753;
	bh=rSBWFMnLPz5mwfNvYca8Vqsn9EBAOLdVFkWtTK2mW04=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=DKfoQwcZCQqMkxt0InMY6ft3Yrkfl0wMeGcKzphvsQtFahSwX+q6K37eW6xKjXsre
	 sDUJIls59l9c27J+5BdMXAFU3y1Xp13bpN5gSqaE8VBCAS3RquTWRhghefbHj+Mhha
	 bPUlSygn4k85hVwP0UGFd/NuaP7rPV99ybYI4yVHcnbEyTO+R6foUmtoU8TaLRp+29
	 IHXR/bmo/eQu6DB+wQF2gCcjdwGA28t69SKw27V5XvFnii7inCgL2qdEnRsnrpbkX7
	 kNxC5kTOJt+Muks0jSTuiNCC1CiA0WAxjKbVBbjHWnWzOnUGDOfVnFDgCP6tohqkVp
	 ES7gDfTslBeHQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A012A3B29D;
 Sun, 15 Jun 2025 13:32:32 -0400 (EDT)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-60789b450ceso7326198a12.2; 
 Sun, 15 Jun 2025 10:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750008751; x=1750613551; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TWSiyTXC/bMo6OOmFvCEdPbfvuzBZZi05ESlskSWEaQ=;
 b=cMJRC0aVIhgOsCA0VKxBXvVCv4MmDUTneHC83NUoX+k5oFHbzz9fh5EsCxWgZY6bFl
 YYqv4crwOTTf7KKmeFEm0FIlVauiTP+2YzO3gxff7LRvpWbNAydNz00K4ZwfFUkuh0S4
 7MvMG6vONT/2Bml8MEA9NhXlAtMbkYfsWlJcBqdBy0Sn+GeHzardgRBgZ8OEBwlYrht0
 FewmToTAFk7aFQ+eai9efv6toJj1fiREiWB4wW5pWyHWb2q7P/JJuKDX9jC4iQuwyM9Q
 9xr9qx1w0bieVARMmRZaP9xwq+vmeolS94Won+k31oOig7rtEugoK6ynNUE1CDnev/B9
 04sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750008751; x=1750613551;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TWSiyTXC/bMo6OOmFvCEdPbfvuzBZZi05ESlskSWEaQ=;
 b=SPIF4ZRJDNEGUnGnYdLe7hwzUrPO35AddBbbwgdZJAxnNEV9amL6Nl7JVzFv0JBpOX
 gDraO8kjffDvHRRrX0w28s4tpZu9tLGaB74MkeicXJWVlMuvs8ws38ODUmgBlm+PaB8K
 c2pNmNbiC72Y/66Oj50+XZSSczJmt/C2VDr5XULl/qXiwTxCGRoYPBt7TpDV1O/38WjQ
 /+a7wEgbF5e1b5cCwh759k2xZUqHNEy+YtQikYMszUcGu5wetmdrjS18NTjObsef1DXd
 Op6Q2K/TLB230LdU6i5GmcggtLyC0rFQt+aYL/0FZUTThfn4bWZQNzG4ifwGHkLbQP0x
 4rKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTRniVmAyta0XlY4P84JDAsbLdOLcDmqWZKSCJQIom9fTFApQuQ6JKyIYNmCnvtWAeiE/e@lists.bufferbloat.net,
 AJvYcCUeMrWMwovUfUc3mg8PnREYs8HvFAwXt4zgMs7K4hGLX2Q1JUhFwhAsGaB3zGN9dHdH8OaIDg==@lists.bufferbloat.net,
 AJvYcCVJa8I3Vrdd++ZLZw2kv6amunhndeJLLxVrYpiX8QsSxDhwGGp4uS9VDYsgjaHkK7p0wmngOdI=@lists.bufferbloat.net,
 AJvYcCVal70i1aZrfOjBVB835KLPhotqU3p0r7DnvO765qD9YKQhYjp7fI04R9h3xrK3gVzs2YHgBd4=@lists.bufferbloat.net,
 AJvYcCWAff9eA2bU2QL8pJ5QhY7GILEpoooTaw+M4S61zdzXrfdaaWx+0ACBJynahEpiYuSk5ryH/qeObFE=@lists.bufferbloat.net,
 AJvYcCWgNT84/2eOua8ZGRxaoram3wf2BRQZVDRDw4ncKLq51JkWoJNREuAwJStQQiJvuVEzfX1hKuPXMm/L@lists.bufferbloat.net,
 AJvYcCXhRjOjsA3XOux6J8YG9i8C9uYMX/DPra+jXrDtabOfrGHncgZ+GNw/CYY9R6ncp40DPYj7EuHsFXo=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzY7krPzgv2BtdYfDUBkTagZqkzAq0Mz+JE+O1ORCwX0eMCeJEe
 8P+M7Pskc0n4b9hyqXBnKo0I0vGryyGTuEsY1JsDC0ucQWLjiGx1mrTJRdrGSTSSPvT0mpQw5dz
 j1z+l3pXrrByiRxHPSxbNcXtqueACIhU=
X-Gm-Gg: ASbGncvm2KFYKgyS3YR8hX+dWtmdSEGkB8qjWnmtbo7PJXDh4tH72HKsEVALHM+Bn9G
 daIaaCuBKgq8kkkBlPFy+PY73KJKj7qSFz3A7Um0nLoCmNBYA8XCS9Onpz4B+wX783luSe09Ufm
 v9T88ZIVB+yBSRiD6oNwoUVES8TOjPKIRHRoYLk3U3kQAPiqnVf5Bdm0dFlbONMN5CrnIy3mjJF
 cX1GA==
X-Google-Smtp-Source: AGHT+IE9xriEMcHT5M7tkgIozpCF1KRXQJqNeKsieRSQAe2WeviMCHGH4X2bhJbrqEZWCJ/q/9QeQvJb668vg9lEVCs=
X-Received: by 2002:a17:907:e8e:b0:ad8:99e6:80bb with SMTP id
 a640c23a62f3a-adfad3ebccamr623703666b.1.1750008751221; Sun, 15 Jun 2025
 10:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
 <CAEf-zriqpW5Feyj-eRBiX7xiozy43n5Gkr7CvrjVYT-+RwvgfQ@mail.gmail.com>
 <6684dff4-c2a1-4f41-be9a-71162f256031@app.fastmail.com>
In-Reply-To: <6684dff4-c2a1-4f41-be9a-71162f256031@app.fastmail.com>
Date: Sun, 15 Jun 2025 10:32:20 -0700
X-Gm-Features: AX0GCFsYuykezI2B7rDHZmEjvdmtW9lcwRJpduhe6jy6BLqDcXihc9ceHTxYfz4
Message-ID: <CANypexSrrU_y+UrejFgsUbK3TA_rfpM3XfrdvM+qkm=aHVyKfA@mail.gmail.com>
To: Nils Andreas Svee <me@lochnair.net>
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Cc: Jeremy Austin <rpm@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 the keyboard of geoff goodfellow <geoff@iconia.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht <starlink@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============8563958913808775042=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8563958913808775042==
Content-Type: multipart/alternative; boundary="000000000000f86f6506379fa9f3"

--000000000000f86f6506379fa9f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very cool Frank!

When I run it, it says all of my latency is 0.0ms.  This
is firefox-139.0.1 on NixOS unstable.

I guess soem of the CORS headers are screwed up?
Cross-Origin Request Blocked: The Same Origin Policy disallows reading the
remote resource at https://test-elp.libreqos.com:8005/ping?cb=3D242578.
(Reason: CORS request did not succeed). Status code: (null).

I don't know, I guess you probably _do_ want these objects to be
cacheable via the CDN?

GET /ping?cb=3D819806 HTTP/1.1
Host: test-elp.libreqos.com:8005
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:139.0) Gecko/20100101
Firefox/139.0
Accept: */*
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate, br, zstd
Pragma: no-cache
Cache-Control: no-store, no-cache, must-revalidate
X-Priority: high
X-Ping-Attempt: 0
Referer: https://test.libreqos.com/
Origin: https://test.libreqos.com
Connection: keep-alive
Sec-Fetch-Dest: empty
Sec-Fetch-Mode: cors
Sec-Fetch-Site: same-site

HTTP/1.1 200 OK
date: Sun, 15 Jun 2025 17:13:55 GMT
server: uvicorn
cache-control: no-store, no-cache, must-revalidate
pragma: no-cache
x-ping-server: dedicated
x-priority-processed: true
x-ping-timeouts-seen: 0
content-length: 4
content-type: text/plain; charset=3Dutf-8
access-control-allow-origin: *
access-control-allow-credentials: true

Your Nginx server also can have caching enabled for the favorite icon, and
the javascript, which should make it faster to load.

HTTP/2 200
server: nginx/1.18.0 (Ubuntu)
date: Sun, 15 Jun 2025 17:13:35 GMT
content-type: text/javascript; charset=3Dutf-8
vary: Accept-Encoding
last-modified: Tue, 10 Jun 2025 04:28:53 GMT
strict-transport-security: max-age=3D63072000
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
content-encoding: gzip
X-Firefox-Spdy: h2

I've found that you can set the caching for the CORS "preflight" requests
too and it definitely helps. e.g. access-control-max-age 345600

On Sun, Jun 15, 2025 at 9:53=E2=80=AFAM Nils Andreas Svee via Cake <
cake@lists.bufferbloat.net> wrote:

> Just tried it too: https://imgur.com/a/F2cNZd4, also getting A+ overall,
> and "only" A for bidirectional.
>
> I seem to be getting a 200+ ms spike right at the beginning of the
> baseline test, which skews the results.
> This happened at least on a couple of tests, but after a few tries it got
> better. At least with ICMP ping separately I don't see any spikes like th=
at.
>
> Best Regards
> Nils
>
> On Sun, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow via Bloa=
t
> wrote:
>
> re: *thoughts and feedback!*
>
> your https://test.libreqos.com tests of [Single User Test] & [Virtual
> Household Mode] both give yours truly bufferbloat grades of *A+ *
>
> whereas the https://www.waveform.com/tools/bufferbloat test gives yours
> truly a bufferbloat brade grade of *C*
>
>
> https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-4045-8=
e8b-ab3ab8b957c5
>
> #1.) Why/What's the difference?
>
> #2.) Who/Which one to believe=C2=BF
>
> g
>
>
> On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frantisek Borsik via Starlink <
> starlink@lists.bufferbloat.net> wrote:
>
> Hello to all,
>
> We're excited to announce the release of the *LibreQoS Bufferbloat Test*
> =E2=80=93 an open-source bufferbloat testing solution designed specifical=
ly for
> ISPs and network operators to deploy for their customers.
>
> *Link*
> https://test.libreqos.com
>
> *What Makes This Different*
>
> While there are several bufferbloat testing tools available, this platfor=
m
> addresses a critical gap: ISP-deployable infrastructure that provides bot=
h
> traditional testing and realistic household simulation.
>
> As Dave T=C3=A4ht highlighted in his influential article "What's Wrong wi=
th
> Speed Tests" <https://blog.cerowrt.org/post/speedtests/>, traditional
> speed tests fail to measure what users actually experience. We tried to
> address Dave's points to make a better speed test that focuses on the
> metric that matters: latency under load in realistic usage scenarios.
>
> *Two Complementary Test Modes*
>
> *Single User Test Mode*
>
>    - Traditional sequential load testing (baseline =E2=86=92 download =E2=
=86=92 upload =E2=86=92
>    bidirectional)
>    - Measures working latency and jitter during each phase
>    - Familiar A+ to F grading based on latency under load increases
>    - Comparable to existing tools like DSLReports Speed Test and Waveform
>    Bufferbloat Test
>
>
> *Virtual Household Mode (The Innovation)*
>
> Process-isolated simulation of 4 concurrent users with authentic traffic
> patterns:
>
>    - Alex (Gaming): 1.5 Mbps constant, jitter-sensitive for competitive
>    gaming
>    - Sarah (Video Conference): 2.5 Mbps bidirectional, Teams simulation
>    with working latency monitoring
>    - Jake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic
>    streaming patterns
>    - Computer (Background): Up to 200 Mbps continuous download, system
>    updates
>
>
> Real-world relevance: Tests latency under load when multiple family
> members are online simultaneously
>
> Advanced grading: Network fairness, jitter measurement, and per-user
> working latency analysis
>
> *Why (not only) ISPs Need This*
>
> *The traditional approach of sending customers to third-party speed test
> sites has limitations:*
>
>    - No control over test methodology or server placement
>    - Limited correlation with customer support tickets
>    - Generic results that don't reflect real-world usage patterns
>    - No integration with ISP operational systems
>
> *This platform enables (not only) ISPs to:*
>
>    - Host their own testing infrastructure with full control
>    - Integrate with support systems via telemetry APIs
>    - Provide customers with realistic household testing scenarios
>    - Correlate test results with network performance and customer
>    complaints
>
>
> *Open Source & Community*
>
> The entire platform is open source and available here:
> https://github.com/LibreQoE/bufferbloat_test
>
> We've designed this to be:
>
>    - Easy to deploy for (not only) ISPs of any size
>    - Scientifically meaningful in its measurement methodology
>    - Realistic in its simulation of actual household usage
>    - Integrable with existing ISP operational workflows
>
>
>
> *Community Feedback Requested*
> We'd love feedback from the bufferbloat.net community on:
>
>    - Test methodology: Are we measuring the right metrics?
>    - Grading thresholds: Do our A+ to F grades align with real-world
>    impact?
>    - Virtual household scenarios: What other realistic usage patterns
>    should we simulate?
>    - ISP adoption: What barriers exist for ISP deployment?
>
>
>
> *Technical Discussion*
> We'd welcome discussion about:
>
>    - Measurement accuracy for working latency and jitter in virtual
>    household mode
>    - Traffic pattern authenticity (gaming, video conferencing, streaming)
>    - Grading methodology for latency under load in complex multi-user
>    scenarios
>    - Integration approaches for ISP operational systems
>
>
> The platform represents our attempt to bridge the gap between academic
> bufferbloat research and practical ISP operations, building on the
> foundational work of researchers like Dave T=C3=A4ht and the broader buff=
erbloat
> community. We believe that widespread ISP deployment of proper bufferbloa=
t
> testing infrastructure will ultimately benefit the entire internet
> ecosystem.
>
>
> *Looking forward to the community's thoughts and feedback!*
> Best regards,
>
> The LibreQoS Team
>
>
> *In loving memory of Dave T=C3=A4ht: *1965-2025
>
> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
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
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>
>
>
> --
> Geoff.Goodfellow@iconia.com
>
> living as The Truth is True
>
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000f86f6506379fa9f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Very cool Frank!</div><div><br></div><div>When I run =
it, it says all of my latency is 0.0ms.=C2=A0 This is=C2=A0firefox-139.0.1=
=C2=A0on NixOS unstable.</div><div><br></div><div>I guess soem of the CORS=
=C2=A0headers are screwed up?</div><div></div><div>Cross-Origin Request Blo=
cked: The Same Origin Policy disallows reading the remote resource at <a hr=
ef=3D"https://test-elp.libreqos.com:8005/ping?cb=3D242578">https://test-elp=
.libreqos.com:8005/ping?cb=3D242578</a>. (Reason: CORS request did not succ=
eed). Status code: (null).</div><div><br></div><div>I don&#39;t know, I gue=
ss you probably _do_ want these objects to be cacheable=C2=A0via the CDN?</=
div><div><br></div><div><span style=3D"font-family:monospace">GET /ping?cb=
=3D819806 HTTP/1.1<br>Host: <a href=3D"http://test-elp.libreqos.com:8005">t=
est-elp.libreqos.com:8005</a><br>User-Agent: Mozilla/5.0 (X11; Linux x86_64=
; rv:139.0) Gecko/20100101 Firefox/139.0<br>Accept: */*<br>Accept-Language:=
 en-US,en;q=3D0.5<br>Accept-Encoding: gzip, deflate, br, zstd<br><span styl=
e=3D"background-color:rgb(255,242,204)">Pragma: no-cache<br>Cache-Control: =
no-store, no-cache, must-revalidate</span><br>X-Priority: high<br>X-Ping-At=
tempt: 0<br>Referer: <a href=3D"https://test.libreqos.com/">https://test.li=
breqos.com/</a><br>Origin: <a href=3D"https://test.libreqos.com">https://te=
st.libreqos.com</a><br>Connection: keep-alive<br>Sec-Fetch-Dest: empty<br>S=
ec-Fetch-Mode: cors<br>Sec-Fetch-Site: same-site</span></div><div><br></div=
><div><span style=3D"font-family:monospace">HTTP/1.1 200 OK<br>date: Sun, 1=
5 Jun 2025 17:13:55 GMT<br>server: uvicorn<br><span style=3D"background-col=
or:rgb(255,242,204)">cache-control: no-store, no-cache, must-revalidate<br>=
pragma: no-cache</span><br>x-ping-server: dedicated<br>x-priority-processed=
: true<br>x-ping-timeouts-seen: 0<br>content-length: 4<br>content-type: tex=
t/plain; charset=3Dutf-8<br>access-control-allow-origin: *<br>access-contro=
l-allow-credentials: true</span><br></div><div><br></div><div>Your Nginx se=
rver also can have caching enabled for the favorite icon, and the javascrip=
t, which should make it faster to load.</div><div><br></div><div><span styl=
e=3D"font-family:monospace">HTTP/2 200 <br>server: nginx/1.18.0 (Ubuntu)<br=
>date: Sun, 15 Jun 2025 17:13:35 GMT<br>content-type: text/javascript; char=
set=3Dutf-8<br>vary: Accept-Encoding<br>last-modified: Tue, 10 Jun 2025 04:=
28:53 GMT<br>strict-transport-security: max-age=3D63072000<br>x-content-typ=
e-options: nosniff<br>x-frame-options: SAMEORIGIN<br>content-encoding: gzip=
<br>X-Firefox-Spdy: h2</span></div><div><span style=3D"font-family:arial,sa=
ns-serif"><br></span></div><div><span style=3D"font-family:arial,sans-serif=
">I&#39;ve found that you can set the caching for the CORS &quot;preflight&=
quot; requests too and it definitely helps. e.g.=C2=A0</span>access-control=
-max-age=C2=A0345600<br></div></div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 15, 2025 at=
 9:53=E2=80=AFAM Nils Andreas Svee via Cake &lt;<a href=3D"mailto:cake@list=
s.bufferbloat.net">cake@lists.bufferbloat.net</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><u></u><div><div>Just tried it=
 too:=C2=A0<a href=3D"https://imgur.com/a/F2cNZd4" target=3D"_blank">https:=
//imgur.com/a/F2cNZd4</a>, also getting A+ overall, and &quot;only&quot; A =
for bidirectional.</div><div><br></div><div>I seem to be getting a 200+ ms =
spike right at the beginning of the baseline test, which skews the results.=
</div><div>This happened at least on a couple of tests, but after a few tri=
es it got better. At least with ICMP ping separately I don&#39;t see any sp=
ikes like that.</div><div><br></div><div id=3D"m_2447095383542085124sig4478=
5538"><div>Best Regards</div><div>Nils</div></div><div><br></div><div>On Su=
n, Jun 15, 2025, at 23:20, the keyboard of geoff goodfellow via Bloat wrote=
:</div><blockquote type=3D"cite" id=3D"m_2447095383542085124qt"><div dir=3D=
"ltr"><div dir=3D"ltr"><div><span style=3D"font-family:verdana,sans-serif">=
re:=C2=A0<b>thoughts and feedback!</b></span></div><div><span style=3D"font=
-family:verdana,sans-serif"></span><br></div><div><span style=3D"font-famil=
y:verdana,sans-serif">your=C2=A0<a href=3D"https://test.libreqos.com/" targ=
et=3D"_blank">https://test.libreqos.com</a>=C2=A0tests of [Single User Test=
] &amp; [Virtual Household Mode] both give yours truly bufferbloat grades o=
f <b>A+=C2=A0</b></span></div><div><span style=3D"font-family:verdana,sans-=
serif"></span><br></div><div><span style=3D"font-family:verdana,sans-serif"=
>whereas the=C2=A0<a href=3D"https://www.waveform.com/tools/bufferbloat" ta=
rget=3D"_blank">https://www.waveform.com/tools/bufferbloat</a>=C2=A0test gi=
ves yours truly a bufferbloat brade grade of <b>C</b></span></div><div><spa=
n style=3D"font-family:verdana,sans-serif"></span><br></div><div><span styl=
e=3D"font-family:verdana,sans-serif"><a href=3D"https://www.waveform.com/to=
ols/bufferbloat?test-id=3Db13810f2-e999-4045-8e8b-ab3ab8b957c5" target=3D"_=
blank">https://www.waveform.com/tools/bufferbloat?test-id=3Db13810f2-e999-4=
045-8e8b-ab3ab8b957c5</a></span></div><div><span style=3D"font-family:verda=
na,sans-serif"></span><br></div><div><span style=3D"font-family:verdana,san=
s-serif">#1.) Why/What&#39;s the difference?</span></div><div><span style=
=3D"font-family:verdana,sans-serif"></span><br></div><div><span style=3D"fo=
nt-family:verdana,sans-serif">#2.) Who/Which one to believe=C2=BF</span></d=
iv><div><span style=3D"font-family:verdana,sans-serif"></span><br></div><di=
v><span style=3D"font-family:verdana,sans-serif">g</span></div><div style=
=3D"font-family:verdana,sans-serif;font-size:small"><br></div></div><div><b=
r></div><div><div dir=3D"ltr">On Sun, Jun 15, 2025 at 4:58=E2=80=AFAM Frant=
isek Borsik via Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.n=
et" target=3D"_blank">starlink@lists.bufferbloat.net</a>&gt; wrote:</div><b=
lockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Hello to all,</div><di=
v><br></div><div>We&#39;re excited to announce the release of the <b>LibreQ=
oS Bufferbloat Test</b> =E2=80=93 an open-source bufferbloat testing soluti=
on designed specifically for ISPs and network operators to deploy for their=
 customers.</div><div><br></div><div><b>Link</b></div><div><a href=3D"https=
://test.libreqos.com" target=3D"_blank">https://test.libreqos.com</a></div>=
<div><br></div><div><b>What Makes This Different</b></div><div><br></div><d=
iv>While there are several bufferbloat testing tools available, this platfo=
rm addresses a critical gap: ISP-deployable infrastructure that provides bo=
th traditional testing and realistic household simulation.</div><div><br></=
div><div>As Dave T=C3=A4ht highlighted in his influential article <a href=
=3D"https://blog.cerowrt.org/post/speedtests/" target=3D"_blank">&quot;What=
&#39;s Wrong with Speed Tests&quot;</a>, traditional speed tests fail to me=
asure what users actually experience. We tried to address Dave&#39;s points=
 to make a better speed test that focuses on the metric that matters: laten=
cy under load in realistic usage scenarios.</div><div><br></div><div><b>Two=
 Complementary Test Modes</b></div><div><br></div><div><i>Single User Test =
Mode</i></div><ul><li>Traditional sequential load testing (baseline =E2=86=
=92 download =E2=86=92 upload =E2=86=92 bidirectional)</li><li>Measures wor=
king latency and jitter during each phase</li><li>Familiar A+ to F grading =
based on latency under load increases</li><li>Comparable to existing tools =
like DSLReports Speed Test and Waveform Bufferbloat Test</li></ul><div><br>=
</div><div><i>Virtual Household Mode (The Innovation)</i></div><div><br></d=
iv><div>Process-isolated simulation of 4 concurrent users with authentic tr=
affic patterns:</div><ul><li>Alex (Gaming): 1.5 Mbps constant, jitter-sensi=
tive for competitive gaming</li><li>Sarah (Video Conference): 2.5 Mbps bidi=
rectional, Teams simulation with working latency monitoring</li><li>Jake (N=
etflix HD): 25 Mbps bursts (1s on, 4s off), realistic streaming patterns</l=
i><li>Computer (Background): Up to 200 Mbps continuous download, system upd=
ates</li></ul><div><br></div><div>Real-world relevance: Tests latency under=
 load when multiple family members are online simultaneously</div><div><br>=
</div><div>Advanced grading: Network fairness, jitter measurement, and per-=
user working latency analysis</div><div><br></div><div><b>Why (not only) IS=
Ps Need This</b></div><div><br></div><div><i>The traditional approach of se=
nding customers to third-party speed test sites has limitations:</i></div><=
ul><li>No control over test methodology or server placement</li><li>Limited=
 correlation with customer support tickets</li><li>Generic results that don=
&#39;t reflect real-world usage patterns</li><li>No integration with ISP op=
erational systems</li></ul><div><i>This platform enables (not only) ISPs to=
:</i></div><ul><li>Host their own testing infrastructure with full control<=
/li><li>Integrate with support systems via telemetry APIs</li><li>Provide c=
ustomers with realistic household testing scenarios</li><li>Correlate test =
results with network performance and customer complaints</li></ul><div><br>=
</div><div><b>Open Source &amp; Community</b></div><div><br></div><div>The =
entire platform is open source and available here: <a href=3D"https://githu=
b.com/LibreQoE/bufferbloat_test" target=3D"_blank">https://github.com/Libre=
QoE/bufferbloat_test</a></div><div><br></div><div>We&#39;ve designed this t=
o be:</div><ul><li>Easy to deploy for (not only) ISPs of any size</li><li>S=
cientifically meaningful in its measurement methodology</li><li>Realistic i=
n its simulation of actual household usage</li><li>Integrable with existing=
 ISP operational workflows</li></ul><div><br></div><div><b>Community Feedba=
ck Requested<br></b></div><div>We&#39;d love feedback from the <a href=3D"h=
ttp://bufferbloat.net" target=3D"_blank">bufferbloat.net</a> community on:<=
/div><ul><li>Test methodology: Are we measuring the right metrics?</li><li>=
Grading thresholds: Do our A+ to F grades align with real-world impact?</li=
><li>Virtual household scenarios: What other realistic usage patterns shoul=
d we simulate?</li><li>ISP adoption: What barriers exist for ISP deployment=
?</li></ul><div><br></div><div><b>Technical Discussion<br></b></div><div>We=
&#39;d welcome discussion about:</div><ul><li>Measurement accuracy for work=
ing latency and jitter in virtual household mode</li><li>Traffic pattern au=
thenticity (gaming, video conferencing, streaming)</li><li>Grading methodol=
ogy for latency under load in complex multi-user scenarios</li><li>Integrat=
ion approaches for ISP operational systems</li></ul><div><br></div><div>The=
 platform represents our attempt to bridge the gap between academic bufferb=
loat research and practical ISP operations, building on the foundational wo=
rk of researchers like Dave T=C3=A4ht and the broader bufferbloat community=
. We believe that widespread ISP deployment of proper bufferbloat testing i=
nfrastructure will ultimately benefit the entire internet ecosystem.</div><=
div><br></div><div><b>Looking forward to the community&#39;s thoughts and f=
eedback!<br></b></div><div>Best regards,</div><div><br></div><div>The Libre=
QoS Team</div></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div><p style=3D"color:rgb(34,34,34)"><br></p><=
p style=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4h=
t:=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p styl=
e=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/=
in-loving-memory-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/01=
/in-loving-memory-of-dave/</a></p><p style=3D"color:rgb(34,34,34)"><br></p>=
<p style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/fra=
ntisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.=
linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p style=3D"color:rgb(=
34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p=
><p style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u>=
</u></p><p style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u><=
/p><p style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmai=
l.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gm=
ail.com</a></p></div></div></div></div></div></div></div></div></div></div>=
</div></div><div>_______________________________________________</div><div>=
 Starlink mailing list</div><div> <a href=3D"mailto:Starlink@lists.bufferbl=
oat.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a></div><div> <a=
 href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferrer=
" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a></di=
v></blockquote></div><div><br></div><div><br></div><div><span>--</span></di=
v><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"color:rgb(136,136,1=
36)"><span style=3D"color:rgb(136,136,136)"><span style=3D"font-family:verd=
ana,sans-serif"><a href=3D"mailto:Geoff.Goodfellow@iconia.com" target=3D"_b=
lank">Geoff.Goodfellow@iconia.com</a></span></span></span></div><span style=
=3D"color:rgb(136,136,136)"><div><br></div><div dir=3D"ltr"><div style=3D"f=
ont-family:verdana,sans-serif;display:inline">living as The Truth is True</=
div></div><div><div style=3D"font-family:verdana,sans-serif;display:inline"=
><br></div></div></span></div></div></div><div>____________________________=
___________________</div><div>Bloat mailing list</div><div><a href=3D"mailt=
o:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@lists.bufferbloat.ne=
t</a></div><div><a href=3D"https://lists.bufferbloat.net/listinfo/bloat" ta=
rget=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a></div><div>=
<br></div></blockquote><div><br></div></div>_______________________________=
________________<br>
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

--000000000000f86f6506379fa9f3--

--===============8563958913808775042==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8563958913808775042==--
