Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA8C1FA825
	for <lists+cake@lfdr.de>; Tue, 16 Jun 2020 07:22:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 79AC73CB38;
	Tue, 16 Jun 2020 01:22:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592284977;
	bh=aWX+TWV1PE/cxn5aykajLCTNqHu6f1RO1OJSZZ+clAQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fvr1wefF1Sp5KwSAfRXw/M0hGhMxv83Orv+5xdPWirim9vWu9qwD2Yk+YyTpbyT1U
	 ZyDTlhUmva+pepjgUdAToXaQmHRN7ieolJUGwXhEsNmQnJoK0c2sonlEnF5ehT1eRk
	 Csm/lIjmZ07d8/lrYhhk2FzfsrVQ2M1aTiIQCbnAh3YaVANemITEs9Ckl6WzRP2cl7
	 kFZvmuigsltW2+2VLepPLxVQSaxSjwCEDoP3l/M03JmZrjRX4/MAJbmqr/5E8Hsb46
	 GAfGIFMWDwxFDYcwQ+XAeGINo3ivnBmB/NRG1BEReotMiClRCaYkNnzZPG3KKXJCQq
	 9xyTFhUjZUmTA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 38AA33B29D
 for <cake@lists.bufferbloat.net>; Tue, 16 Jun 2020 01:22:56 -0400 (EDT)
Received: by mail-il1-x12d.google.com with SMTP id h3so17619927ilh.13
 for <cake@lists.bufferbloat.net>; Mon, 15 Jun 2020 22:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gIFmAkRrjbUblKCjl3wp3+q7jjCNhJClX0Qay9vUaAc=;
 b=RTVZUUvmITkxaTmelosJjG6LafnVBjAGwkdOeoN5x3sHck9XtdQeGo0f7E7GZgHKIG
 9uVP+0Shp0P6pHuCSaRdbhtNc0Tyyf0QtqaRo2SB0TmxWNnsxBcd60bJZ29lHo/25tZg
 sxRmZJQa9gtxX3dbpq0nJxhm2f6jCWOkxQZ+YKdxITm8VajV6T7viJ24NkUrLWUBGkOI
 4WAKPVqXXEqmMMM6jgSHfF/gPtTzbOf1kW0XSeyRDZMH+1k0grC5cXSLCiiyQSgcRYza
 pAi4GUkgzh0Q7jFfZn1JtSJaBYFQ/Mww5PeggvQrLp86Qs/bYS/ROXtLUnYIw88DqCtU
 m6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gIFmAkRrjbUblKCjl3wp3+q7jjCNhJClX0Qay9vUaAc=;
 b=IQQ0n+QH98cugZOnwUfm+1L9ppoz47PQR6REOhsP9pO73aZb/CFZmZCQ+Jif2lmdVn
 xSyUA6FDTqsynWTfOqsMpkHivgh/z/N0/YMMUXNhUeAh9UVJQaXSmr6Rfn2hqhiOIHy8
 eWgHNuAxm4r0OMlyR7VSs1WuOML6utgs5asvrBYRPut/1VrJaZ+xKhb23CLRUuvN63lc
 IuME/Rr3DdkpoNsSXKr49nHOnN1KMCclHUZEvT4RfEDikVMyTLyC8JbnX8/2QR19D2Cf
 iW3P9iUSoRUBduZkpz1n9BxCYSxkB1IeEqMyseuF+20jV5UT3ZkAjjSOsBLqW8ZC8kgd
 M2Gg==
X-Gm-Message-State: AOAM532I3XOgb4XUOMY6YYEcOgOeuO4mjnasIt3dShXw5IbOE/3h17j7
 HAv4GjjyKtvW3CtgBa8BN4huhjSwbzaw1BdFd28=
X-Google-Smtp-Source: ABdhPJwayoCuLmsiXidQ7bdQUIg2RWsJx5jjwV+Ydz5esV6P2iVN2rs+lagU5RxRyhv9pwKyWVKyFQMgEbfkn/phGwQ=
X-Received: by 2002:a05:6e02:e53:: with SMTP id
 l19mr1344768ilk.96.1592284975538; 
 Mon, 15 Jun 2020 22:22:55 -0700 (PDT)
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
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com> <87y2pgi5ue.fsf@toke.dk>
 <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
 <1F6D30F9-A697-4588-9AB7-2A3757924900@gmail.com>
In-Reply-To: <1F6D30F9-A697-4588-9AB7-2A3757924900@gmail.com>
From: Avakash bhat <avakash261@gmail.com>
Date: Tue, 16 Jun 2020 10:52:39 +0530
Message-ID: <CAC8NkTCf0B2QKb9TEZXk2P171CGb2faKZ3BHg2UJONpROxjY8Q@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
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
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: multipart/mixed; boundary="===============2411240333230825614=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2411240333230825614==
Content-Type: multipart/alternative; boundary="0000000000005926d905a82cbcc0"

--0000000000005926d905a82cbcc0
Content-Type: text/plain; charset="UTF-8"

Hi all,

Thank you for the clarification. We will try implementing a similar test.

Thanks to the Cake community's continued support we were able to
successfully merge the set-associative flow hash module into ns-3 (
https://gitlab.com/nsnam/ns-3-dev/-/merge_requests/209).

Hopefully, we are able to achieve a similar result with the ack filter
module and we will continue to work to do so.

Thanks,
Avakash Bhat

On Sun, Jun 14, 2020 at 8:13 PM Jonathan Morton <chromatix99@gmail.com>
wrote:

> > On 14 Jun, 2020, at 3:43 pm, Avakash bhat <avakash261@gmail.com> wrote:
> >
> > I wanted another clarification on the results obtained by the Ack
> filtering experiment( Fig 6) .
> > Was the experiment conducted with only ack filtering enabled?
> > Or was set associative hash and the other modules of Cake enabled along
> with Ack filtering while running this experiment ?
>
> The test was run on a complete implementation of Cake, set up in the
> normal way.  I think we kept the configuration simple for this test, so
> everything at defaults except for choosing the shaped bandwidth in each
> direction.
>
> The ack-filter relies on having fairly good flow isolation, so that
> consecutive packets in the appropriate queue belong to the same ack
> stream.  So at minimum it is appropriate to have the set-associative flow
> hash enabled.
>
> The host-fairness and Diffserv features were probably enabled, but did not
> have relevant effects in this case, since only one pair of hosts and the
> Best Effort DSCP were used in the traffic.
>
>  - Jonathan Morton

--0000000000005926d905a82cbcc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br><div>Thank you=C2=A0for the clarification.=
 We will try implementing a similar test.</div><div><br></div><div>Thanks t=
o the Cake community&#39;s continued support we were able to successfully m=
erge the set-associative flow hash module into ns-3 (<a href=3D"https://git=
lab.com/nsnam/ns-3-dev/-/merge_requests/209">https://gitlab.com/nsnam/ns-3-=
dev/-/merge_requests/209</a>).</div><div><br></div><div>Hopefully, we are a=
ble to achieve a similar result with the ack filter module and we will cont=
inue to work to do so.=C2=A0</div><div><br></div><div>Thanks,</div><div>Ava=
kash Bhat</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, Jun 14, 2020 at 8:13 PM Jonathan Morton &lt;<a=
 href=3D"mailto:chromatix99@gmail.com">chromatix99@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; On 14 Jun,=
 2020, at 3:43 pm, Avakash bhat &lt;<a href=3D"mailto:avakash261@gmail.com"=
 target=3D"_blank">avakash261@gmail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; I wanted another clarification on the results obtained by the Ack filt=
ering experiment( Fig 6) . <br>
&gt; Was the experiment conducted with only ack filtering enabled? <br>
&gt; Or was set associative hash and the other modules of Cake enabled alon=
g with Ack filtering while running this experiment ?<br>
<br>
The test was run on a complete implementation of Cake, set up in the normal=
 way.=C2=A0 I think we kept the configuration simple for this test, so ever=
ything at defaults except for choosing the shaped bandwidth in each directi=
on.<br>
<br>
The ack-filter relies on having fairly good flow isolation, so that consecu=
tive packets in the appropriate queue belong to the same ack stream.=C2=A0 =
So at minimum it is appropriate to have the set-associative flow hash enabl=
ed.<br>
<br>
The host-fairness and Diffserv features were probably enabled, but did not =
have relevant effects in this case, since only one pair of hosts and the Be=
st Effort DSCP were used in the traffic.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div>

--0000000000005926d905a82cbcc0--

--===============2411240333230825614==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2411240333230825614==--
