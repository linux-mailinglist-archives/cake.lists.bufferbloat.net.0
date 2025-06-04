Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6266DACDE69
	for <lists+cake@lfdr.de>; Wed,  4 Jun 2025 14:59:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 464DC3CB39;
	Wed,  4 Jun 2025 08:58:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749041939;
	bh=bkx4hEBCKTCfQcAW5ZC5uKsk9SKCEwmDVNoKrt6Emdo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=l6u9FYyVsp5ST3HGX2KzcG9nbRXGzHEgJuoxNpkY/a3SKbsQcGMrpkAjU0z9bemVL
	 qACTVZxA3krfbHE+o2qzyMw8iucMGbonbEwIeXF+CLyz2qaw69GIbwzd/EDkhGDb1J
	 ZkBqsK8LCLprlKgWMmAuEdDIFvm7RtBsz1drM3u+ucmd7tA40ksanO9Yzcqu4/Ygrc
	 nN9N2hPT6LPeKGeO3BIAKDNYTNyxZ3v5XWZ44PLQoTxhxds1mwYbTGkOXis4NSiMl0
	 0ra6Z+8TLUA9gHoz2PchgBF7jB7MBTcHmJmlx11U/bYuLMvaBMaXiVRiSymKJrn7Gf
	 9tcHX8loNHoIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8B6573B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Jun 2025 08:58:58 -0400 (EDT)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-60477f1a044so11686869a12.0
 for <cake@lists.bufferbloat.net>; Wed, 04 Jun 2025 05:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749041937; x=1749646737; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nVKBkOA92RjPnzIHEX6kAT/UGoAeV1C1yBdpYUjsWUI=;
 b=X0k1FCcpMOfos7s0i69UTqMOApRSTXktFs1hTEW9djwlIi+oXaSP41YUVU7khLjC4C
 n4cg4/QhAXm+TbY2jRoHpk7JX6jF3EsKziUdtA9Vk6nGwSSNKDQT8S7H+p0N7ZPLDpY+
 refRBX9edNHENDfuI6adHCZA7loVJumXYnmHQiCVErLewxVkK8JTyABTdCrmhIa3TtOi
 CERaejAcN1fHQc+9ZjwP9Sj1YdBIPh0/3DSv/SCGZ4DE3HF7TIOIn/Vi8BatF/FdqOWM
 s5Zi3fD2IyXOTkr0fIge5p5OVY/gdoUDgk+LBZAOgjbbI4Ob00qDpR7jd25ZFl1O9FO/
 bdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749041937; x=1749646737;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nVKBkOA92RjPnzIHEX6kAT/UGoAeV1C1yBdpYUjsWUI=;
 b=Li3R+F4fMMXvQyzgoKewwBAfHuIdSP+G+0iQ4DJvDklKeS4oAIopfaVvlBEV2UH2Ol
 4yYkxoQmYiMI3u9HP/ratNNmC5KkR73vZlpVMktXq6Ab1SHctmRYYnChK8ZXw5hD+0T0
 IWP8flfrcBgZQ5e9DMHXVCmo8heXXfvEV0xC69iImyTDZ0U/Gb4j2eDQD60LU/ITurrL
 caTYvtED49LH8nP1944RBEkg3EBMUN4iqikEmN/jOu/vli6PK7qRd6mBrwv2A7WPmFJP
 EA0M742yF2EC+S2bIu9fFjhFXXNELPkvyIGqUu5vI+V0Cw9k/xaACWH5AjlxGMqJXTad
 Vt2A==
X-Gm-Message-State: AOJu0YxPE9SnPNl3PMtQdng1218zcOtuyGi7LiHAw1u+d9p2Imuu79Fb
 mC73RculeFXIHQwreEXJQ2gqUWVuVZSDxI7b1a6Od5bGn1JvV6l2zajJ8cvaZv1f+LerzvIjhA6
 TZqQjFDdm1Keer997w1Miu9Lm/cQs1tk=
X-Gm-Gg: ASbGnctLGvAkgl37wh6H0Vgn3CWs1Z0BIhjDRQJWKVDXDE6wVYdaCxDTCi62HAH4X7z
 khilkING+o7KgpTISkv2TjcCcItuZ8SPMMF2g9KfJrI3gg40K1Lt6gf3UUEjJ9hsaRzNiW1Kbaw
 QDuINgxfgsgQMDu0yp3ZBDdHqSkkMi8bvO3NiZsNPjdsLK
X-Google-Smtp-Source: AGHT+IF+TSqgOXI3eWtQSUY8SJ6WjMJ+rYHUJcrm2vvlfJ4Nn4RrXuevTPRL77bYEAq+cVqow+78ntMn2uLwgmnEYjc=
X-Received: by 2002:a17:906:9fd1:b0:adb:23e0:9286 with SMTP id
 a640c23a62f3a-addf8c96a9amr246433966b.1.1749041937162; Wed, 04 Jun 2025
 05:58:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOjqhArk0_b2mOVT1M14Jf68Kvq54cf7KHE9Dma5C=Gz8Q@mail.gmail.com>
 <CAOp4FwRaMQsJ645_wgophQoKDvYonopMuMK2Q6W7+c002jT01g@mail.gmail.com>
In-Reply-To: <CAOp4FwRaMQsJ645_wgophQoKDvYonopMuMK2Q6W7+c002jT01g@mail.gmail.com>
Date: Wed, 4 Jun 2025 15:00:40 +0200
X-Gm-Features: AX0GCFvORH5Z4WqTzLSom-Gy2dwGSsFmS5fvBB9CCLsSVzHBscLT3R7KDjAHvEw
Message-ID: <CAJUtOOhf4h_sHnBNz5=me6Hi6XvJv404wpOs0RYAH4a_ypuVaQ@mail.gmail.com>
To: Loganaden Velvindron <loganaden@gmail.com>
Subject: Re: [Cake] MQ-CAKE: Scaling software rate limiting across CPU cores
 (Netdevconf 0x19 - 2025)
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============9209543640822641552=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9209543640822641552==
Content-Type: multipart/alternative; boundary="0000000000005ca5d00636be8f3b"

--0000000000005ca5d00636be8f3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yessir! I saw it on Netdevconf's Twitter, announced like this:

"Jonas K=C3=B6ppeler and Toke H=C3=B8iland-J=C3=B8rgensen on Scaling softwa=
re rate
limiting across CPU cores for cake. Passionate discussions going on!"
https://x.com/netdev01/status/1899757138093724021

So I couldn't wait to watch it <3 and it didn't let me down at all!

All the best,

Frank

Frantisek (Frank) Borsik


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Wed, Jun 4, 2025 at 2:53=E2=80=AFPM Loganaden Velvindron <loganaden@gmai=
l.com>
wrote:

> The exchange between Eric Dumazet and Toke was very
> interesting :-D
>
> Thanks for sharing !
>
>
> On Wed, 4 Jun 2025 at 16:20, Frantisek Borsik via Cake
> <cake@lists.bufferbloat.net> wrote:
> >
> > Hello to all,
> >
> > Recording:
> > https://www.youtube.com/watch?v=3D0TQ4brmRMeQ
> >
> > Slides:
> >
> https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-talk-slides/mq-c=
ake-slides.pdf
> >
> > Paper:
> > https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-talk-paper.pdf
> >
> > Netdevconf page with general info:
> >
> https://www.netdevconf.info/0x19/sessions/talk/mq-cake-scaling-software-r=
ate-limiting-across-cpu-cores.html
> >
> >
> > All the best,
> >
> > Frank
> >
> > Frantisek (Frank) Borsik
> >
> >
> > In loving memory of Dave T=C3=A4ht: 1965-2025
> >
> > https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
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
> >
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>

--0000000000005ca5d00636be8f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yessir! I saw it on Netdevconf&#39;s Twitter, announc=
ed like this:</div><div><br></div><div>&quot;Jonas K=C3=B6ppeler and Toke H=
=C3=B8iland-J=C3=B8rgensen on Scaling software rate limiting across CPU cor=
es for cake. Passionate discussions going on!&quot;</div><div><a href=3D"ht=
tps://x.com/netdev01/status/1899757138093724021">https://x.com/netdev01/sta=
tus/1899757138093724021</a><br></div><div><br></div><div>So I couldn&#39;t =
wait to watch it &lt;3 and it didn&#39;t let me down at all!</div><div><br>=
</div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNorma=
l" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" s=
tyle=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p c=
lass=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=
=A4ht:=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https:/=
/libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https:=
//libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsi=
k" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.co=
m/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><=
u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mo=
bile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.co=
m</a></p></div></div></div></div></div></div></div></div></div></div></div>=
</div></div><br></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 4, 2025 at 2:53=E2=80=AFP=
M Loganaden Velvindron &lt;<a href=3D"mailto:loganaden@gmail.com">loganaden=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">The exchange between E=
ric Dumazet and Toke was very<br>
interesting :-D<br>
<br>
Thanks for sharing !<br>
<br>
<br>
On Wed, 4 Jun 2025 at 16:20, Frantisek Borsik via Cake<br>
&lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@li=
sts.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello to all,<br>
&gt;<br>
&gt; Recording:<br>
&gt; <a href=3D"https://www.youtube.com/watch?v=3D0TQ4brmRMeQ" rel=3D"noref=
errer" target=3D"_blank">https://www.youtube.com/watch?v=3D0TQ4brmRMeQ</a><=
br>
&gt;<br>
&gt; Slides:<br>
&gt; <a href=3D"https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-ta=
lk-slides/mq-cake-slides.pdf" rel=3D"noreferrer" target=3D"_blank">https://=
www.netdevconf.org/0x19/docs/netdev-0x19-paper16-talk-slides/mq-cake-slides=
.pdf</a><br>
&gt;<br>
&gt; Paper:<br>
&gt; <a href=3D"https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-ta=
lk-paper.pdf" rel=3D"noreferrer" target=3D"_blank">https://www.netdevconf.o=
rg/0x19/docs/netdev-0x19-paper16-talk-paper.pdf</a><br>
&gt;<br>
&gt; Netdevconf page with general info:<br>
&gt; <a href=3D"https://www.netdevconf.info/0x19/sessions/talk/mq-cake-scal=
ing-software-rate-limiting-across-cpu-cores.html" rel=3D"noreferrer" target=
=3D"_blank">https://www.netdevconf.info/0x19/sessions/talk/mq-cake-scaling-=
software-rate-limiting-across-cpu-cores.html</a><br>
&gt;<br>
&gt;<br>
&gt; All the best,<br>
&gt;<br>
&gt; Frank<br>
&gt;<br>
&gt; Frantisek (Frank) Borsik<br>
&gt;<br>
&gt;<br>
&gt; In loving memory of Dave T=C3=A4ht: 1965-2025<br>
&gt;<br>
&gt; <a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/" r=
el=3D"noreferrer" target=3D"_blank">https://libreqos.io/2025/04/01/in-lovin=
g-memory-of-dave/</a><br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://www.linkedin.com/in/frantisekborsik" rel=3D"norefer=
rer" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><br>
&gt;<br>
&gt; Signal, Telegram, WhatsApp: +421919416714<br>
&gt;<br>
&gt; iMessage, mobile: +420775230885<br>
&gt;<br>
&gt; Skype: casioa5302ca<br>
&gt;<br>
&gt; <a href=3D"mailto:frantisek.borsik@gmail.com" target=3D"_blank">franti=
sek.borsik@gmail.com</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div>

--0000000000005ca5d00636be8f3b--

--===============9209543640822641552==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9209543640822641552==--
