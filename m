Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 75140A781BB
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 19:54:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5BCE43CB46;
	Tue,  1 Apr 2025 13:54:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743530083;
	bh=cI/MRjfoLgJlx9LJE7b5dC9zYLXjOau6UiWSYsR3ZjQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Wi0zSCSxlIrxkrFHxcPaSYQi0UO5jyFqz258QL/4TPMRRPWi2wLPciwOdABX5vyt7
	 3yF4GueA6TC7kIPG61YeRHv+LBaEbk9/0SU+IBW/VCzns2PpbyShknR07qboxUSp3o
	 jx95s+xwa9UEQfoPS6gnWkiODTjKLUwJODGQX6kJUgLu0fBaf2s3bo2Pz+JwAfsN0F
	 Tc78BUp8Q5nVSljRM6GTa0i0t99ZxMRsP3nht4xnG8ifdVveCwVrdlgUUH6i1zCfbD
	 EigINruj9AcHYFss6K3Wa8sShWYMlDDozv+yNt5rGPi1+GR4pEtXCrk6F2LEaMkEoh
	 IXHNIfd21YyNA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F2CDD3CB42
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 13:54:41 -0400 (EDT)
Received: by mail-yb1-xb2b.google.com with SMTP id
 3f1490d57ef6-e6deb3eb7dbso529315276.0
 for <cake@lists.bufferbloat.net>; Tue, 01 Apr 2025 10:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet; t=1743530081; x=1744134881;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TBB3e7djobcXfJeRSTU5A/Q36eYvTr1XIEde5JZVgzs=;
 b=FdZOfwlkL4o9E5XjR7YPveIJV8r1WaoZoiX5Dh1fb6Q+7d/iJczSLlSIoXiINUufAH
 ESG8v4IK3rfjecy4xleksAMW0A5K1CYJLPLvv1Ksd5DcW6E563xfXPVVkqOAhqDCZDyQ
 frFOFR0yKdWUP3S/mFWJmCoGQsOhr54zih+HA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743530081; x=1744134881;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TBB3e7djobcXfJeRSTU5A/Q36eYvTr1XIEde5JZVgzs=;
 b=F4U9Xx7s6N36i45CikvUy5o6hVNs8cnKSXYSZavMrjhyqdrYjbGgKsG3UWBKMSy18O
 1WoX4eU9IePVJR7nIZiDQAIWznmG6h0daF8K4NuiEjhAbIyEbFxira9Ov6P3FRRktHnb
 P0Y61BxP54cPXrLJ9N1WU/LF7sskwNbo3Si37u2khH+cFpY+7aslupYisbNNcyzLyJJD
 pumDek112KhmPXaQZAJiid03XBnhgC5y8Tv1PRKD6QT9p9Z1dxXpi0AHwp0rMvXtbpu7
 dcsbs4MmEFnCtwNSnd3nOFQhJcmZNHyL5u1KPgiyn8mu1HeaF3d9huj9xOSTJ7xFOPLr
 g9QQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ47aNvFWQzLQbStr0YO7uTd3iyi5wQUZC4NetkltcFxm3u+t+MiYi/zFtN5bjfc8hrdkJ@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwtaeDL1a0sTL3H+9I4lVy3n0XHVw470PmlbfFJlV6iidcWbJP/
 0870SjlxhiCI8sC9LAtmEoElyciFy/wWlmWwJZ53vjOfbMXhthqvVge+P6adEuRuklK4oZH87Ix
 pW1XDUk8/Gi5eDOifa7fiNxxi4897iYljJzUD
X-Gm-Gg: ASbGncs9uM5y8poVRqhOe5PW2Fvu22sCd4pWbiiwJi9hESB6ifH0f1Bc0raey4iMW5C
 dM4Wgw8q5j8+i1fWFTLoAD7gfSRGHgQJ3hHcPbwxbt3l59LleGifa+Wp/y9Dn5RKbUiVq3e+7QI
 NjeG/Twk+dY+UIksHQ9ZfDK/OXr/7r8gEwi5q72FR1PLNNSRoNrPTZpaLqPYE6
X-Google-Smtp-Source: AGHT+IExzFhb/oEwxOT7Li4Vc3vctnawiMBh3j+exihPKVyAq7LPbP5d2iF/xUeZLSM94zv9FoJ859fqc5FCA3FOHbE=
X-Received: by 2002:a05:6902:1b93:b0:e63:eea7:8f95 with SMTP id
 3f1490d57ef6-e6b83a82841mr18885626276.38.1743530081360; Tue, 01 Apr 2025
 10:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <mailman.824.1743528682.1142.cerowrt-devel@lists.bufferbloat.net>
In-Reply-To: <mailman.824.1743528682.1142.cerowrt-devel@lists.bufferbloat.net>
Date: Wed, 2 Apr 2025 06:53:00 +1300
X-Gm-Features: AQ5f1JoUHpDdo5vZENrIFJNpemAbEjhjybgVxKFFnrChvR0XFiwrX89zdoG1Fv4
Message-ID: <CAKiAkGQ3Ub1ozkcONC+3udZkA5c2DWtMmL322vuQk-vj9X5xhg@mail.gmail.com>
To: Vint Cerf <vint@google.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BCerowrt-devel=5D_=5BStarlink=5D_In_loving_mem?=
	=?utf-8?q?ory_of_Dave_T=C3=A4ht_=3C3?=
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
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Cc: cerowrt-commits@lists.bufferbloat.net, bloat-ietf@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-users@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============9136407036032262287=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9136407036032262287==
Content-Type: multipart/alternative; boundary="00000000000027bfd40631bb3b3b"

--00000000000027bfd40631bb3b3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I met Dave a couple of times and convinced him to talk at our Little ol New
Zealand Network Operators Conference on occasion.

I enjoyed working with Dave on customizing openwrt bits for bufferbloat
issues and attempting to scale up to gigabit fibre speeds on less than
capable consumer hardware. He was always quick to reply and offer; advice,
anecdotes and opines without ego.

He will be missed.


-Joel





On Wed, 2 Apr 2025 at 06:31, Vint Cerf via Cerowrt-devel <
cerowrt-devel@lists.bufferbloat.net> wrote:

>
>
>
> ---------- Forwarded message ----------
> From: Vint Cerf <vint@google.com>
> To: Frantisek Borsik <frantisek.borsik@gmail.com>
> Cc: libreqos <libreqos@lists.bufferbloat.net>, bloat <
> bloat@lists.bufferbloat.net>, Dave Taht via Starlink <
> starlink@lists.bufferbloat.net>, Jeremy Austin via Rpm <
> rpm@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net, Cake List <
> cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
> cerowrt-commits@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.ne=
t,
> cerowrt-users@lists.bufferbloat.net, codel-wireless@lists.bufferbloat.net=
,
> Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, "Network
> Neutrality is back! Let=C2=B4s make the technical aspects heard this time=
!" <
> nnagain@lists.bufferbloat.net>, Herbert Wolverson <hwolverson@libreqos.io=
>,
> "Frantisek (Frank) Borsik" <frank@libreqos.io>, "Robert Chac=C3=B3n" <
> robert@libreqos.io>
> Bcc:
> Date: Tue, 1 Apr 2025 13:31:08 -0400
> Subject: Re: [Starlink] In loving memory of Dave T=C3=A4ht <3
> OMG - that is truly terrible news! I could not say better than Frank
> already has how much Dave's work has helped to improve our experience of
> the Internet. I can't think of anyone more dedicated to the proposition
> that performance counts and should be pursued with determination and
> vigor.  I've known Dave for many years and greatly valued his counsel and
> technical skills - to say nothing of his healthy sense of humor. I will
> miss him but will be always grateful to have known him.
>
> vint cerf
>
>
> On Tue, Apr 1, 2025 at 1:26=E2=80=AFPM Frantisek Borsik via Starlink <
> starlink@lists.bufferbloat.net> wrote:
>
>> Hello to all,
>>
>> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away=
.
>> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>>
>> Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
>> fighting bufferbloat and trying to make the world a better place. Always
>> willing to help, and without him =E2=80=93 LibreQoS (and the other QoE s=
olutions
>> out there) wouldn=E2=80=99t exist.
>>
>> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out=
 to
>> family and close friends to see if there=E2=80=99s anything we can do to=
 help.
>>
>> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ=
-CoDel,
>> and CAKE improved internet connectivity around the world for millions of
>> people. Because of him, millions of people now have access to reliable
>> video calls =E2=80=93 and in turn, access to loved ones, healthcare, and=
 community.
>> One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who liv=
es in a
>> far-flung rural Colonia around El Paso, Texas. Her reliable access to he=
r
>> doctors through telemedicine, and to her family through FaceTime, was on=
ly
>> made possible because of his algorithms. There are millions of cases lik=
e
>> hers, where Dave=E2=80=99s contributions have silently enabled human con=
nection and
>> safety. Everything Dave contributed to the world of technology was free =
and
>> open source, for the betterment of humanity.
>>
>> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
>> enabling a generation of young entrepreneurs across the developing world=
,
>> such as these young folks pictured in the Phillipines, to start their ow=
n
>> ISPs to expand internet access to their communities. Dave started work o=
n
>> FQ-CoDel in part because of his own journey working to expand internet
>> access in Nicaragua, so we know he saw that his work had come full-circl=
e
>> and helped so many.
>>
>> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, an=
d as
>> someone who continuously inspired us =E2=80=93 showing us that we could =
do better
>> for each other in the world, and leverage technology to make that happen=
.
>> He will be dearly missed.
>>
>> *PS: *Dave is forever in our hearts and souls, in our routers and...in
>> production!
>>
>> *https://github.com/LibreQoE/LibreQoS/pull/684
>> <https://github.com/LibreQoE/LibreQoS/pull/684>*
>>
>> All the best,
>>
>> Frank
>>
>> Frantisek (Frank) Borsik
>>
>>
>>
>> https://www.linkedin.com/in/frantisekborsik
>>
>> Signal, Telegram, WhatsApp: +421919416714 <+421%20919%20416%20714>
>>
>> iMessage, mobile: +420775230885 <+420%20775%20230%20885>
>>
>> Skype: casioa5302ca
>>
>> frantisek.borsik@gmail.com
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>
>
> --
> Please send any postal/overnight deliveries to:
> Vint Cerf
> Google, LLC
> 1900 Reston Metro Plaza, 16th Floor
> Reston, VA 20190
> +1 (571) 213 1346
>
>
> until further notice
>
>
>
>
>
>
> ---------- Forwarded message ----------
> From: Vint Cerf via Cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
> To: Frantisek Borsik <frantisek.borsik@gmail.com>
> Cc: codel-wireless@lists.bufferbloat.net, Jeremy Austin via Rpm <
> rpm@lists.bufferbloat.net>, cerowrt-commits@lists.bufferbloat.net,
> Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, libreqos <
> libreqos@lists.bufferbloat.net>, Dave Taht via Starlink <
> starlink@lists.bufferbloat.net>, Herbert Wolverson <hwolverson@libreqos.i=
o>,
> "Frantisek (Frank) Borsik" <frank@libreqos.io>, "Network Neutrality is
> back! Let=C2=B4s make the technical aspects heard this time!" <
> nnagain@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
> cerowrt-devel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
> Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
> cerowrt-users@lists.bufferbloat.net, "Robert Chac=C3=B3n" <robert@libreqo=
s.io>
> Bcc:
> Date: Tue, 01 Apr 2025 10:31:29 -0700 (PDT)
> Subject: Re: [Cerowrt-devel] [Starlink] In loving memory of Dave T=C3=A4h=
t <3
> _______________________________________________
> Cerowrt-devel mailing list
> Cerowrt-devel@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cerowrt-devel
>


--=20
---
Joel Wir=C4=81mu Pauling (they/them/he)
+64223608671
joel@aenertia.net
https://linkedin.com/in/aenertia

--00000000000027bfd40631bb3b3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I met Dave a couple of times and convinced him to talk at our L=
ittle ol New Zealand Network Operators Conference on occasion.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">I enjoy=
ed working with Dave on customizing openwrt bits for bufferbloat issues and=
 attempting to scale up to gigabit fibre speeds on less than capable consum=
er hardware. He was always quick to reply and offer; advice, anecdotes and =
opines without ego.</div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif">He will be missed.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif">-Joel</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, 2 Apr 2025 at 06:31, Vint Cerf via =
Cerowrt-devel &lt;<a href=3D"mailto:cerowrt-devel@lists.bufferbloat.net">ce=
rowrt-devel@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br><br><br>---------- Forwarded message -=
---------<br>From:=C2=A0Vint Cerf &lt;<a href=3D"mailto:vint@google.com" ta=
rget=3D"_blank">vint@google.com</a>&gt;<br>To:=C2=A0Frantisek Borsik &lt;<a=
 href=3D"mailto:frantisek.borsik@gmail.com" target=3D"_blank">frantisek.bor=
sik@gmail.com</a>&gt;<br>Cc:=C2=A0libreqos &lt;<a href=3D"mailto:libreqos@l=
ists.bufferbloat.net" target=3D"_blank">libreqos@lists.bufferbloat.net</a>&=
gt;, bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_bl=
ank">bloat@lists.bufferbloat.net</a>&gt;, Dave Taht via Starlink &lt;<a hre=
f=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_blank">starlink@list=
s.bufferbloat.net</a>&gt;, Jeremy Austin via Rpm &lt;<a href=3D"mailto:rpm@=
lists.bufferbloat.net" target=3D"_blank">rpm@lists.bufferbloat.net</a>&gt;,=
 <a href=3D"mailto:bloat-ietf@lists.bufferbloat.net" target=3D"_blank">bloa=
t-ietf@lists.bufferbloat.net</a>, Cake List &lt;<a href=3D"mailto:cake@list=
s.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;, <a=
 href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">codel@lists.=
bufferbloat.net</a>, <a href=3D"mailto:cerowrt-commits@lists.bufferbloat.ne=
t" target=3D"_blank">cerowrt-commits@lists.bufferbloat.net</a>, <a href=3D"=
mailto:cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">cerowrt-devel=
@lists.bufferbloat.net</a>, <a href=3D"mailto:cerowrt-users@lists.bufferblo=
at.net" target=3D"_blank">cerowrt-users@lists.bufferbloat.net</a>, <a href=
=3D"mailto:codel-wireless@lists.bufferbloat.net" target=3D"_blank">codel-wi=
reless@lists.bufferbloat.net</a>, Make-Wifi-fast &lt;<a href=3D"mailto:make=
-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.bu=
fferbloat.net</a>&gt;, &quot;Network Neutrality is back! Let=C2=B4s make th=
e technical aspects heard this time!&quot; &lt;<a href=3D"mailto:nnagain@li=
sts.bufferbloat.net" target=3D"_blank">nnagain@lists.bufferbloat.net</a>&gt=
;, Herbert Wolverson &lt;<a href=3D"mailto:hwolverson@libreqos.io" target=
=3D"_blank">hwolverson@libreqos.io</a>&gt;, &quot;Frantisek (Frank) Borsik&=
quot; &lt;<a href=3D"mailto:frank@libreqos.io" target=3D"_blank">frank@libr=
eqos.io</a>&gt;, &quot;Robert Chac=C3=B3n&quot; &lt;<a href=3D"mailto:rober=
t@libreqos.io" target=3D"_blank">robert@libreqos.io</a>&gt;<br>Bcc:=C2=A0<b=
r>Date:=C2=A0Tue, 1 Apr 2025 13:31:08 -0400<br>Subject:=C2=A0Re: [Starlink]=
 In loving memory of Dave T=C3=A4ht &lt;3<br><div dir=3D"ltr">OMG - that is=
 truly terrible news! I could not say better than Frank already has how muc=
h Dave&#39;s work has helped to improve our experience of the Internet. I c=
an&#39;t think of anyone more dedicated to the proposition that performance=
 counts and should be pursued with determination and vigor.=C2=A0 I&#39;ve =
known Dave for many years and greatly valued his counsel and technical skil=
ls - to say nothing of his healthy sense of humor. I will miss him but will=
 be always grateful to have known him.<div><br></div><div>vint cerf</div><d=
iv><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Apr 1, 2025 at 1:26=E2=80=AFPM Frantisek Borsik via St=
arlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_bla=
nk">starlink@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello to all,</div>=
<div><br></div><div><a href=3D"https://libreqos.io/2025/04/01/in-loving-mem=
ory-of-dave/" target=3D"_blank">We=E2=80=99re devastated to announce that D=
ave T=C3=A4ht has passed away.</a><br><br>Dave was an amazing man, helping =
the world with FQ-CoDel and CAKE, fighting bufferbloat and trying to make t=
he world a better place. Always willing to help, and without him =E2=80=93 =
LibreQoS (and the other QoE solutions out there) wouldn=E2=80=99t exist.<br=
><br>Dave was an inspiration, and we all miss him. We=E2=80=99re reaching o=
ut to family and close friends to see if there=E2=80=99s anything we can do=
 to help.<br><br>Dave was an inspiration to us. Dave=E2=80=99s contribution=
s to Linux, FQ-CoDel, and CAKE improved internet connectivity around the wo=
rld for millions of people. Because of him, millions of people now have acc=
ess to reliable video calls =E2=80=93 and in turn, access to loved ones, he=
althcare, and community. One of Robert=E2=80=99s ISP customers is a kind pa=
raplegic woman who lives in a far-flung rural Colonia around El Paso, Texas=
. Her reliable access to her doctors through telemedicine, and to her famil=
y through FaceTime, was only made possible because of his algorithms. There=
 are millions of cases like hers, where Dave=E2=80=99s contributions have s=
ilently enabled human connection and safety. Everything Dave contributed to=
 the world of technology was free and open source, for the betterment of hu=
manity.<br><br>Dave is the reason that Starlink was able to tackle its late=
ncy issues =E2=80=93 enabling a generation of young entrepreneurs across th=
e developing world, such as these young folks pictured in the Phillipines, =
to start their own ISPs to expand internet access to their communities. Dav=
e started work on FQ-CoDel in part because of his own journey working to ex=
pand internet access in Nicaragua, so we know he saw that his work had come=
 full-circle and helped so many.<br><br>We=E2=80=99re incredibly grateful t=
o have Dave as our friend, mentor, and as someone who continuously inspired=
 us =E2=80=93 showing us that we could do better for each other in the worl=
d, and leverage technology to make that happen. He will be dearly missed.<b=
r></div><div><br></div><div><b>PS: </b>Dave is forever in our hearts and so=
uls, in our routers and...in production!</div><div><b><a href=3D"https://gi=
thub.com/LibreQoE/LibreQoS/pull/684" target=3D"_blank">https://github.com/L=
ibreQoE/LibreQoS/pull/684<br></a></b></div><div><br></div><div><div dir=3D"=
ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p c=
lass=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></=
u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=
=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a hr=
ef=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85=
,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal,=
 Telegram, WhatsApp: <a href=3D"tel:+421%20919%20416%20714" value=3D"+42191=
9416714" target=3D"_blank">+421919416714</a>=C2=A0<u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: <a href=3D"=
tel:+420%20775%20230%20885" value=3D"+420775230885" target=3D"_blank">+4207=
75230885</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a>=
</p></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Please send any postal/overnight deliveries=
 to:</div><div><div>Vint Cerf</div><div>Google, LLC</div><div>1900 Reston M=
etro Plaza, 16th Floor</div><div>Reston, VA 20190</div><div>+1 (571) 213 13=
46<br></div><div><br style=3D"color:rgb(34,34,34)"></div></div><div><br></d=
iv><div>until further notice</div><div><br></div><div><br></div><div><br></=
div></div></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Vint Cerf=
 via Cerowrt-devel &lt;<a href=3D"mailto:cerowrt-devel@lists.bufferbloat.ne=
t" target=3D"_blank">cerowrt-devel@lists.bufferbloat.net</a>&gt;<br>To:=C2=
=A0Frantisek Borsik &lt;<a href=3D"mailto:frantisek.borsik@gmail.com" targe=
t=3D"_blank">frantisek.borsik@gmail.com</a>&gt;<br>Cc:=C2=A0<a href=3D"mail=
to:codel-wireless@lists.bufferbloat.net" target=3D"_blank">codel-wireless@l=
ists.bufferbloat.net</a>, Jeremy Austin via Rpm &lt;<a href=3D"mailto:rpm@l=
ists.bufferbloat.net" target=3D"_blank">rpm@lists.bufferbloat.net</a>&gt;, =
<a href=3D"mailto:cerowrt-commits@lists.bufferbloat.net" target=3D"_blank">=
cerowrt-commits@lists.bufferbloat.net</a>, Make-Wifi-fast &lt;<a href=3D"ma=
ilto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast=
@lists.bufferbloat.net</a>&gt;, libreqos &lt;<a href=3D"mailto:libreqos@lis=
ts.bufferbloat.net" target=3D"_blank">libreqos@lists.bufferbloat.net</a>&gt=
;, Dave Taht via Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.=
net" target=3D"_blank">starlink@lists.bufferbloat.net</a>&gt;, Herbert Wolv=
erson &lt;<a href=3D"mailto:hwolverson@libreqos.io" target=3D"_blank">hwolv=
erson@libreqos.io</a>&gt;, &quot;Frantisek (Frank) Borsik&quot; &lt;<a href=
=3D"mailto:frank@libreqos.io" target=3D"_blank">frank@libreqos.io</a>&gt;, =
&quot;Network Neutrality is back! Let=C2=B4s make the technical aspects hea=
rd this time!&quot; &lt;<a href=3D"mailto:nnagain@lists.bufferbloat.net" ta=
rget=3D"_blank">nnagain@lists.bufferbloat.net</a>&gt;, <a href=3D"mailto:co=
del@lists.bufferbloat.net" target=3D"_blank">codel@lists.bufferbloat.net</a=
>, <a href=3D"mailto:cerowrt-devel@lists.bufferbloat.net" target=3D"_blank"=
>cerowrt-devel@lists.bufferbloat.net</a>, bloat &lt;<a href=3D"mailto:bloat=
@lists.bufferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&g=
t;, Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_=
blank">cake@lists.bufferbloat.net</a>&gt;, <a href=3D"mailto:bloat-ietf@lis=
ts.bufferbloat.net" target=3D"_blank">bloat-ietf@lists.bufferbloat.net</a>,=
 <a href=3D"mailto:cerowrt-users@lists.bufferbloat.net" target=3D"_blank">c=
erowrt-users@lists.bufferbloat.net</a>, &quot;Robert Chac=C3=B3n&quot; &lt;=
<a href=3D"mailto:robert@libreqos.io" target=3D"_blank">robert@libreqos.io<=
/a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Tue, 01 Apr 2025 10:31:29 -0700 (PDT)<b=
r>Subject:=C2=A0Re: [Cerowrt-devel] [Starlink] In loving memory of Dave T=
=C3=A4ht &lt;3<br>_______________________________________________<br>
Cerowrt-devel mailing list<br>
<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Ce=
rowrt-devel@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-d=
evel</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">---<br>Joel Wir=C4=81mu Pauling (they/them/he)<br>+642236086=
71<br><a href=3D"mailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.=
net</a><br><a href=3D"https://linkedin.com/in/aenertia" target=3D"_blank">h=
ttps://linkedin.com/in/aenertia</a><div><br></div></div></div>

--00000000000027bfd40631bb3b3b--

--===============9136407036032262287==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9136407036032262287==--
