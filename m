Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A06801CA421
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 08:36:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 06CBC3CB39;
	Fri,  8 May 2020 02:36:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588919811;
	bh=yN6AV45sOJ7T+sgO7NZDCnkhmqIQtpRYYOCuZyhhDpQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GPKWWRBp/1Wk5t5io1VJG2JfgJZ35iugYL+cKJKAgV0XsvGCsRs2rs5EHMLAWYGPM
	 eeH8N6qM4iE50suCwNrQhBD43bFFsjp1LCPTvZiRII1TdmIxxt3mggkrdZAGnDFkdm
	 Bv0uGD8KJakRkbnFp308YloLuAiu+GvauLQlbOXjYzUgRrfL+mIHaqmDKyhUvxSxRv
	 UhXi/5Vv5Ei2rRq5ubXnGKTWb9i9PFPOHNL20v2qbL2ALuvEA+EaOiWaDD3u4u0GN0
	 1zfc3wkagXqT82oKdsypxjcy1T0Ec2c+FMdezsLlmGIMpEsnRBGWl1mdHAzKONxC8U
	 A1NSZQb2NN/zQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com
 [IPv6:2607:f8b0:4864:20::a33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E586E3B2A4
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 02:36:48 -0400 (EDT)
Received: by mail-vk1-xa33.google.com with SMTP id k25so157186vkn.2
 for <cake@lists.bufferbloat.net>; Thu, 07 May 2020 23:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NRiKAwxUo7O0e62HFUVakBcIiFSW6BQZ2pG04+qHgzc=;
 b=oqldGGTpoHUtkz6SDWOvHUMRse7OxCOyRoS4EYdQEzSFKZmFvtfD4Tv8byMX87RhZo
 mnENX1E9Rt7K/REx4+ZMuvSmmczMRq8j0NsPICFo3Cb6msDY5LZBo8Bk7gmZ2F6B3kKz
 q2UEMLAY+MYRmiAf5jxb19Zf6RgVlCT4ECsktVdk5a1rJYv5bOb16rPxTO0h0UZE+P/i
 Kc9I0tnBq5FuORsyCDzsunSF55pgv9fsc65dN1B9iPHEnl31TNRuYnp9MSKJ10ByYCY+
 7+Z4rbDey0fLRGn2v4ehNi7IxdQlWR362MC/MpGFTr/02xgc0kcQQQ+mO3p/BbtSr5cG
 fbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NRiKAwxUo7O0e62HFUVakBcIiFSW6BQZ2pG04+qHgzc=;
 b=piWWhxZjd4Nl5D3Zc7U5mdjli31x/05hgcTK6UUg3BQYyakAjGFT1SIOx9TWiFv3mn
 hU6wP1JVZG+KKl8L2fLY4rB/tdu0Wglb8hDzbzfmV1m4CcWMKT2qvqMA8Q9NKKDM1/hJ
 ZuIFtn//ub/bRL2B+2PfN7+TTmIBR9Vp5zSvp8+Q+ui5T3ql5H8tHbovQ8NM0Zv+DAXc
 ldTPSWADFcb9COXD9KXU11f3SpPgopV9Im0tFqQ7AdBKei7dwdXiL3mBST0XmKTcZkax
 zWwzMmYuEvDhd4tZhjfloBkWDsCATFYUndTUggzNK2QDl+apV1inF3EMAIHpsCU+0HbY
 m9vw==
X-Gm-Message-State: AGi0PuYwqup0XkgSMqYAk59T8WKPlvUsJnFjHHvyShzfyMSoBCEomxS7
 mg5D7cYonx7fSKMTiS50PTMU1K85m6se977f/IA=
X-Google-Smtp-Source: APiQypLTNUWj1nfamqCkthY9N36DjPgOH7dWZG2vq1syKICDmD/vVbh1Uby/Hlwi4mRUiu/bEIfWplfSM0Wa9EvYZ1w=
X-Received: by 2002:a05:6122:4a:: with SMTP id q10mr579498vkn.47.1588919808351; 
 Thu, 07 May 2020 23:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
In-Reply-To: <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
From: Avakash bhat <avakash261@gmail.com>
Date: Fri, 8 May 2020 12:06:32 +0530
Message-ID: <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
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
 cake@lists.bufferbloat.net, "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: multipart/mixed; boundary="===============8831467485611014933=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8831467485611014933==
Content-Type: multipart/alternative; boundary="000000000000c0e0e805a51d385b"

--000000000000c0e0e805a51d385b
Content-Type: text/plain; charset="UTF-8"

Ok thanks so much for the clarifications.
That cleared it up quite a bit.

Thanks,
Avakash Bhat

On Thu, May 7, 2020 at 12:37 PM Sebastian Moeller <moeller0@gmx.de> wrote:

> I think that you will remove all redundant Backs in one go considerably
> advancing the new ACK in the queue. And more importantly, in most relevant
> modes cake will apply one queue per flow stochastically, so almost all
> packet's in a reverse ACK flow will be ACK with identical 5-tupel....
>
> On 7 May 2020 08:44:59 CEST, Avakash bhat <avakash261@gmail.com> wrote:
>>
>>
>> Thanks for the quick response. I also had a followup question.
>>
>> If the ack filter adds the new ack to the tail of the queue after
>> removing an ack from the queue, won't it be starving the ack?
>> The replaced ack was much ahead in the queue than the ack we replaced at
>> the tail right?
>>
>> Thanks,
>> Avakash Bhat
>>
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>

--000000000000c0e0e805a51d385b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok thanks so much for the clarifications.=C2=A0<div>That c=
leared=C2=A0it up quite a bit.=C2=A0</div><div><br></div><div><div>Thanks,=
=C2=A0</div><div>Avakash Bhat</div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 7, 2020 at 12:37 PM Se=
bastian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de" target=3D"_blank">mo=
eller0@gmx.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div>I think that you will remove all redundant Backs in one g=
o considerably advancing the new ACK in the queue. And more importantly, in=
 most relevant modes cake will apply one queue per flow stochastically, so =
almost all packet&#39;s in a reverse ACK flow will be ACK with identical 5-=
tupel....<br><br><div class=3D"gmail_quote">On 7 May 2020 08:44:59 CEST, Av=
akash bhat &lt;<a href=3D"mailto:avakash261@gmail.com" target=3D"_blank">av=
akash261@gmail.com</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D=
"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<div dir=3D"ltr"><br>Thanks for the quick response. I also had a followup q=
uestion.=C2=A0<div><br><div>If the ack filter adds the new ack to the tail =
of the queue after removing an ack from the queue, won&#39;t it be starving=
 the ack?=C2=A0</div><div>The replaced ack was much ahead in the queue than=
 the ack we replaced at the tail right?</div><div><br></div><div>Thanks,</d=
iv><div>Avakash Bhat</div></div></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail. Pl=
ease excuse my brevity.</div></blockquote></div>

--000000000000c0e0e805a51d385b--

--===============8831467485611014933==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8831467485611014933==--
