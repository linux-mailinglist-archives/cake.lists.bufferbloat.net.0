Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DE47760314A
	for <lists+cake@lfdr.de>; Tue, 18 Oct 2022 19:03:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8D4123CB39;
	Tue, 18 Oct 2022 13:03:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666112617;
	bh=ZBW16q4/A2AYU/hV3hlUsTYIlGRezMnksSzICwQ4nDQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=FzOuqMdjtMON/BA8OtZT5ZwUdQlWlDjPSGny3r4dlUj9KrbGTF4cuJD7vnZ1YEE3X
	 g1gfOmnzCmgk+bKw4ncpaU3fnYMVQyIqNB5KDkHkSFUoE6UA+IajDJnAfiq7U+dol1
	 Ocfxbn8P6HIlaDrTCopt+KvKbQ/dzm5d6uHCAjitE//ClR2Ir1vxcKSM07tphL8uSd
	 UgGfY1r8TGeaJNGXC0vxiLpKX9KqKryXpRFN4kmvfXPVdDc5R4U0rgdXAPL14YqVRv
	 0F/B+vhtbnqG6B80ao9/SOFf8lz+KNsmdC31UOLyIVyZZn7MuxdUknbh8/ER1Nv7nH
	 fuuZqGvApc3wg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6BE5B3CB39
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 13:03:36 -0400 (EDT)
Received: by mail-lf1-x12a.google.com with SMTP id g1so23624923lfu.12
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 10:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=cmZmaPeNyV4VLRDBix3Fw5BirUSq3UlGzvkqGyv0lv0=;
 b=PBOk/OZatltiWUegUZF2KZpuloyyZB7QNFd0sF5PswIHyKmdjQn3u1bZ+IzDoaDT7C
 QUu50FQmIhYaEGe47dBkR3fMGdyOcUEvyJkjPPTLnNwYsz9Qi1pvwiEuGDtwmbG/1JBn
 +OaqnjC4EC1IFN3Njhi/59mp6Hul+vxmr+mck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cmZmaPeNyV4VLRDBix3Fw5BirUSq3UlGzvkqGyv0lv0=;
 b=AeJ9+P4ieZk9dWnQaiNg+wK9jmxVcLiW5l6rbKxTWNtiMiSvYPMQN8/5SS4AFXriR7
 F13+ll9M215BVaKWSWckf+ZM8z1pLZVyKA6kQy37Hq3X8Hcoa3jC7kTEnL+d799VNwKg
 zPuY39Uk8/hrHFuTRjIm1ZtA/r4p87l9gICtGKAOxxmugeE/UEysu2ahuVX8LNW2ox11
 zG1xPBRWRNBxXdCmZbiHdqTJ3Gqx2t/8Fr3GryLEDTB8VyTGCcJosPPpVZ4Dm3wKhP1y
 chntUY23rHHr3ZjEyiICX6Zrb30ZNp7tYqySWTc/CrmFrsgkivdN/Hgmv//oDuKUkPFr
 kEZg==
X-Gm-Message-State: ACrzQf2udJEqLJv6LT9erwHZDjofpqFZfRvEV7Jxkk9dYE7F+9IwFdSV
 cN3vhPYrShHV/gDhVMUnasbyhy2i9AVq8LWUub7Ar+hxwt3mho4nDX9tGdKZ/j9GZeu0hVg2dmA
 Hbtk/yEAyw58gY0jh9UDHGBhBzoxu
X-Google-Smtp-Source: AMsMyM6ydoUMvIPzf1JU0Il95ia1EiYhyX1oTcXc4GkAaNIdOGrIecMsdJbxDXfEV7jXnC0QmhuWwVBc1kdYAO1gZzA=
X-Received: by 2002:a05:6512:533:b0:4a2:f36:bba5 with SMTP id
 o19-20020a056512053300b004a20f36bba5mr1287896lfc.224.1666112614871; Tue, 18
 Oct 2022 10:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <6710sq51-1151-s739-qq87-0r5264qrs9q8@ynat.uz>
In-Reply-To: <6710sq51-1151-s739-qq87-0r5264qrs9q8@ynat.uz>
Date: Tue, 18 Oct 2022 10:03:21 -0700
Message-ID: <CAHb6LvoUr9cqzKQo0K-9BUJLepiWSHvWuEna3sOfF1oXk-yquw@mail.gmail.com>
To: David Lang <david@lang.hm>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] The most wonderful video ever
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5646182227713089332=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5646182227713089332==
Content-Type: multipart/alternative; boundary="00000000000090d96205eb521240"

--00000000000090d96205eb521240
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree with Stuart that there is no reason for shared lines in the first
place. It seems like a design flaw to have a common queue that congests in
a way that impacts the one transmit unit as the atomic forwarding plane
unit.  The goal of virtual output queueing
<https://en.wikipedia.org/wiki/Virtual_output_queueing> is to eliminate
head of line blocking, every egress transmit unit gets its own cashier with
no competition.  The VOQ queue depths should support one transmit unit and
any jitter through the switching subsystem - jitter for the case of
non-bloat and where a faster VOQ service rate can drain the VOQ.  If the
VOQ can't be drained per a faster service rate, then it's just one
transmit unit as the queue is now just a standing queue w/delay and no
benefit.

Many network engineers typically, though incorrectly, perceive a transmit
unit as one ethernet packet. With WiFi it's one Mu transmission or one Su
transmission, with aggregation(s), which is a lot more than one ethernet
packet but it depends on things like MCS, spatial stream powers, Mu peers,
etc. and is variable. Some data center designs have optimized the
forwarding plane for flow completion times so their equivalent transmit
unit is a mouse flow.

I perceive applying AQM to shared queue congestion as a mitigation
technique to a poorly designed forwarding plane. The hope is that
transistor engineers don't do this and "design out the lines" from the
beginning. Better switching engineering vs queue management applied
afterwards as a mitigation technique.

Bob

On Mon, Oct 17, 2022 at 7:58 PM David Lang via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

> On Mon, 17 Oct 2022, Dave Taht via Bloat wrote:
>
> > On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire <cheshire@apple.com>
> wrote:
> >>
> >> On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
> >>
> >> > This was so massively well done, I cried. Does anyone know how to ge=
t
> in touch with the ifxit folk?
> >> >
> >> > https://www.youtube.com/watch?v=3DUICh3ScfNWI
> >>
> >> I=E2=80=99m surprised that you liked this video. It seems to me that i=
t repeats
> all the standard misinformation. The analogy they use is the standard
> terrible example of waiting in a long line at a grocery store, and the
> =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump the l=
ine, angering everyone
> behind them=E2=80=9D.
> >
> > Accuracy be damned. The analogy to common experience resonates more.
>
> actually, fair queueing is more like the '15 items or less' lanes to spee=
d
> through the people doing simple things rather than having them wait behin=
d
> the
> mother of 7 doing their monthly shopping.
>
> David Lang_______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--00000000000090d96205eb521240
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I agree with Stuart that there is no reason for shared lin=
es in the first place. It seems like a design flaw to have a common queue t=
hat congests in a way that impacts the one transmit unit as the atomic forw=
arding plane unit.=C2=A0=C2=A0The goal of=C2=A0<a href=3D"https://en.wikipe=
dia.org/wiki/Virtual_output_queueing">virtual output queueing</a>=C2=A0is t=
o eliminate head of line blocking, every egress transmit unit gets its own =
cashier with no competition.=C2=A0 The VOQ queue depths should support one =
transmit unit and any jitter through the switching subsystem - jitter for t=
he case of non-bloat and where a faster=C2=A0VOQ service rate can drain the=
 VOQ.=C2=A0 If the VOQ can&#39;t be drained per a faster service rate, then=
 it&#39;s just one transmit=C2=A0unit as the queue is now just a standing q=
ueue w/delay and no benefit.<br><br>Many network engineers typically, thoug=
h incorrectly, perceive a transmit unit as one ethernet packet. With WiFi i=
t&#39;s one Mu transmission or one Su transmission, with aggregation(s), wh=
ich is a lot more than one ethernet packet but it depends on things like MC=
S, spatial stream powers, Mu peers, etc. and is variable. Some data center =
designs have optimized the forwarding plane for flow completion times so th=
eir equivalent transmit unit is a mouse flow.<br><br>I perceive applying AQ=
M to shared queue congestion as a mitigation technique to a poorly designed=
 forwarding plane. The hope is that transistor engineers don&#39;t do this =
and &quot;design out the lines&quot; from the beginning. Better switching e=
ngineering vs queue=C2=A0management applied afterwards as a mitigation tech=
nique.<br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Oct 17, 2022 at 7:58 PM David Lang via Make-wifi-f=
ast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net">make-wifi-f=
ast@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Mon, 17 Oct 2022, Dave Taht via Bloat wrote:<br=
>
<br>
&gt; On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire &lt;<a href=3D"mailto:=
cheshire@apple.com" target=3D"_blank">cheshire@apple.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast &lt;<a href=
=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wif=
i-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; This was so massively well done, I cried. Does anyone know ho=
w to get in touch with the ifxit folk?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"https://www.youtube.com/watch?v=3DUICh3ScfNWI" rel=
=3D"noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3DUICh3Sc=
fNWI</a><br>
&gt;&gt;<br>
&gt;&gt; I=E2=80=99m surprised that you liked this video. It seems to me th=
at it repeats all the standard misinformation. The analogy they use is the =
standard terrible example of waiting in a long line at a grocery store, and=
 the =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump th=
e line, angering everyone behind them=E2=80=9D.<br>
&gt;<br>
&gt; Accuracy be damned. The analogy to common experience resonates more.<b=
r>
<br>
actually, fair queueing is more like the &#39;15 items or less&#39; lanes t=
o speed <br>
through the people doing simple things rather than having them wait behind =
the <br>
mother of 7 doing their monthly shopping.<br>
<br>
David Lang_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--00000000000090d96205eb521240--

--===============5646182227713089332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5646182227713089332==--
