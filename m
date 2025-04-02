Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF741A785ED
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 02:58:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 50D753CB59;
	Tue,  1 Apr 2025 20:58:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743555530;
	bh=t4ilLXy3Q6NmFzQAI4ofge1fHv8dwKgNERf3Tm4iS2M=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hstR8gAFeaDBUQAfgb29AejLDhwjpY6eenFFbAYihmhWc1oseZFOHl1CeWI8RhEPO
	 K3dFRorTAUYgw05JDvVXWmDyQGEh+Y233qGnxo6QY/KoYn4/uR+U723K8c2itzL6YF
	 Hipqiy+dmF7NhkTYg7SlQkgrerjeS2hdz+LylDiVTTkWM9/j8zHppOd3I8fR56//Da
	 vwMi85pbxaFvgX/4MyaPknj6TPTGJp1Sr1L70aIrytjw/rNppzaM/8x3UFFTfnU3T3
	 HVl0phci18HQngZ5w/vEuXynAy9xPCuM44qm7aMpefQGHBX0JsraWrEn4cVmhbflPQ
	 fGyiu6ozFxxDg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B65983B29D;
 Tue,  1 Apr 2025 20:58:48 -0400 (EDT)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-ac73723b2d5so729282866b.3; 
 Tue, 01 Apr 2025 17:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743555528; x=1744160328; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=hFVQNHs/1agr6G43irXZO7pDV17STg/osdoI7eMHjF0=;
 b=TkFxB6HQEL2ujc3kFPoazYV4n01yn4Tz/RasqvCKh9oZruranCZnXbGkV5ROX346hR
 55/p2fMN4YDZCc7obsJPpx4PhdqFUy5AIcKe9r8+B9lA+fIw+nWHDR0leuNHytyTta0E
 ejm3K9EGJ5bPUqwit3hPSs7RAItnze2R4uevJlxO24FbUQgpUEEfk7+6ss4tquCpNHG2
 Y6AQKkgejmsPxPZYlJtktyjNYza32CPEGLR9aCXI3+WE/7XmbG1yQ4IqaJZUjbTMSmHk
 YTe3FMA6xG6WmwkePU99SbARpmeVVZ5dvHfQXsl4dnfRCCa2Vcq4jbeT+X1TSeSnP425
 TyWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743555528; x=1744160328;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hFVQNHs/1agr6G43irXZO7pDV17STg/osdoI7eMHjF0=;
 b=L/+Q2azavl4uwZjXW8cbg4VFuMJe7hDhlevXMeqDngNixgnIqdwY7DtoTys20nnPuf
 KLCi86sn5WA6QPlR8I7Vp3EL3fO5LROfwKVoJKLmSNxF35rKwWAXq1Lzdgq4tb4tl+UV
 sqFJzcKC0el4imgyULCzpHH7KHO/mXZMGHHCKQeb8aMKhTGQCc5VfGhf84c6gczIwc57
 xfJs9P0qQBYUAcLUh8FUJfmFh/57+zLCR2yumxp/KSgH4iQrNPO4LgfiTcEDSj/7z1XD
 l4JL/y/WOx34DNoddTsrb0Uk8iBB4vOLZ6o/3v1zjRLW/LGaDjxm1AqFf2mZz8UMzUYP
 6dlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNkEAGJv7uKYuWAUR/pml7lOqC9pQ77aBl9U0dqWJuLRg6xrvUZlXWki+IY6KqaKMMi8AlhK4ZlQ==@lists.bufferbloat.net,
 AJvYcCUjIBVD3xLZPJEJHube7zwc62f/qC5oJkM+P5cAHDdbHEDeI88tb8DV84pvDXSLxEeg72KRyleuVx/jR7BFLw0=@lists.bufferbloat.net,
 AJvYcCV43/qos610ezUfSh/3ktlGXIg7k/D+qKXBTUVvg8K5NIMoFxs4NSppw+aL0ooC2qb4n0VtrkAj3S/pfAKkMesu@lists.bufferbloat.net,
 AJvYcCVLGGd6YV64nDjSxsNSpUAQvk8PipRaeEpaGtR5l8NK2D3ru7X2bBiETWrNDlodYliPW5IvJzsZjFjAMfV5Dw==@lists.bufferbloat.net,
 AJvYcCVWJqePiKsfV9MZ7mVp4zpJSN4Gi+6gL1h4AQlnxfsgWSXtwgHMTc+VVHbBBGU0usW4nJDMUWvNIIa+@lists.bufferbloat.net,
 AJvYcCVXe9p+gBG8EOSDKAxwyzPT6iAWMArMhjKoCEj++9mw3hSaT1xrNtAo6K1gVmf5snuOu54kww==@lists.bufferbloat.net,
 AJvYcCVYsvIC1pz954NoqkRylgXUb3lYwDqv3hCW6rxBF4e1Je90LDIUxAq2j65MwmIZ6Za2+C8QOqFaLCmEMvj4Kw==@lists.bufferbloat.net,
 AJvYcCVaVHeZnaZ+LP3Cs7qP1d6cguEYinNaFNnBcJFaLy0ewlgPccSYLSrwOUXu9gpn9kdf+mdMM/cUPZo=@lists.bufferbloat.net,
 AJvYcCW2FTzc7KPbySAOssHXGYegrZfOqFJ1W18pHd4oe1msKXXgba8BsRz4k898NCg+Xu4LCMh/@lists.bufferbloat.net,
 AJvYcCWStlEdV8fWJiL1FE2NJuCYlfKPqpsPZGuJ183CiT0MU45X4gonRjhOrpZ+R2DYS9lJ8JDY/EU=@lists.bufferbloat.net,
 AJvYcCWi/4c9JShn6GRKqT1gAwNJD8VlkQZyfaL1G+qCbEhpZrVjMxaKB7CM4WH1sLMuCuZJsFECEbeINaA=@lists.bufferbloat.net,
 AJvYcCXHE0Kg8rmVBLqWjl05O3lK6/Lqs1auFiUqkBP4CWB5Sq/J0wqA6JLRPeovfyAQpST3TrByE+Y=@lists.bufferbloat.net,
 AJvYcCXSLJbnvnEfmczD9RxbphpecOVhlGg1DdhyTj6xIOCE3iRIJ5cHe6QxM+wTEnXqsS+5+pdoSv2W3FIKpTiQJiY=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzvl4109BMaT9Pgs99n4D6tjqftyWA0T49X6W/UcZGuusbWQpDq
 4ntWrIUp12taGyCAvLXg88iKRAuen2xHs8pA3E2820a/WMEzHjddT7i583WkITHrQrWxXcSAu8D
 oeEIRtikQuMnLNtjywmWrvxKW7YY=
X-Gm-Gg: ASbGncsFYd2rQ94GH3Tc9ke7wFyFMZekPM15r9paODD8Om5xPn3/nQ5AwQGt3kw0o2n
 DhH4KrOcZWc6W44p7RoWXqJbRiI+aXnwawDljGElsV5YtaJqDNbrkL5NprlBO9u3dm6rvAN4gH1
 9MKZ32jYCxJwd/38uAF77PQF4u
X-Google-Smtp-Source: AGHT+IGx9vAqPbWKjZL0kDxBhOER4Mc993KL0HE7rvMNTjCy1Cy2SOh9ANsy3CF2l7dW8t75mQKB4dqj0Vn1VMRRiRc=
X-Received: by 2002:a17:907:3d91:b0:ac7:95b8:432d with SMTP id
 a640c23a62f3a-ac7a1a57782mr35837766b.45.1743555527262; Tue, 01 Apr 2025
 17:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <87v7rnmxlx.fsf@toke.dk>
In-Reply-To: <87v7rnmxlx.fsf@toke.dk>
Date: Wed, 2 Apr 2025 02:58:35 +0200
X-Gm-Features: AQ5f1JoYbkO_sYHW90Xpx8XZWBcqvZ7_ve3IqPX11G_Ph_vDXjpRmxXEHrt_TBw
Message-ID: <CACvFP_jpVxcYA+jfcL9q+LSs3MX1B9No3sObY+1-Qr-3HHL_mQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
From: Georgios Amanakis via Cake <cake@lists.bufferbloat.net>
Reply-To: Georgios Amanakis <gamanakis@gmail.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4166350794739755171=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4166350794739755171==
Content-Type: multipart/alternative; boundary="000000000000d94cbc0631c127d8"

--000000000000d94cbc0631c127d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am deeply moved by his passing, what a sad day. We got to know each other
when I came across CAKE and contributed somewhat to the team efforts back
in 2016-2018, when I was in the US. He is deeply missed but his impact
echoes on in 'every packet that flows a little bit more fairly'.

George Amanakis

On Tue, Apr 1, 2025, 10:32=E2=80=AFPM Toke H=C3=B8iland-J=C3=B8rgensen via =
Bloat <
bloat@lists.bufferbloat.net> wrote:

> Absolutely devastating news. He will be missed! It was an honour to know
> him and work with him; he was a kind and generous person who selflessly
> dedicated his time to making the internet a better place for us all.
>
> Wrote a bit of a longer farewell note here:
> https://blog.tohojo.dk/2025/04/remembering-dave-t%C3%A4ht.html
>
> -Toke
>
>
> Frantisek Borsik via Bloat <bloat@lists.bufferbloat.net> writes:
>
> > Hello to all,
> >
> > We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed awa=
y.
> > <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
> >
> > Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
> fighting
> > bufferbloat and trying to make the world a better place. Always willing
> to
> > help, and without him =E2=80=93 LibreQoS (and the other QoE solutions o=
ut there)
> > wouldn=E2=80=99t exist.
> >
> > Dave was an inspiration, and we all miss him. We=E2=80=99re reaching ou=
t to
> family
> > and close friends to see if there=E2=80=99s anything we can do to help.
> >
> > Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, F=
Q-CoDel,
> and
> > CAKE improved internet connectivity around the world for millions of
> > people. Because of him, millions of people now have access to reliable
> > video calls =E2=80=93 and in turn, access to loved ones, healthcare, an=
d
> community.
> > One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who li=
ves in a
> > far-flung rural Colonia around El Paso, Texas. Her reliable access to h=
er
> > doctors through telemedicine, and to her family through FaceTime, was
> only
> > made possible because of his algorithms. There are millions of cases li=
ke
> > hers, where Dave=E2=80=99s contributions have silently enabled human co=
nnection
> and
> > safety. Everything Dave contributed to the world of technology was free
> and
> > open source, for the betterment of humanity.
> >
> > Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
> > enabling a generation of young entrepreneurs across the developing worl=
d,
> > such as these young folks pictured in the Phillipines, to start their o=
wn
> > ISPs to expand internet access to their communities. Dave started work =
on
> > FQ-CoDel in part because of his own journey working to expand internet
> > access in Nicaragua, so we know he saw that his work had come full-circ=
le
> > and helped so many.
> >
> > We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, a=
nd as
> > someone who continuously inspired us =E2=80=93 showing us that we could=
 do better
> > for each other in the world, and leverage technology to make that happe=
n.
> > He will be dearly missed.
> >
> > *PS: *Dave is forever in our hearts and souls, in our routers and...in
> > production!
> >
> > *https://github.com/LibreQoE/LibreQoS/pull/684
> > <https://github.com/LibreQoE/LibreQoS/pull/684>*
> >
> > All the best,
> >
> > Frank
> >
> > Frantisek (Frank) Borsik
> >
> >
> >
> > https://www.linkedin.com/in/frantisekborsik
> >
> > Signal, Telegram, WhatsApp: +421919416714
> >
> > iMessage, mobile: +420775230885
> >
> > Skype: casioa5302ca
> >
> > frantisek.borsik@gmail.com
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--000000000000d94cbc0631c127d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I am deeply moved by his passing, what a sad day. We got to =
know each other when I came across CAKE and contributed somewhat to the tea=
m efforts back in 2016-2018, when I was in the US. He is deeply missed but =
his impact echoes on in &#39;every packet that flows a little bit more fair=
ly&#39;.</p>
<p dir=3D"ltr">George Amanakis</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 1, 2025, 10:32=E2=80=AFPM Toke H=C3=B8iland-J=
=C3=B8rgensen via Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net">=
bloat@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">Absolutely devastating news. He will be missed! It was an honour to=
 know<br>
him and work with him; he was a kind and generous person who selflessly<br>
dedicated his time to making the internet a better place for us all.<br>
<br>
Wrote a bit of a longer farewell note here:<br>
<a href=3D"https://blog.tohojo.dk/2025/04/remembering-dave-t%C3%A4ht.html" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://blog.tohojo.dk/2025=
/04/remembering-dave-t%C3%A4ht.html</a><br>
<br>
-Toke<br>
<br>
<br>
Frantisek Borsik via Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.ne=
t" target=3D"_blank" rel=3D"noreferrer">bloat@lists.bufferbloat.net</a>&gt;=
 writes:<br>
<br>
&gt; Hello to all,<br>
&gt;<br>
&gt; We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed aw=
ay.<br>
&gt; &lt;<a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave=
/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://libreqos.io/2025=
/04/01/in-loving-memory-of-dave/</a>&gt;<br>
&gt;<br>
&gt; Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fig=
hting<br>
&gt; bufferbloat and trying to make the world a better place. Always willin=
g to<br>
&gt; help, and without him =E2=80=93 LibreQoS (and the other QoE solutions =
out there)<br>
&gt; wouldn=E2=80=99t exist.<br>
&gt;<br>
&gt; Dave was an inspiration, and we all miss him. We=E2=80=99re reaching o=
ut to family<br>
&gt; and close friends to see if there=E2=80=99s anything we can do to help=
.<br>
&gt;<br>
&gt; Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, =
FQ-CoDel, and<br>
&gt; CAKE improved internet connectivity around the world for millions of<b=
r>
&gt; people. Because of him, millions of people now have access to reliable=
<br>
&gt; video calls =E2=80=93 and in turn, access to loved ones, healthcare, a=
nd community.<br>
&gt; One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who l=
ives in a<br>
&gt; far-flung rural Colonia around El Paso, Texas. Her reliable access to =
her<br>
&gt; doctors through telemedicine, and to her family through FaceTime, was =
only<br>
&gt; made possible because of his algorithms. There are millions of cases l=
ike<br>
&gt; hers, where Dave=E2=80=99s contributions have silently enabled human c=
onnection and<br>
&gt; safety. Everything Dave contributed to the world of technology was fre=
e and<br>
&gt; open source, for the betterment of humanity.<br>
&gt;<br>
&gt; Dave is the reason that Starlink was able to tackle its latency issues=
 =E2=80=93<br>
&gt; enabling a generation of young entrepreneurs across the developing wor=
ld,<br>
&gt; such as these young folks pictured in the Phillipines, to start their =
own<br>
&gt; ISPs to expand internet access to their communities. Dave started work=
 on<br>
&gt; FQ-CoDel in part because of his own journey working to expand internet=
<br>
&gt; access in Nicaragua, so we know he saw that his work had come full-cir=
cle<br>
&gt; and helped so many.<br>
&gt;<br>
&gt; We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, =
and as<br>
&gt; someone who continuously inspired us =E2=80=93 showing us that we coul=
d do better<br>
&gt; for each other in the world, and leverage technology to make that happ=
en.<br>
&gt; He will be dearly missed.<br>
&gt;<br>
&gt; *PS: *Dave is forever in our hearts and souls, in our routers and...in=
<br>
&gt; production!<br>
&gt;<br>
&gt; *<a href=3D"https://github.com/LibreQoE/LibreQoS/pull/684" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://github.com/LibreQoE/LibreQoS/p=
ull/684</a><br>
&gt; &lt;<a href=3D"https://github.com/LibreQoE/LibreQoS/pull/684" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">https://github.com/LibreQoE/LibreQo=
S/pull/684</a>&gt;*<br>
&gt;<br>
&gt; All the best,<br>
&gt;<br>
&gt; Frank<br>
&gt;<br>
&gt; Frantisek (Frank) Borsik<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://www.linkedin.com/in/frantisekborsik" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://www.linkedin.com/in/frantisekbors=
ik</a><br>
&gt;<br>
&gt; Signal, Telegram, WhatsApp: +421919416714<br>
&gt;<br>
&gt; iMessage, mobile: +420775230885<br>
&gt;<br>
&gt; Skype: casioa5302ca<br>
&gt;<br>
&gt; <a href=3D"mailto:frantisek.borsik@gmail.com" target=3D"_blank" rel=3D=
"noreferrer">frantisek.borsik@gmail.com</a><br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank" rel=
=3D"noreferrer">Bloat@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/b=
loat</a><br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank" rel=3D"nor=
eferrer">Bloat@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer =
noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat<=
/a><br>
</blockquote></div>

--000000000000d94cbc0631c127d8--

--===============4166350794739755171==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4166350794739755171==--
