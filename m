Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B2800AD0096
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 082F33D5A5;
	Fri,  6 Jun 2025 06:41:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206461;
	bh=Bv8HSkGG7bQX/JtK9U5r0SdFASyqlVt1A8+vrrtmXgc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fpjsmUA3ZGQP5CY4Tkbyj6zhYKicy3/guAQ6orb0QHUNCe+6U40LXr+mCgG27fMmH
	 DIEam3vsiPQkTo9+mJN6p7xpHqZIZk71N3wZJaocGqxI7j1YFHHmoIA8rHwzYfasx1
	 GrGvVnuHjNW2iPj2roinac9CVQW02dUzM3LDeaiL2xoT0ytXPMxKAu4gmoHdej2y7U
	 s4QqIDKrqsh2pMaI8TuqDax682oP5Dmt0VSUw4bnkDzbIkz3krJycGcn1iCLVu/h4e
	 p9gkJcY03mhijrwbJ9emRmibiLprhIZcr9s58MnMgT/nvTfYMG9cAI4rbnB2f0Zu2X
	 ZlWtZIdaaWi4w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 260283CB5D
 for <cake@lists.bufferbloat.net>; Sat, 12 Apr 2025 10:47:09 -0400 (EDT)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2263428c8baso118605ad.1
 for <cake@lists.bufferbloat.net>; Sat, 12 Apr 2025 07:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1744469228; x=1745074028;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=jdFe66vcZCoURVekcSnOvuivUxu+4F8NOP4zueyiQ/g=;
 b=IUJMrg7ldCyW5hHJhhWa5R1Npo9INcI7ilcuYxEUMQJ+x/ZFnlJJV8blcCj74+aitW
 QS+Zt41RAAnK6oMiwMszeV6oY6S8odGZwOasH7739TKqYhgIqpvVS6Axe1zDWrt2NvOb
 1T6C70MnZq0vO/9okJXcUKM5ElpV1mdvYB4DX9+bcU3L3rSsHXydL7f0R/1YBuQqq2+s
 N6PWU0sgh9s8zEl2pQWk245ds87kqu0CTRw1Tn3l72zQZSGt8XIAc2OFrrpFyUopjnSU
 R/PIW3kry8aHuWPblYQ9WV4IZapSOY6SLjvYffabxTgriXhYG3D3z/fUndxVNMG+w2Ov
 5MDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744469228; x=1745074028;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jdFe66vcZCoURVekcSnOvuivUxu+4F8NOP4zueyiQ/g=;
 b=B5Qvwi0hZVbRPH7Ml+dDnVJtuufBrBGswRhKTaKoVhCpeQejD6QX6vwDMUvMpSG7up
 BuGEQkeodfiiWcnILnU18dLTyoUvEypPq1kCh55RcCIQPSnbmmXyyGzW5FUiKrrw7K8E
 FK04Kz6dPO82VNoBqMUvrQZdgElQYCUMhHBXlYO5FaI6+oJ1msmPzVaKHdAkRd6ChMFM
 dcZK8F+1iawqFpf/A/RElGrM3LhSysE9eDXdzYpYgD/h1ntwTtqgU17/7SDkBQqkDjCc
 lYfLcJs71n8Zp0COdLcrbzeq8YS1eZ51FbqOqwCKIBGSRKafyP3PIwo1FEYx0trxj8eL
 bb2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX94C79VPY0cB3tZxPjiSnmlG4NoI7nsCTXy1oGLsLvS9saQk0Tx/D5jcda0mToWabI94hH@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyjNzC1QaH9n41eXxaflCcp3mC13iEYyd6VJKkBoxsNcPoFz7/o
 MpGY2Lt26mpJJNE1UhnxDzi8z8sNxXF+1Wc/gypsPDB6St04+G7yV9nTMHZHiTLHyCfqpISuisr
 8M691jHWpWYvuQOjOT+ZtOqK1fU+Sf8akVc4i
X-Gm-Gg: ASbGncu5WCv6dh93V41FfKg4qH6A28GJj8efoaJAvjxt03XkWH0ZOcK66mrfLEKSAcU
 TgQHTtse72rjF3TAuIGNgvMfQBhIqw+0//gKK2D8/bgUQ7IPJTKoF1CxotyMmgbmKlaKgEjkSkH
 l8/ZKI2K4ldq0JMJkyEKU5pIfoVaP/4bXn21G3bqEXcplGuiV5CLC2/Qkl
X-Google-Smtp-Source: AGHT+IFV8aMIsoJpAGuuTM5YoykBUcFSZWeRZJ8zbGDxKKZ6IxwKUwPQiUrZUcR7faBTSCL/wh6kJ9uBhIoigBuj2CI=
X-Received: by 2002:a17:903:230b:b0:215:42a3:e844 with SMTP id
 d9443c01a7336-22bf52cef09mr1430365ad.17.1744469227369; Sat, 12 Apr 2025
 07:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
 <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
In-Reply-To: <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
Date: Sat, 12 Apr 2025 10:46:53 -0400
X-Gm-Features: ATxdqUHY31YluUIJHl4jyrWw2KplOlhIauvlRm6ArTHrMOV22GHPHVDgh0uY7_E
Message-ID: <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BMake-wifi-fast=5D__=5BBloat=5D_In_loving_memo?=
	=?utf-8?q?ry_of_Dave_T=C3=A4ht_=3C3?=
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
From: Vint Cerf via Cake <cake@lists.bufferbloat.net>
Reply-To: Vint Cerf <vint@google.com>
Cc: "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============3150384868230582701=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3150384868230582701==
Content-Type: multipart/alternative; boundary="0000000000009f2114063295e448"

--0000000000009f2114063295e448
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

anyone can nominate, anyone can send in supporting letters of
endorsement. Nominations
open in May
<https://www.internetsociety.org/grants-and-awards/postel-service-award/#:~=
:text=3DThe%20Jonathan%20B.,service%20to%20the%20Internet%20community.>
.

vint



On Sat, Apr 12, 2025 at 9:21=E2=80=AFAM Frantisek Borsik <frantisek.borsik@=
gmail.com>
wrote:

> Lovely. So how we can put it in motion? :) Who would be the best person t=
o
> do it?
>
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
>
> *In loving memory of Dave T=C3=A4ht: *1965-2025
>
> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
>
>
> https://www.linkedin.com/in/frantisekborsik
>
> Signal, Telegram, WhatsApp: +421919416714 <+421%20919%20416%20714>
>
> iMessage, mobile: +420775230885 <+420%20775%20230%20885>
>
> Skype: casioa5302ca
>
> frantisek.borsik@gmail.com
>
>
> On Sat, Apr 12, 2025 at 1:17=E2=80=AFPM Loganaden Velvindron <loganaden@g=
mail.com>
> wrote:
>
>> Definitely :-)
>>
>> On Sat, 12 Apr 2025 at 15:12, Vint Cerf <vint@google.com> wrote:
>> >
>> > He would be a good candidate for the Postel Award, don't you think?
>> > v
>> >
>> >
>> > On Sat, Apr 12, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron <
>> loganaden@gmail.com> wrote:
>> >>
>> >> >
>> >> > 2) I was thinking about how we could get Dave recognized for his
>> contributions. Like other unsung heroes, Dave didn't work for BBN or som=
e
>> other moneyed entity who would commission a book or a memorial. (BBN pai=
d
>> Katie Hafner to write the text that later turned into her book "When
>> Wizards Stay Up Late", which oddly only talked about the ARPANET/Interne=
t
>> pioneers who worked for BBN, omitting many of my Internet colleagues.)
>> Dave wasn't the kind of guy that gets Awards from the Computer History
>> Museum or the ACM or IEEE. He wasn't beloved at IETF or ISOC that I know
>> of. He's in the category of folks like Noel Chiappa or Bram Cohen or
>> Richard Stallman or Aaron Swartz - people I think really changed the way=
 we
>> think about computing and internetworking, but who won't be in the offic=
ial
>> histories.
>> >>
>> >> He did not fit in a typical corporate culture especially in his later
>> >> years. He got a certain amount of respect at the
>> >> IETF.
>> >
>> >
>> >
>> > --
>> > Please send any postal/overnight deliveries to:
>> > Vint Cerf
>> > Google, LLC
>> > 1900 Reston Metro Plaza, 16th Floor
>> > Reston, VA 20190
>> > +1 (571) 213 1346 <(571)%20213-1346>
>> >
>> >
>> > until further notice
>> >
>> >
>> >
>>
>

--=20
Please send any postal/overnight deliveries to:
Vint Cerf
Google, LLC
1900 Reston Metro Plaza, 16th Floor
Reston, VA 20190
+1 (571) 213 1346


until further notice

--0000000000009f2114063295e448
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">anyone can nominate, anyone can send in supporting letters=
 of endorsement. <a href=3D"https://www.internetsociety.org/grants-and-awar=
ds/postel-service-award/#:~:text=3DThe%20Jonathan%20B.,service%20to%20the%2=
0Internet%20community.">Nominations open in May</a>.<div><br></div><div>vin=
t</div><div><br><div><br></div></div></div><br><div class=3D"gmail_quote gm=
ail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 12, =
2025 at 9:21=E2=80=AFAM Frantisek Borsik &lt;<a href=3D"mailto:frantisek.bo=
rsik@gmail.com">frantisek.borsik@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Lovely. So =
how we can put it in motion? :) Who would be the best person to do it?</div=
><div><br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=
=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libr=
eqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https://lib=
reqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" st=
yle=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/=
frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Signal, Telegram, WhatsApp: <a href=3D"tel:+421%20919%20416%=
20714" value=3D"+421919416714" target=3D"_blank">+421919416714</a>=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessag=
e, mobile: <a href=3D"tel:+420%20775%20230%20885" value=3D"+420775230885" t=
arget=3D"_blank">+420775230885</a><u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.bo=
rsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.=
borsik@gmail.com</a></p></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div><br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sat, Apr 12, 2025 at 1:17=E2=80=AFPM Loga=
naden Velvindron &lt;<a href=3D"mailto:loganaden@gmail.com" target=3D"_blan=
k">loganaden@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Definitely :-)<br>
<br>
On Sat, 12 Apr 2025 at 15:12, Vint Cerf &lt;<a href=3D"mailto:vint@google.c=
om" target=3D"_blank">vint@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; He would be a good candidate for the Postel Award, don&#39;t you think=
?<br>
&gt; v<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Apr 12, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron &lt;<a hr=
ef=3D"mailto:loganaden@gmail.com" target=3D"_blank">loganaden@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2) I was thinking about how we could get Dave recognized for =
his contributions. Like other unsung heroes, Dave didn&#39;t work for BBN o=
r some other moneyed entity who would commission a book or a memorial. (BBN=
 paid Katie Hafner to write the text that later turned into her book &quot;=
When Wizards Stay Up Late&quot;, which oddly only talked about the ARPANET/=
Internet pioneers who worked for BBN, omitting many of my Internet colleagu=
es.)=C2=A0 Dave wasn&#39;t the kind of guy that gets Awards from the Comput=
er History Museum or the ACM or IEEE. He wasn&#39;t beloved at IETF or ISOC=
 that I know of. He&#39;s in the category of folks like Noel Chiappa or Bra=
m Cohen or Richard Stallman or Aaron Swartz - people I think really changed=
 the way we think about computing and internetworking, but who won&#39;t be=
 in the official histories.<br>
&gt;&gt;<br>
&gt;&gt; He did not fit in a typical corporate culture especially in his la=
ter<br>
&gt;&gt; years. He got a certain amount of respect at the<br>
&gt;&gt; IETF.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Please send any postal/overnight deliveries to:<br>
&gt; Vint Cerf<br>
&gt; Google, LLC<br>
&gt; 1900 Reston Metro Plaza, 16th Floor<br>
&gt; Reston, VA 20190<br>
&gt; <a href=3D"tel:(571)%20213-1346" value=3D"+15712131346" target=3D"_bla=
nk">+1 (571) 213 1346</a><br>
&gt;<br>
&gt;<br>
&gt; until further notice<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Please send any postal/overnight deliveries=
 to:</div><div><div>Vint Cerf</div><div>Google, LLC</div><div>1900 Reston M=
etro Plaza, 16th Floor</div><div>Reston, VA 20190</div><div>+1 (571) 213 13=
46<br></div><div><br style=3D"color:rgb(34,34,34)"></div></div><div><br></d=
iv><div>until further notice</div><div><br></div><div><br></div><div><br></=
div></div></div>

--0000000000009f2114063295e448--

--===============3150384868230582701==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3150384868230582701==--
