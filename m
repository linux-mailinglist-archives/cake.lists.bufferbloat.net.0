Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07732322E
	for <lists+cake@lfdr.de>; Tue, 23 Feb 2021 21:37:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9EC2B3CB38;
	Tue, 23 Feb 2021 15:37:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614112653;
	bh=U9Avk3LXI5F1l3b97fff2LAkJwFEA2HknvGIgbRwazA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TwcdVKOMoW1Y5BfGm+FWmWldfD7LBrnNGR/auxoE3Z+rIy2sWinkB/6vV7bKFptaI
	 j+CTUmS+mzpn6Xb5CGAljQSxwGNFrc884F1gCA2IhE6K/bGrXQIbdtUKlvd6QSko9T
	 Rr/5wsBz5bRrmXsDlekfBjxcWVXEQQTKf0fLGJ6MOTjTy6nmrH8Um9xVGJHhvsZfOm
	 ARwSWyxA6QXadA5iOgzqSk+AyPJ8t2IbWMzaeJxvFmEk1Y6S59M1/eV8VuuzrH8bgg
	 GsFRMgdkSZZt0Hkjdl/Ezg26E6u33Je2T5iZwkINSDJLqyNC3VZXjQIwT0EcPbFkOk
	 MdNAKAFTslXPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7A75A3B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 15:37:32 -0500 (EST)
Received: by mail-lj1-x22e.google.com with SMTP id r23so64763677ljh.1
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 12:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0cWa8AavZu1hQ31e2SjoxMxLQL50oRPXh4/QKnml/ic=;
 b=IbUPnnC/Dgpe04IC9r2ZGQ8eV1btKCnI/bo08+wq0mQSs27UihDNsG2x/RZ4YjUUox
 4zSdvrFhiSS+yJLyeyVKFgMsMe2/igN/qhOSotnc7l8vxi1R31eTdLazuexaY7b8Tk+x
 biEg2bUkzYwtHE0vKtzdMCOeZge+S+2karX1UhS6e0BuN7Ue1pem83yZ5/BD6dy4Yfp/
 +a/n/0b5vqUXK2ofk84tMTbZfz5ZcxjB00UqgFCnf56ffhCo4Voqaw7BvbrK5gGU1gCs
 t8VnS724HR7qVSpGOKLtM+RYdXpQdU8wtSk/yE9p/QiohqjVzrAH5CdM3OPNsJ/sEzZP
 FO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0cWa8AavZu1hQ31e2SjoxMxLQL50oRPXh4/QKnml/ic=;
 b=AVREAOVEZatcWo5YzYto1OVKzrYUO8hFS5LjDW149r/XU3iMVuWVAwEpYRRO0eFiYN
 x3qf8KN+We7WPcwhPLNQWQ8jfJRhFoaGmQQdypLIozZwHOdc3aEgbSQpTxIbBsSNmu0z
 EkfRY6HEpqxR9FdJP8gudx8OcnoiorL1moHtyIiQwRfbLsn4cv8gZsIl5LRjSqprlDOv
 NPwxrvK34Db9fucw+6Hf2r/yXnfaIaMXON06GzynRMTYa4lOMKM9/H+2kG4jrKpPemGU
 VIQ29dvs4B1slM2g0JbVK5p1XLwaqzdomxOJQy4vUT7x4kbOZHXI6HYHrvMYe8fnKvMW
 Y89g==
X-Gm-Message-State: AOAM530CE+cMyweBP7ms6ohipd85TDlUVbLiM43GQ+Cu77NYDAKU2NPu
 FAKmldSxemi7hy2Qvh4Lq14KSQDQUvJZLPYChoqEorNq4Mg=
X-Google-Smtp-Source: ABdhPJz3NzFyflJe7HviswG3glIh8WOFOplqt0jjJykJfn7l6G4PusjTgaOQeW5tdE43qEPDBlg5t51LsjUOh75x6QQ=
X-Received: by 2002:a2e:81c2:: with SMTP id s2mr1223850ljg.224.1614112651137; 
 Tue, 23 Feb 2021 12:37:31 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
 <f954af51-8a96-d4de-d9ac-f3c78174cd39@sager.me.uk>
In-Reply-To: <f954af51-8a96-d4de-d9ac-f3c78174cd39@sager.me.uk>
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Tue, 23 Feb 2021 15:37:18 -0500
Message-ID: <CANmPAYGOPmxQDv8aWKgUdr6dErDEeyu+aCHMijjZMNRR97VjdA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5845617145568747271=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5845617145568747271==
Content-Type: multipart/alternative; boundary="00000000000032d6b205bc06e3dc"

--00000000000032d6b205bc06e3dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

Thanks for sharing!

Peter

On Tue, Feb 23, 2021 at 6:15 AM John Sager <john@sager.me.uk> wrote:

> Here is the toy QoS solution for linux, which is a simplified version of
> the
> one I uses successfully on my home network. It uses quite a few scheduler
> modules - sch_htb, act_connmark, em_meta etc - that may not load
> automatically, so they may need to be listed in /etc/modules.
>
> Toke, thanks for agreeing to let the attachment through.
>
> John
>
> On 19/02/2021 19:04, John Sager wrote:
> > Yes. The marks are set on egress so you can select on inside IP address=
,
> > port, protocol - in fact many characteristics that iptables rules can
> test
> > for. I'll put together a toy iptables rules file and a toy script with
> the
> > necessary tc commands. It'll take me a few days though as I'm busy with
> > other stuff currently.
> >
> > PS does the cake list allow attachments? It will be a small zip file.
> >
> > John
> >
> > On 19/02/2021 15:02, Peter Lepeska wrote:
> >> Hi John
> >>
> >> Does this result in the ability to set per internal host max ingress
> >> bandwidth? If so, any chance you can share a snippet of a script? I
> will
> >> be trying to reproduce your setup.
> >>
> >> Thank you!
> >>
> >> Peter
> >>
> >> On Fri, Feb 19, 2021 at 7:16 AM John Sager <john@sager.me.uk
> >> <mailto:john@sager.me.uk>> wrote:
> >>
> >>     That's basically what I do. I set marks on outgoing traffic in the
> mangle
> >>     table which are copied to connmark before egress. Then on ingress
> the
> >>     connmark is restored to the packet and punted to ifb0 using 'actio=
n
> >>     connmark
> >>     action mirred egress redirect dev $IFB' as an ingress filter on th=
e
> >>     incoming
> >>     interface (ppp0 in my case). Then I have HTB classes on ifb0 which
> set
> >> rate
> >>     limits for different traffic classes indicated by the marks. I hav=
e
> >> only 6
> >>     traffic classes (I bundle all video into one class), but as marks
> are 32
> >>     bits wide there is lots of scope for classes for individual IP
> addresses.
> >>
> >>     John
> >>
> >>     On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8rgensen via Cake wro=
te:
> >>      > Peter Lepeska <bizzbyster@gmail.com <mailto:bizzbyster@gmail.co=
m
> >>
> >>     writes:
> >>      >
> >>      >> A user on the OpenWrt forum suggested hashlimit rules supporte=
d
> by
> >>      >> iptables. How does that idea sound to you?
> >>      >
> >>      > That will result in a cliff-edge policer (i.e., as soon as a
> device
> >> goes
> >>      > over its limits it will see every packet get dropped). This
> doesn't
> >>      > interact too well with the burstiness of TCP, so you'll likely
> get
> >>      > erratic behaviour of the traffic if you do that. Doing the same
> thing
> >>      > with HTB means the router will queue+shape each class (and with
> >> FQ-CoDel
> >>      > on the leaves, you'll get a nice AQM behaviour as well), so tha=
t
> >> will be
> >>      > smoother and less prone to bloat :)
> >>      >
> >>      > -Toke
> >>      > _______________________________________________
> >>      > Cake mailing list
> >>      > Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
> >>      > https://lists.bufferbloat.net/listinfo/cake
> >>      >
> >>     _______________________________________________
> >>     Cake mailing list
> >>     Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
> >>     https://lists.bufferbloat.net/listinfo/cake
> >>
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--00000000000032d6b205bc06e3dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi John,<div><br></div><div>Thanks for sharing!=C2=A0</div=
><div><br><div>Peter</div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 23, 2021 at 6:15 AM John Sager =
&lt;<a href=3D"mailto:john@sager.me.uk">john@sager.me.uk</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Here is the toy QoS=
 solution for linux, which is a simplified version of the <br>
one I uses successfully on my home network. It uses quite a few scheduler <=
br>
modules - sch_htb, act_connmark, em_meta etc - that may not load <br>
automatically, so they may need to be listed in /etc/modules.<br>
<br>
Toke, thanks for agreeing to let the attachment through.<br>
<br>
John<br>
<br>
On 19/02/2021 19:04, John Sager wrote:<br>
&gt; Yes. The marks are set on egress so you can select on inside IP addres=
s, <br>
&gt; port, protocol - in fact many characteristics that iptables rules can =
test <br>
&gt; for. I&#39;ll put together a toy iptables rules file and a toy script =
with the <br>
&gt; necessary tc commands. It&#39;ll take me a few days though as I&#39;m =
busy with <br>
&gt; other stuff currently.<br>
&gt; <br>
&gt; PS does the cake list allow attachments? It will be a small zip file.<=
br>
&gt; <br>
&gt; John<br>
&gt; <br>
&gt; On 19/02/2021 15:02, Peter Lepeska wrote:<br>
&gt;&gt; Hi John<br>
&gt;&gt;<br>
&gt;&gt; Does this=C2=A0result in the ability to set per internal host max =
ingress <br>
&gt;&gt; bandwidth? If so, any chance you can share a snippet of a script? =
I will <br>
&gt;&gt; be trying to reproduce your setup.<br>
&gt;&gt;<br>
&gt;&gt; Thank you!<br>
&gt;&gt;<br>
&gt;&gt; Peter<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Feb 19, 2021 at 7:16 AM John Sager &lt;<a href=3D"mailto:j=
ohn@sager.me.uk" target=3D"_blank">john@sager.me.uk</a> <br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:john@sager.me.uk" target=3D"_blank">j=
ohn@sager.me.uk</a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 That&#39;s basically what I do. I set marks on =
outgoing traffic in the mangle<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 table which are copied to connmark before egres=
s. Then on ingress the<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 connmark is restored to the packet and punted t=
o ifb0 using &#39;action<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 connmark<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 action mirred egress redirect dev $IFB&#39; as =
an ingress filter on the<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 incoming<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 interface (ppp0 in my case). Then I have HTB cl=
asses on ifb0 which set <br>
&gt;&gt; rate<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 limits for different traffic classes indicated =
by the marks. I have <br>
&gt;&gt; only 6<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 traffic classes (I bundle all video into one cl=
ass), but as marks are 32<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 bits wide there is lots of scope for classes fo=
r individual IP addresses.<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 John<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8r=
gensen via Cake wrote:<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; Peter Lepeska &lt;<a href=3D"mailto:=
bizzbyster@gmail.com" target=3D"_blank">bizzbyster@gmail.com</a> &lt;mailto=
:<a href=3D"mailto:bizzbyster@gmail.com" target=3D"_blank">bizzbyster@gmail=
.com</a>&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 writes:<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;&gt; A user on the OpenWrt forum sugg=
ested hashlimit rules supported by<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;&gt; iptables. How does that idea sou=
nd to you?<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; That will result in a cliff-edge pol=
icer (i.e., as soon as a device <br>
&gt;&gt; goes<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; over its limits it will see every pa=
cket get dropped). This doesn&#39;t<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; interact too well with the burstines=
s of TCP, so you&#39;ll likely get<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; erratic behaviour of the traffic if =
you do that. Doing the same thing<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; with HTB means the router will queue=
+shape each class (and with <br>
&gt;&gt; FQ-CoDel<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; on the leaves, you&#39;ll get a nice=
 AQM behaviour as well), so that <br>
&gt;&gt; will be<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; smoother and less prone to bloat :)<=
br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; -Toke<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; ____________________________________=
___________<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; Cake mailing list<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; <a href=3D"mailto:Cake@lists.bufferb=
loat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a> &lt;mailto:<a hr=
ef=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.buffe=
rbloat.net</a>&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; <a href=3D"https://lists.bufferbloat=
.net/listinfo/cake" rel=3D"noreferrer" target=3D"_blank">https://lists.buff=
erbloat.net/listinfo/cake</a><br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 _______________________________________________=
<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Cake mailing list<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 <a href=3D"mailto:Cake@lists.bufferbloat.net" t=
arget=3D"_blank">Cake@lists.bufferbloat.net</a> &lt;mailto:<a href=3D"mailt=
o:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net<=
/a>&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 <a href=3D"https://lists.bufferbloat.net/listin=
fo/cake" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net=
/listinfo/cake</a><br>
&gt;&gt;<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
&gt; <br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div>

--00000000000032d6b205bc06e3dc--

--===============5845617145568747271==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5845617145568747271==--
