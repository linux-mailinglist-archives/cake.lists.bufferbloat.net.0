Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CA98B656F
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:18:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CBB213CB51;
	Mon, 29 Apr 2024 18:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429132;
	bh=F5vzc4hDGa9ibCCKai8mYlmoSBHiS9RkdlEGhjAEudE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=IxZ0VlH3lr94DDN8gbZ+oTiDeS1Ve9jupYhv156KfIvlRCECOqdzyltkP6glLF4OW
	 35E9utoGAHDsQEYc6RISDW+1Uah6XjM/65VIDnCAkRfrjdgYTS2DSHH7tmxKCIMmD1
	 pLLxxHu9XnpLhv3CNv/OTDUlQnEV0MNkrPGPYXaPXNcTnRq8VTfnKOHj3qrqNscHAQ
	 3tpkwVmxdbT5h/YisHwQMbJgQKacqUZ/gkYLeWc0Htf2k333r5r68G3jbHk5z+BcIq
	 q5236tM4zmpZGqfn2eso43cSwGkeCOY3OyPTL0kEIgF2f2sXzlPUDJWdX5arOPrxLD
	 zWE0tce4J65wQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 57EB33CB37
 for <cake@lists.bufferbloat.net>; Mon, 17 Oct 2022 22:51:45 -0400 (EDT)
Received: by mail-oi1-x230.google.com with SMTP id m81so14254670oia.1
 for <cake@lists.bufferbloat.net>; Mon, 17 Oct 2022 19:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=waveform.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=iF8j9aqQA21xlT5uakMexTernI1VUxeqlYeGTU9Mx24=;
 b=jcXHI6XKXieBhcWAH9YCihONMpEgAFVUuFOiqsXPF3n5qBx/6BlcXSuBpUYYkayEI/
 fZsV1GAjnjiCXIl92q67h6RJHCk9Zyl8nPZMZxLgLrcyiKv6oVpsi5Q7WfFRUcAS8RUO
 OdSbWzyzA/lp+WRbkqp1b4mYZncut0meg2pOt94yOPoghHbFsoZN7M27vlNQj8/sS56Z
 wsQTVG6Ee4748sXVzEJzh+pLyqdJbChGGa4AT5djoVBF5/mm2Fmc8UkfIxgPgM4raaMz
 v2nTtCBdOWSAWrUIERCbF1mDMJiwPpcEBSrY3LPANDBzrD85nD8L6U2t2ahBxbSJ3prH
 JiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iF8j9aqQA21xlT5uakMexTernI1VUxeqlYeGTU9Mx24=;
 b=KXHNiZlOAqEchXePhwtUCUJpCoWAWg0pqAHrutMRhJgTC2VyM+0CtRXu/33pV1eSFb
 8XoZOowGmHFGAkx7nDVac5CzJ6GWWm2xlmW93saPHND8yKqDTrvbWBuSNQH8XtcOrD1W
 YZR+mU5qHT1hQq1isaEaK9J6HNQYzGsdTKOMa/8sY5s93ko0F8nKzCUqoZyz7qg11hyU
 V3iIeUVjobJMLyaQXrZtL80qz5DQjL1lK6E+m8TFunKV4kiBrZKgO3XQHcufo9NSRqwi
 ZuT4mIqgHayKuKepW7IwPDq0R1PCNgJNO00Z6te6jtXdqSVdL9hpdLBvR2lks9WZ9sJV
 TDKA==
X-Gm-Message-State: ACrzQf1JGyB+S0RGCrf2/AmYkuxQdLmTSB88BmgbLXVA22PaaNYTUMVr
 fq31D8SFCvFAG1PPIONmwso46eXfW9Zp4vE3F7Nae2Sgc0b9Q15RQWobQbx8SYxCOQ8+s0OXxcH
 gxkkqfHDh1AfEgbRXXSk5/Na+4tmQLCYc42Fg4TObSvwOZu3VHGa5slt01CB1JwmIzxXXkeHdG5
 d8zvnIt1nNfmG3ZA==
X-Google-Smtp-Source: AMsMyM5ovVzc7hTiI0b66rEYlNxfay/S87+HEo70InQTuKFcRzdhS8qJmxDaHeGMS+RDKL7Le/SS1Rb9obYbwjIXCsQ=
X-Received: by 2002:a05:6808:138e:b0:355:2b42:1580 with SMTP id
 c14-20020a056808138e00b003552b421580mr6147013oiw.91.1666061504461; Mon, 17
 Oct 2022 19:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
In-Reply-To: <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
Date: Mon, 17 Oct 2022 19:50:52 -0700
Message-ID: <CACTgmGpgDjWF4d_+Kga4CL4vxb-YQ91Lu1U6Zt5vca0EGSwQ2w@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
	about bufferbloat
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
From: Sina Khanifar via Cake <cake@lists.bufferbloat.net>
Reply-To: Sina Khanifar <sina@waveform.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, Stuart Cheshire <cheshire@apple.com>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============1461415946214307398=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1461415946214307398==
Content-Type: multipart/alternative; boundary="00000000000025d18f05eb462c73"

--00000000000025d18f05eb462c73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Positive or negative, I can claim a bit of credit for this video :). We've
been working with LTT on a few projects and we pitched them on doing
something around bufferbloat. We've seen more traffic to our Waveforn test
than ever before, which has been fun!

On Mon, Oct 17, 2022 at 7:45 PM Dave Taht via Bloat <
bloat@lists.bufferbloat.net> wrote:

> On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire <cheshire@apple.com>
> wrote:
> >
> > On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
> >
> > > This was so massively well done, I cried. Does anyone know how to get
> in touch with the ifxit folk?
> > >
> > > https://www.youtube.com/watch?v=3DUICh3ScfNWI
> >
> > I=E2=80=99m surprised that you liked this video. It seems to me that it=
 repeats
> all the standard misinformation. The analogy they use is the standard
> terrible example of waiting in a long line at a grocery store, and the
> =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump the l=
ine, angering everyone
> behind them=E2=80=9D.
>
> Accuracy be damned. The analogy to common experience resonates more.
>
> >
> > Some quotes from the video:
> >
> > > it would be so much more efficient for them to let you skip the line
> and just check out, especially since you=E2=80=99re in a hurry, but they=
=E2=80=99re rudely
> refusing
>
> I think the person with the cheetos pulling out a gun and shooting
> everyone in front of him (AQM) would not go down well.
>
> > > to go back to our grocery store analogy this would be like if a worke=
r
> saw you standing at the back ... and either let you skip to the front of
> the line or opens up an express lane just for you
>
> Actually that analogy is fairly close to fair queuing. The multiple
> checker analogy is one of the most common analogies in queue theory
> itself.
>
> >
> > The video describes the problem of bufferbloat, and then describes the
> same failed solution that hasn=E2=80=99t worked for the last three decade=
s.
>
> Hmm? It establishes the scenario, explains the problem *quickly*,
> disses gamer routers for not getting it right..  *points to an
> accurate test*, and then to the ideas and products that *actually
> work* with "smart queueing", with a screenshot of the most common
> (eero's optimize for gaming and videoconferencing), and fq_codel and
> cake *by name*, and points folk at the best known solution available,
> openwrt.
>
> Bing, baddabang, boom. Also the comments were revealing. A goodly
> percentage already knew the problem, more than a few were inspired to
> take the test,
> there was a whole bunch of "Aha!" success stories and 360k views,
> which is more people than we've ever been able to reach in for
> example, a nanog conference.
>
> I loved that folk taking the test actually had quite a few A results,
> without having had to do anything. At least some ISPs are getting it
> more right now!
>
> At this point I think gamers in particular know what "brands" we've
> tried to establish - "Smart queues", "SQM", "OpenWrt", fq_codel and
> now "cake" are "good" things to have, and are stimulating demand by
> asking for them,   It's certainly working out better and better for
> evenroute, firewalla, ubnt and others, and I saw an uptick in
> questions about this on various user forums.
>
> I even like that there's a backlash now of people saying "fixing
> bufferbloat doesn't solve everything" -
>
> >  Describing the obvious simple-minded (wrong) solution that any normal
> person would think of based on their personal human experience waiting in
> grocery stores and airports, is not describing the solution to bufferbloa=
t.
> The solution to bufferbloat is not that if you are privileged then you ge=
t
> to =E2=80=9Cskip to the front of the line=E2=80=9D. The solution to buffe=
rbloat is that
> there is no line!
>
> I like the idea of a guru floating above a grocery cart with a better
> string of explanations, explaining
>
>    - "no, grasshopper, the solution to bufferbloat is no line... at all".
>
> >
> > With grocery stores and airports people=E2=80=99s arrivals are independ=
ent and
> not controlled. There is no way for a grocery store or airport to generat=
e
> backpressure to tell people to wait at home when a queue begins to form.
> The key to solving bufferbloat is generating timely backpressure to preve=
nt
> the queue forming in the first place, not accepting a huge queue and then
> deciding who deserves special treatment to get better service than all th=
e
> other peons who still have to wait in a long queue, just like before.
>
> I am not huge on the word "backpressure" here. Needs to signal the
> other side to slow down, is more accurate. So might say timely
> signalling rather than timely backpressure?
>
> Other feedback I got  was that the video was too smarmy (I agree),
> different audiences than gamers need different forms of outreach...
>
> but to me, winning the gamers has always been one of the most
> important things, as they make a lot of buying decisions, and they
> benefit the most for
> fq and packet prioritization as we do today in gamer routers and in
> cake + qosify.
>
> maybe that gets in the way of more serious markets. Certainly I would
> like another video explaining what goes wrong with videoconferencing.
>
>
>
>
>
>
> >
> > Stuart Cheshire
> >
>
>
> --
> This song goes out to all the folk that thought Stadia would work:
>
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--00000000000025d18f05eb462c73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Positive or negative, I can claim a bit of credit for thi=
s video :). We&#39;ve been working with LTT on a few projects and we pitche=
d them on doing something around bufferbloat. We&#39;ve seen more traffic t=
o our Waveforn test than ever before, which has been fun!=C2=A0</div><div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Oct 17, 2022 at 7:45 PM Dave Taht via Bloat &lt;<a href=3D"mailto:bloat@li=
sts.bufferbloat.net">bloat@lists.bufferbloat.net</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshir=
e &lt;<a href=3D"mailto:cheshire@apple.com" target=3D"_blank">cheshire@appl=
e.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast &lt;<a href=3D"m=
ailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wifi-fas=
t@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; This was so massively well done, I cried. Does anyone know how to=
 get in touch with the ifxit folk?<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://www.youtube.com/watch?v=3DUICh3ScfNWI" rel=3D"=
noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3DUICh3ScfNWI=
</a><br>
&gt;<br>
&gt; I=E2=80=99m surprised that you liked this video. It seems to me that i=
t repeats all the standard misinformation. The analogy they use is the stan=
dard terrible example of waiting in a long line at a grocery store, and the=
 =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump the li=
ne, angering everyone behind them=E2=80=9D.<br>
<br>
Accuracy be damned. The analogy to common experience resonates more.<br>
<br>
&gt;<br>
&gt; Some quotes from the video:<br>
&gt;<br>
&gt; &gt; it would be so much more efficient for them to let you skip the l=
ine and just check out, especially since you=E2=80=99re in a hurry, but the=
y=E2=80=99re rudely refusing<br>
<br>
I think the person with the cheetos pulling out a gun and shooting<br>
everyone in front of him (AQM) would not go down well.<br>
<br>
&gt; &gt; to go back to our grocery store analogy this would be like if a w=
orker saw you standing at the back ... and either let you skip to the front=
 of the line or opens up an express lane just for you<br>
<br>
Actually that analogy is fairly close to fair queuing. The multiple<br>
checker analogy is one of the most common analogies in queue theory<br>
itself.<br>
<br>
&gt;<br>
&gt; The video describes the problem of bufferbloat, and then describes the=
 same failed solution that hasn=E2=80=99t worked for the last three decades=
.<br>
<br>
Hmm? It establishes the scenario, explains the problem *quickly*,<br>
disses gamer routers for not getting it right..=C2=A0 *points to an<br>
accurate test*, and then to the ideas and products that *actually<br>
work* with &quot;smart queueing&quot;, with a screenshot of the most common=
<br>
(eero&#39;s optimize for gaming and videoconferencing), and fq_codel and<br=
>
cake *by name*, and points folk at the best known solution available,<br>
openwrt.<br>
<br>
Bing, baddabang, boom. Also the comments were revealing. A goodly<br>
percentage already knew the problem, more than a few were inspired to<br>
take the test,<br>
there was a whole bunch of &quot;Aha!&quot; success stories and 360k views,=
<br>
which is more people than we&#39;ve ever been able to reach in for<br>
example, a nanog conference.<br>
<br>
I loved that folk taking the test actually had quite a few A results,<br>
without having had to do anything. At least some ISPs are getting it<br>
more right now!<br>
<br>
At this point I think gamers in particular know what &quot;brands&quot; we&=
#39;ve<br>
tried to establish - &quot;Smart queues&quot;, &quot;SQM&quot;, &quot;OpenW=
rt&quot;, fq_codel and<br>
now &quot;cake&quot; are &quot;good&quot; things to have, and are stimulati=
ng demand by<br>
asking for them,=C2=A0 =C2=A0It&#39;s certainly working out better and bett=
er for<br>
evenroute, firewalla, ubnt and others, and I saw an uptick in<br>
questions about this on various user forums.<br>
<br>
I even like that there&#39;s a backlash now of people saying &quot;fixing<b=
r>
bufferbloat doesn&#39;t solve everything&quot; -<br>
<br>
&gt;=C2=A0 Describing the obvious simple-minded (wrong) solution that any n=
ormal person would think of based on their personal human experience waitin=
g in grocery stores and airports, is not describing the solution to bufferb=
loat. The solution to bufferbloat is not that if you are privileged then yo=
u get to =E2=80=9Cskip to the front of the line=E2=80=9D. The solution to b=
ufferbloat is that there is no line!<br>
<br>
I like the idea of a guru floating above a grocery cart with a better<br>
string of explanations, explaining<br>
<br>
=C2=A0 =C2=A0- &quot;no, grasshopper, the solution to bufferbloat is no lin=
e... at all&quot;.<br>
<br>
&gt;<br>
&gt; With grocery stores and airports people=E2=80=99s arrivals are indepen=
dent and not controlled. There is no way for a grocery store or airport to =
generate backpressure to tell people to wait at home when a queue begins to=
 form. The key to solving bufferbloat is generating timely backpressure to =
prevent the queue forming in the first place, not accepting a huge queue an=
d then deciding who deserves special treatment to get better service than a=
ll the other peons who still have to wait in a long queue, just like before=
.<br>
<br>
I am not huge on the word &quot;backpressure&quot; here. Needs to signal th=
e<br>
other side to slow down, is more accurate. So might say timely<br>
signalling rather than timely backpressure?<br>
<br>
Other feedback I got=C2=A0 was that the video was too smarmy (I agree),<br>
different audiences than gamers need different forms of outreach...<br>
<br>
but to me, winning the gamers has always been one of the most<br>
important things, as they make a lot of buying decisions, and they<br>
benefit the most for<br>
fq and packet prioritization as we do today in gamer routers and in<br>
cake + qosify.<br>
<br>
maybe that gets in the way of more serious markets. Certainly I would<br>
like another video explaining what goes wrong with videoconferencing.<br>
<br>
<br>
<br>
<br>
<br>
<br>
&gt;<br>
&gt; Stuart Cheshire<br>
&gt;<br>
<br>
<br>
-- <br>
This song goes out to all the folk that thought Stadia would work:<br>
<a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-=
6981366665607352320-FXtz" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXt=
z</a><br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div></div>

--00000000000025d18f05eb462c73--

--===============1461415946214307398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1461415946214307398==--
