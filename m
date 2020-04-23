Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 606731B60E9
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 18:29:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C7FA3CB42;
	Thu, 23 Apr 2020 12:29:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587659346;
	bh=LE5ptnsukNHZfquL+eogCDE2N6uqKIqteP3WPF/490U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BeMcsVKlZvx0eK6kaDAORTixwNzN7yT+d3ygw8Y/DsSFeohMGZKmE5+TZ7Id7bdnP
	 YwLmIz+HGlnYikEXaBC+E0RIxvYKarxgh2TqIxCAWf/Cp0RALDAUKMODtLDlez0UUb
	 6/0UHvyeTvcQ+qPCpHJd6gfchuCdKeZjsQGLBKYrDAijPC+dTVHqb5V+oglNc4sufV
	 isMplIBnTleLtddAIOKQ7NppIGVaCFqhzqZl+Cy7sDGRvorPzLK1jUDJsKSz/84xgq
	 hhATS3q6o51c1q32yFLczNK79W+XzxZ6qdghVgG7ciCP2gYm0LTjIA786Vj45lMA3B
	 3ZqJ3z33TsL0g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 171563B2A4;
 Thu, 23 Apr 2020 12:29:06 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id e8so6106912ilm.7;
 Thu, 23 Apr 2020 09:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HK2GB2XcuJZ/0GyC5qydySjTJrEDq8hQ/+IihMghWTY=;
 b=HU57401cJPmWV2dOqKDEYiRKH6mvgm8C7r/smg8TZcf1iYUZ7kWHzRg3B0Aa9zX/sU
 6nCeOQkoD+1SmXyEWpHCf57+UoMLgq86Db9ax0TGWAm341e5G9yyEAB9KC7gOCPqQFLx
 Su04EKirIkW7pf4bOTofr1uY9nZhhVxSsq3xdVvbNYZijnT87isen9p0kpyr56bSrPBy
 AA3drJ8swJYEEF7NrLg4SLLguDEpQv+8c8mi+ggnai/Qyexa6C0s2lpUIJXrX6x/Qg9Q
 Ou85eNt5dn8kjjE1EPl0TkxwJ9aIo8q6BjUV5ZZ+6lqWFTsS75R16/BzMY/30koir8K+
 jc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HK2GB2XcuJZ/0GyC5qydySjTJrEDq8hQ/+IihMghWTY=;
 b=ttVw2YImxEen65YaoYYltWWcG+XOaONwC9xG2jhl28bTXd49S/ugj9ywvAf0tAM2Cs
 y16a6rVjihaXcymuGD2Pr2y9BXmMddP0rUhqam6iOjuO55a9unZ3s5x66XMnR1aRw0Q4
 XAESuSzjBZrY3QCqdGqfyaRMTzAJIgnlx+sm8Wl/RLfKI9g8gbhK0HNcpGOxqDJ5KnTY
 kdKP0wVrIVjPZ+VDuT2kGqAo4GphwTN5Aw1ha6nKT78Texw9hNpmiC1PKMgixHuGmrya
 wTySeNPt3QmwYC0rStML4PykKqYcX9pq5nwYeiht5ntjBckGC2baD9X9qLHkNpw4ktYi
 VoXA==
X-Gm-Message-State: AGi0PubG3EomgRVNsAJYCT51Cs5RcFYrTAdXRcbw+34r9qoVq5DmSnTo
 XYQ+bEjOq284S2kdrNy3pBJxj/A6HXuJelzGhMg=
X-Google-Smtp-Source: APiQypJq6MjBj+sRBINz50oh8sjj4u168p4EniUXzHtyDK0lZhYfP7ziZ0j2aWsYd20b5dyM6mBNSirpOShECeLmC+A=
X-Received: by 2002:a92:4014:: with SMTP id n20mr4146938ila.249.1587659345502; 
 Thu, 23 Apr 2020 09:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
In-Reply-To: <87o8ri76u2.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 23 Apr 2020 09:28:53 -0700
Message-ID: <CAA93jw4gXbF-SxE7JJw3d_8WNJwFbJwLQZfngh9ZLC03q3XwPA@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Content-Type: multipart/mixed; boundary="000000000000507b0205a3f7bfba"
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>, Maxime Bizon <mbizon@freebox.fr>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--000000000000507b0205a3f7bfba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 23, 2020 at 4:57 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> Maxime Bizon <mbizon@freebox.fr> writes:
>
> > On Wednesday 22 Apr 2020 =C3=A0 07:48:43 (-0700), Dave Taht wrote:
> >
> > Hello,
> >
> >> > Free has been using SFQ since 2005 (if I remember well).
> >> > They announced the wide deployment of SFQ in the free.fr newsgroup.
> >> > Wi-Fi in the free.fr router was not as good though.
> >>
> >> They're working on it. :)
> >
> > yes indeed.
> >
> > Switching to softmac approach, so now mac80211 will do rate control
> > and scheduling (using wake_tx_queue model).
> >
> > for 5ghz, we use ath10k
>
> That is awesome! Please make sure you include the AQL patch for ath10k,
> it really works wonders, as Dave demonstrated:
>
> https://lists.bufferbloat.net/pipermail/make-wifi-fast/2020-March/002721.=
html

and THIS patch is looking lovely at the higher rates I'm testing at.
Yea, it needs to be more robust, but I'm seeing tcp rtt inflation
of exactly the right buffer size (15ms), on an HT20 or VHT80 link,
where before I'd see 30+ms... (it's nice that flent can plot both tcp
rtt and ping rtt now),
ecn "just works",

--000000000000507b0205a3f7bfba
Content-Type: text/x-patch; charset="US-ASCII"; name="982-do-codel-more-right.patch"
Content-Disposition: attachment; filename="982-do-codel-more-right.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k9cz9os60>
X-Attachment-Id: f_k9cz9os60

ZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS9zdGFfaW5mby5jIGIvbmV0L21hYzgwMjExL3N0YV9p
bmZvLmMKaW5kZXggYzQzMTcyMi4uOTJiYTA5YiAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0
YV9pbmZvLmMKKysrIGIvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKQEAgLTQ3NiwxMCArNDc2LDEx
IEBAIHN0cnVjdCBzdGFfaW5mbyAqc3RhX2luZm9fYWxsb2Moc3RydWN0IGllZWU4MDIxMV9zdWJf
aWZfZGF0YSAqc2RhdGEsCiAJc3RhLT5zdGEubWF4X3JjX2Ftc2R1X2xlbiA9IElFRUU4MDIxMV9N
QVhfTVBEVV9MRU5fSFRfQkE7CiAKIAlzdGEtPmNwYXJhbXMuY2VfdGhyZXNob2xkID0gQ09ERUxf
RElTQUJMRURfVEhSRVNIT0xEOwotCXN0YS0+Y3BhcmFtcy50YXJnZXQgPSBNUzJUSU1FKDIwKTsK
KwlzdGEtPmNwYXJhbXMudGFyZ2V0ID0gTVMyVElNRSg1KTsKIAlzdGEtPmNwYXJhbXMuaW50ZXJ2
YWwgPSBNUzJUSU1FKDEwMCk7CiAJc3RhLT5jcGFyYW1zLmVjbiA9IHRydWU7Ci0KKwlzdGFfZGJn
KHNkYXRhLCAiQ29kZWwgdGFyZ2V0LCBpbnRlcnZhbCAlZCwgJWRcbiIsIHN0YS0+Y3BhcmFtcy50
YXJnZXQsCisJCXN0YS0+Y3BhcmFtcy5pbnRlcnZhbCk7CiAJc3RhX2RiZyhzZGF0YSwgIkFsbG9j
YXRlZCBTVEEgJXBNXG4iLCBzdGEtPnN0YS5hZGRyKTsKIAogCXJldHVybiBzdGE7CkBAIC0yNDY4
LDE1ICsyNDY5LDkgQEAgc3RhdGljIHZvaWQgc3RhX3VwZGF0ZV9jb2RlbF9wYXJhbXMoc3RydWN0
IHN0YV9pbmZvICpzdGEsIHUzMiB0aHIpCiAJaWYgKCFzdGEtPnNkYXRhLT5sb2NhbC0+b3BzLT53
YWtlX3R4X3F1ZXVlKQogCQlyZXR1cm47CiAKLQlpZiAodGhyICYmIHRociA8IFNUQV9TTE9XX1RI
UkVTSE9MRCAqIHN0YS0+bG9jYWwtPm51bV9zdGEpIHsKLQkJc3RhLT5jcGFyYW1zLnRhcmdldCA9
IE1TMlRJTUUoNTApOwotCQlzdGEtPmNwYXJhbXMuaW50ZXJ2YWwgPSBNUzJUSU1FKDMwMCk7Ci0J
CXN0YS0+Y3BhcmFtcy5lY24gPSBmYWxzZTsKLQl9IGVsc2UgewotCQlzdGEtPmNwYXJhbXMudGFy
Z2V0ID0gTVMyVElNRSgyMCk7Ci0JCXN0YS0+Y3BhcmFtcy5pbnRlcnZhbCA9IE1TMlRJTUUoMTAw
KTsKLQkJc3RhLT5jcGFyYW1zLmVjbiA9IHRydWU7Ci0JfQorCXN0YS0+Y3BhcmFtcy50YXJnZXQg
PSBNUzJUSU1FKDUpOworCXN0YS0+Y3BhcmFtcy5pbnRlcnZhbCA9IE1TMlRJTUUoMTAwKTsKKwlz
dGEtPmNwYXJhbXMuZWNuID0gdHJ1ZTsKIH0KIAogdm9pZCBpZWVlODAyMTFfc3RhX3NldF9leHBl
Y3RlZF90aHJvdWdocHV0KHN0cnVjdCBpZWVlODAyMTFfc3RhICpwdWJzdGEsCmRpZmYgLS1naXQg
YS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCmluZGV4IDUzNTkxMWIuLmNh
NTBkMGEgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS90eC5jCisrKyBiL25ldC9tYWM4MDIxMS90
eC5jCkBAIC0xNTUxLDcgKzE1NTEsNyBAQCBpbnQgaWVlZTgwMjExX3R4cV9zZXR1cF9mbG93cyhz
dHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCkKIAogCWNvZGVsX3BhcmFtc19pbml0KCZsb2Nh
bC0+Y3BhcmFtcyk7CiAJbG9jYWwtPmNwYXJhbXMuaW50ZXJ2YWwgPSBNUzJUSU1FKDEwMCk7Ci0J
bG9jYWwtPmNwYXJhbXMudGFyZ2V0ID0gTVMyVElNRSgyMCk7CisJbG9jYWwtPmNwYXJhbXMudGFy
Z2V0ID0gTVMyVElNRSg1KTsKIAlsb2NhbC0+Y3BhcmFtcy5lY24gPSB0cnVlOwogCiAJbG9jYWwt
PmN2YXJzID0ga2NhbGxvYyhmcS0+Zmxvd3NfY250LCBzaXplb2YobG9jYWwtPmN2YXJzWzBdKSwK
--000000000000507b0205a3f7bfba
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--000000000000507b0205a3f7bfba--
