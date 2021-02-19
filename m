Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E45731FFDC
	for <lists+cake@lfdr.de>; Fri, 19 Feb 2021 21:34:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B96183CB38;
	Fri, 19 Feb 2021 15:33:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613766839;
	bh=KD1rvYoO0jOMupkWtLw3Rlm65ftjmTqmjV6XsvZ6SGM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cvWFFgP3vZXDFIQ5tywYGzvH31vjK/MHiTaLCcwko4UNX1V9xOklyUKlIPesiHlip
	 ywr28tncBQq0did4LE8GZxuYkwU6GJVOrLwOZECxBCnd8pKQ7abC/M3XOGUAXMhHOK
	 RqlJAn4qo4E+l1KTGoEEmnVUjr8jnrSmRNQVKO6JSUCk97nDEyc914/5eMjmp77Uab
	 WfaIibVaZt3P6bPHzdBUDn9jHJ/DfYxP38tdMzldJIJWWK8EkEpuBT9FeY+MFs18NS
	 gBr2QpKgNOzwzTeR2OiMtlw08Q6OK1lsSjOohj6zBVJk1cn9Bp6c3O1d1QWiSG+RRc
	 6RC6x7RKb104Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 334213B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 15:33:59 -0500 (EST)
Received: by mail-io1-xd33.google.com with SMTP id f20so6967428ioo.10
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 12:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iJgsXw+ktNHpWHvy5fw35KRi1zkNzaG8VweqmOgIpaM=;
 b=JmWmPRIx+20sBZ4B/Zm1p5/WAvrilBfy6jX8/ohIkAjImN9NDmnF4dAPDPtdxyA697
 GOIY9BLReGFqklvqgGi6x1IYqv5SjhMxB0msqbZ9iH+ZaIBH1T9GbvxMglZCkYhCevSc
 zC9ndGzqVoHscPG2pqKooVhJwJOyEGcW4M4dCcsDi2g4ThnedntOAFeENH6x9Flv+F/3
 ILixwREGosb+D1r1CJDFGuzKghmjB8tCoINChHemOS9ZdMtB1HEpnEOZg44HgjP8nBbb
 0ajO1fEFNlSijNqLbqwcgbEj7eNOordCmAmp32K7ssD54D5fYG6uyPZZ2tyoub+1Ffp3
 atQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iJgsXw+ktNHpWHvy5fw35KRi1zkNzaG8VweqmOgIpaM=;
 b=GV5rodXfxr4i1OfbNwKVSJwEv8HaDp5dnJ4yKaWwDwYe/0+QYKx0Q2tunV/E2S5P2e
 GRt0wg6EvvezOK3WIrL0c9Tva9izwdY+P+sBcYHUvoR8ccTbPld65BkbOdkAjC5Kf28j
 9vgc8Gc9hGJzFoH2M1UnlLJYj+ywS9/u6qDJt8QyTQwt2+upkUrh5Bvr8LPt6vodJqTW
 gSMQ8LbNRYrzzHjQqBd8U+hb84PrI/uHd5AH6KjanJBc0dYDfg/53cniJl+Q73SWlpon
 9/cOYjkfn4Kdgv7izyfNmZ4Wtu+Ec+NRSXARt6/Adza2A/gEnF3NDQkh3nLB6WoSkiIm
 qwhw==
X-Gm-Message-State: AOAM532e5VuVfxQCpOWnwnvFQSDWNLNoSh4/byVT0Uy1WLp0unzP7hnN
 soiyNLUZ/gdlFMkptBmesVPv6c8a/lf0YxmZeJozTxB+QUsyow==
X-Google-Smtp-Source: ABdhPJzY3L/UBsSVif+GexJgAfAukiguG5Umv69AheMExt+I3dG0obU7NDC0qafC0vQ2+9o6e3xGpumNcw6OhaAiWoM=
X-Received: by 2002:a02:3541:: with SMTP id y1mr11352105jae.66.1613766838435; 
 Fri, 19 Feb 2021 12:33:58 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
In-Reply-To: <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Fri, 19 Feb 2021 15:33:44 -0500
Message-ID: <CANmPAYGP0pM5ngV3AJGCumy=CKqgdvyNu6A23w4EXvA20yOs+w@mail.gmail.com>
To: John Sager <john@sager.me.uk>
Subject: Re: [Cake] Enforcing video quality question
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
Cc: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============8354882487014743353=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8354882487014743353==
Content-Type: multipart/alternative; boundary="00000000000027c48605bbb65f9e"

--00000000000027c48605bbb65f9e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"I'll put together a toy iptables rules file and a toy script with the
necessary tc commands. "

Wow -- that would be really appreciated. Question: will you need to
explicitly call out the inside IP address of the host being shaped? Or, can
it be set to shape each inside host?

I'm not sure you can post to mailing list but maybe give it a shot (since
there may be general interest) and if it fails email me directly?

Thanks!!!

Peter

On Fri, Feb 19, 2021 at 2:04 PM John Sager <john@sager.me.uk> wrote:

> Yes. The marks are set on egress so you can select on inside IP address,
> port, protocol - in fact many characteristics that iptables rules can tes=
t
> for. I'll put together a toy iptables rules file and a toy script with th=
e
> necessary tc commands. It'll take me a few days though as I'm busy with
> other stuff currently.
>
> PS does the cake list allow attachments? It will be a small zip file.
>
> John
>
> On 19/02/2021 15:02, Peter Lepeska wrote:
> > Hi John
> >
> > Does this result in the ability to set per internal host max ingress
> > bandwidth? If so, any chance you can share a snippet of a script? I wil=
l
> be
> > trying to reproduce your setup.
> >
> > Thank you!
> >
> > Peter
> >
> > On Fri, Feb 19, 2021 at 7:16 AM John Sager <john@sager.me.uk
> > <mailto:john@sager.me.uk>> wrote:
> >
> >     That's basically what I do. I set marks on outgoing traffic in the
> mangle
> >     table which are copied to connmark before egress. Then on ingress t=
he
> >     connmark is restored to the packet and punted to ifb0 using 'action
> >     connmark
> >     action mirred egress redirect dev $IFB' as an ingress filter on the
> >     incoming
> >     interface (ppp0 in my case). Then I have HTB classes on ifb0 which
> set rate
> >     limits for different traffic classes indicated by the marks. I have
> only 6
> >     traffic classes (I bundle all video into one class), but as marks
> are 32
> >     bits wide there is lots of scope for classes for individual IP
> addresses.
> >
> >     John
> >
> >     On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8rgensen via Cake wrot=
e:
> >      > Peter Lepeska <bizzbyster@gmail.com <mailto:bizzbyster@gmail.com
> >>
> >     writes:
> >      >
> >      >> A user on the OpenWrt forum suggested hashlimit rules supported
> by
> >      >> iptables. How does that idea sound to you?
> >      >
> >      > That will result in a cliff-edge policer (i.e., as soon as a
> device goes
> >      > over its limits it will see every packet get dropped). This
> doesn't
> >      > interact too well with the burstiness of TCP, so you'll likely g=
et
> >      > erratic behaviour of the traffic if you do that. Doing the same
> thing
> >      > with HTB means the router will queue+shape each class (and with
> FQ-CoDel
> >      > on the leaves, you'll get a nice AQM behaviour as well), so that
> will be
> >      > smoother and less prone to bloat :)
> >      >
> >      > -Toke
> >      > _______________________________________________
> >      > Cake mailing list
> >      > Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
> >      > https://lists.bufferbloat.net/listinfo/cake
> >      >
> >     _______________________________________________
> >     Cake mailing list
> >     Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
> >     https://lists.bufferbloat.net/listinfo/cake
> >
>

--00000000000027c48605bbb65f9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;I&#39;ll put together a toy iptables rules file and =
a toy script with the<br>necessary tc commands.=C2=A0&quot;<div><br></div><=
div>Wow -- that would be really appreciated. Question: will you need to exp=
licitly call out the inside IP address of the host being shaped? Or, can it=
 be set to shape each inside host?</div><div><br></div><div>I&#39;m not sur=
e you can post to mailing list but maybe give it a shot (since there may be=
 general interest) and if it fails email me directly?</div><div><br></div><=
div>Thanks!!!</div><div><br></div><div>Peter</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 19, 2021 at 2=
:04 PM John Sager &lt;<a href=3D"mailto:john@sager.me.uk">john@sager.me.uk<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Y=
es. The marks are set on egress so you can select on inside IP address, <br=
>
port, protocol - in fact many characteristics that iptables rules can test =
<br>
for. I&#39;ll put together a toy iptables rules file and a toy script with =
the <br>
necessary tc commands. It&#39;ll take me a few days though as I&#39;m busy =
with <br>
other stuff currently.<br>
<br>
PS does the cake list allow attachments? It will be a small zip file.<br>
<br>
John<br>
<br>
On 19/02/2021 15:02, Peter Lepeska wrote:<br>
&gt; Hi John<br>
&gt; <br>
&gt; Does this=C2=A0result in the ability to set per internal host max ingr=
ess <br>
&gt; bandwidth? If so, any chance you can share a snippet of a script? I wi=
ll be <br>
&gt; trying to reproduce your setup.<br>
&gt; <br>
&gt; Thank you!<br>
&gt; <br>
&gt; Peter<br>
&gt; <br>
&gt; On Fri, Feb 19, 2021 at 7:16 AM John Sager &lt;<a href=3D"mailto:john@=
sager.me.uk" target=3D"_blank">john@sager.me.uk</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:john@sager.me.uk" target=3D"_blank">john@=
sager.me.uk</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0That&#39;s basically what I do. I set marks on outg=
oing traffic in the mangle<br>
&gt;=C2=A0 =C2=A0 =C2=A0table which are copied to connmark before egress. T=
hen on ingress the<br>
&gt;=C2=A0 =C2=A0 =C2=A0connmark is restored to the packet and punted to if=
b0 using &#39;action<br>
&gt;=C2=A0 =C2=A0 =C2=A0connmark<br>
&gt;=C2=A0 =C2=A0 =C2=A0action mirred egress redirect dev $IFB&#39; as an i=
ngress filter on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0incoming<br>
&gt;=C2=A0 =C2=A0 =C2=A0interface (ppp0 in my case). Then I have HTB classe=
s on ifb0 which set rate<br>
&gt;=C2=A0 =C2=A0 =C2=A0limits for different traffic classes indicated by t=
he marks. I have only 6<br>
&gt;=C2=A0 =C2=A0 =C2=A0traffic classes (I bundle all video into one class)=
, but as marks are 32<br>
&gt;=C2=A0 =C2=A0 =C2=A0bits wide there is lots of scope for classes for in=
dividual IP addresses.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0John<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8rgens=
en via Cake wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Peter Lepeska &lt;<a href=3D"mailto:bizzbyste=
r@gmail.com" target=3D"_blank">bizzbyster@gmail.com</a> &lt;mailto:<a href=
=3D"mailto:bizzbyster@gmail.com" target=3D"_blank">bizzbyster@gmail.com</a>=
&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0writes:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; A user on the OpenWrt forum suggested has=
hlimit rules supported by<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; iptables. How does that idea sound to you=
?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; That will result in a cliff-edge policer (i.e=
., as soon as a device goes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; over its limits it will see every packet get =
dropped). This doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; interact too well with the burstiness of TCP,=
 so you&#39;ll likely get<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; erratic behaviour of the traffic if you do th=
at. Doing the same thing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; with HTB means the router will queue+shape ea=
ch class (and with FQ-CoDel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; on the leaves, you&#39;ll get a nice AQM beha=
viour as well), so that will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; smoother and less prone to bloat :)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -Toke<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Cake mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net"=
 target=3D"_blank">Cake@lists.bufferbloat.net</a> &lt;mailto:<a href=3D"mai=
lto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.ne=
t</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://lists.bufferbloat.net/list=
info/cake" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.n=
et/listinfo/cake</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0Cake mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:Cake@lists.bufferbloat.net" targe=
t=3D"_blank">Cake@lists.bufferbloat.net</a> &lt;mailto:<a href=3D"mailto:Ca=
ke@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.bufferbloat.net/listinfo/c=
ake" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/lis=
tinfo/cake</a><br>
&gt; <br>
</blockquote></div>

--00000000000027c48605bbb65f9e--

--===============8354882487014743353==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8354882487014743353==--
