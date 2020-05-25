Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8219A1E065B
	for <lists+cake@lfdr.de>; Mon, 25 May 2020 07:18:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C6BE23CB39;
	Mon, 25 May 2020 01:18:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590383891;
	bh=KXI1059z6Z/3rz4e7ucrLQSlAYAxYuNGLtrTMJGncns=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fntdHA5LGobDle8H0wKcyFaw/u8+1lO8/VA5Zs/DWtmI4i08k/pkfj6JyJCb3HohH
	 /B0ON2xwxOPftZx+vL8ciVAI0rF6RHLKmJ6dQ+7tKgMYiOtGis2Gu9LxpgLFGqMpbe
	 h3WV2J/8S4bolJUSzlejdXyHmDZM7OpbmWgJGTVoPmK0yoz0DKMBQfkuwbKk6xSZlN
	 KJYwl8c7lkQo7x2x1FmmBpHcvLpzPBmPiIPDvIbAHG13vuGDOeFJ57alMHF+gElldf
	 gMVvSNm1ckLbTo2emyCIjYv9cs7LFBKUT9Y5WFFQep6uOnaSAoPxVQ3jySUF3rHFmj
	 Rrd8KvvgARLhw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com
 [IPv6:2607:f8b0:4864:20::935])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 94DB73B29D
 for <cake@lists.bufferbloat.net>; Mon, 25 May 2020 01:18:10 -0400 (EDT)
Received: by mail-ua1-x935.google.com with SMTP id 36so5723390uaf.9
 for <cake@lists.bufferbloat.net>; Sun, 24 May 2020 22:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WqhblJUeYNqkEJvHhc49SOJHnOdQA9KcXFKb5DYt+JA=;
 b=BSrE2fki0qKdQt52CGRcVknO09xb6E1tLO3TWGSRSXXe9npGVX94yjRskIAiUnN70e
 wINlAh2rmF9++87Qz80VGZyWkFEeOI0CypEqa79Z2HBgMUqiYO3zbUkt9Fus8auM/RnL
 bTZu1TS6tqrZloT5cr+mmGUSVmMdhACyojMH+eGoHAqBEytskCudyGTjmSHiqI3xY2ZE
 lKtQ50UnyyEL78rktda12WgmcZttfrReqN442uRFLfXzTQZok5EqRJZ+NzrTCElFzyWS
 1pvLajN1eD/joUObNtZ++ge134DZffF6+P1tQVCWezzvR76NgzC0ztXroJl3gtdjL11x
 hyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WqhblJUeYNqkEJvHhc49SOJHnOdQA9KcXFKb5DYt+JA=;
 b=ejeRoG8MvBWoS6eA7pQs3uep371zVmj518p6QhKtjHBYksLNWSfJGqGYQ9G/bfCMfp
 kOTEgv9xbINtTBAflB7mNm2N/C7cDOk2Ex0n5c+fcniU4S7SsTvW/253Vpx7gev1xjoZ
 A0P8e6qxNQ1pb987VRo0mIoKvMN+4diVCOoX5wJk9vwJJvZogzNbvmJx8u6Dnmh+0xSJ
 XFgRpVAdnpDMLgxm1D/B20BJMhQDjIISDZTnYn5K/VT3uZtZVerTbtWVaBR4lmGICwSB
 M3BionxM2jI8Dw+NlrG6YLUv6iVKd/IUKcGBAGALlba/xy0g8LcWNx6GRd8jTlLJBGAP
 X8dA==
X-Gm-Message-State: AOAM532GKWopbB6ARc8YUgE7esLX1ggHPMfQJBqmJ+YeiWn10lQC/qFR
 5ta3fcgEClZsMuxyBQ/8txnzGzSe8nZlyPC82ESTpbU2
X-Google-Smtp-Source: ABdhPJyfyU3fXhqCz/Yw+MTQzOjJULfBrJxYeDVbSSEF2fG9ksO1GDmMsKvK8xBIu8wyhsSkHpyk2JlYaOssirXrnrw=
X-Received: by 2002:ab0:36ba:: with SMTP id v26mr4124543uat.49.1590383889770; 
 Sun, 24 May 2020 22:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
In-Reply-To: <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
From: Avakash bhat <avakash261@gmail.com>
Date: Mon, 25 May 2020 10:47:53 +0530
Message-ID: <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: multipart/mixed; boundary="===============6026581840540602569=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6026581840540602569==
Content-Type: multipart/alternative; boundary="000000000000ce6f1305a6721a1b"

--000000000000ce6f1305a6721a1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
We had another query we would like to resolve. We wanted to verify the
working of ack filter in ns-3,
so we decided to replicate the Fig 6 graph in the CAKE paper(
https://ieeexplore.ieee.org/document/8475045).
While trying to build the topology we realized that we do not know the
number of packets or bytes sent from
the source to the destination for each of the TCP connections ( We are
assuming it is a point to point connection with 4 TCP flows).

Could we get a bit more details about how the experiment was conducted?

Also is this the best way to verify the correctness of our implementation?

Thanks,
Avakash Bhat

On Fri, May 8, 2020 at 9:11 PM Dave Taht <dave.taht@gmail.com> wrote:

> acks at the time you have reached a point of dropping them
> significantly have filled the pipe, also.
>
> What I saw here was that the first flow to really get going, and
> really get dropped, dominated over the others,
> because I thought it was consistently ending up in the priority queue.
>
> http://blog.cerowrt.org/post/ack_filtering/
>
> Look, all I'm proposing is this idea be tried and tested. Cynically...
> since there's a new model coming out as
> the result of this work, it immediately turns into something a good
> paper can hing on.
>
> On Fri, May 8, 2020 at 8:20 AM Jonathan Morton <chromatix99@gmail.com>
> wrote:
> >
> > >> The ACK filter runs on enqueue, so if a queue has only ACKs in it, i=
t
> > >> will never accumulate anything in the first place...
> > >
> > > but the side effect is that on dequeue, it flips it into the fast
> > > queue drr rotation, not the slow, so it can't accumulate
> > > as many acks before delivering the one it has left.
> > >
> > > Or so I thought, way back when....
> >
> > The ack filter converts a stream of acks that might be treated as a bul=
k
> flow into a sparse flow, which is delivered promptly.  This is a good
> thing; an ack should not be held back solely to see whether another one
> will arrive.
> >
> > I think of it as an optimisation to reduce delay of the information in
> the ack stream, not solely as a way to reduce the bandwidth consumed by t=
he
> ack stream; the latter is a happy side effect.
> >
> >  - Jonathan Morton
>
>
>
> --
> Make Music, Not War
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
>

--000000000000ce6f1305a6721a1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>We had another query we would like to resolve.=
 We wanted to verify the working of ack filter in ns-3,=C2=A0</div><div>so =
we decided to replicate the Fig 6 graph in the CAKE paper(<a href=3D"https:=
//ieeexplore.ieee.org/document/8475045">https://ieeexplore.ieee.org/documen=
t/8475045</a>).=C2=A0</div><div>While trying to build the topology we reali=
zed that we do not know the number of packets or bytes sent from=C2=A0</div=
><div>the source to the destination for each of the TCP connections ( We ar=
e assuming it is a point to point connection with 4 TCP flows).=C2=A0</div>=
<div><br></div><div>Could we get a bit more details about how the experimen=
t was conducted?</div><div><br></div><div>Also is this the best way to veri=
fy the correctness of our implementation?</div><div><br></div><div>Thanks,<=
/div><div>Avakash Bhat</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 8, 2020 at 9:11 PM Dave Taht &lt;=
<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">acks at the time =
you have reached a point of dropping them<br>
significantly have filled the pipe, also.<br>
<br>
What I saw here was that the first flow to really get going, and<br>
really get dropped, dominated over the others,<br>
because I thought it was consistently ending up in the priority queue.<br>
<br>
<a href=3D"http://blog.cerowrt.org/post/ack_filtering/" rel=3D"noreferrer" =
target=3D"_blank">http://blog.cerowrt.org/post/ack_filtering/</a><br>
<br>
Look, all I&#39;m proposing is this idea be tried and tested. Cynically...<=
br>
since there&#39;s a new model coming out as<br>
the result of this work, it immediately turns into something a good<br>
paper can hing on.<br>
<br>
On Fri, May 8, 2020 at 8:20 AM Jonathan Morton &lt;<a href=3D"mailto:chroma=
tix99@gmail.com" target=3D"_blank">chromatix99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt;&gt; The ACK filter runs on enqueue, so if a queue has only ACKs i=
n it, it<br>
&gt; &gt;&gt; will never accumulate anything in the first place...<br>
&gt; &gt;<br>
&gt; &gt; but the side effect is that on dequeue, it flips it into the fast=
<br>
&gt; &gt; queue drr rotation, not the slow, so it can&#39;t accumulate<br>
&gt; &gt; as many acks before delivering the one it has left.<br>
&gt; &gt;<br>
&gt; &gt; Or so I thought, way back when....<br>
&gt;<br>
&gt; The ack filter converts a stream of acks that might be treated as a bu=
lk flow into a sparse flow, which is delivered promptly.=C2=A0 This is a go=
od thing; an ack should not be held back solely to see whether another one =
will arrive.<br>
&gt;<br>
&gt; I think of it as an optimisation to reduce delay of the information in=
 the ack stream, not solely as a way to reduce the bandwidth consumed by th=
e ack stream; the latter is a happy side effect.<br>
&gt;<br>
&gt;=C2=A0 - Jonathan Morton<br>
<br>
<br>
<br>
-- <br>
Make Music, Not War<br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-435-0729<br>
</blockquote></div>

--000000000000ce6f1305a6721a1b--

--===============6026581840540602569==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6026581840540602569==--
