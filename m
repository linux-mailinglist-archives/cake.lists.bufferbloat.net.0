Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF39428465
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 02:53:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8FCBB3CB58;
	Sun, 10 Oct 2021 20:53:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633913611;
	bh=V9UKsGo7nks6WFqLg/T6OYWzxFeMKSNdM5GWhNPES6Q=;
	h=References:In-Reply-To:From:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=FVSzPPUsgxNIlg+3X8yjw0IG6bTF/D3H645WNC4EAhDENqg0spueegOfTONVqQVDj
	 FBD/7xaeNQbVsqNLri5a+v07pazNjyzV1vSvLrTIG1e2bcE04Kv1AM/SPgdSlbw3yQ
	 qFqFliPy17ZEtKa7JnWW5E4iQfIbFdn+cQ/vsfg56DifoQWyfTALcHRuPcLeXN1Jzr
	 NSC13mSYr+fg50piZZUzm0w6IMnzx2hjZS3/0bLUzOrMo1giHIr20IYp+ZEAQ7W5fF
	 bqgZ7orr5x1KCZq4tgxSh3AvmIkU41eJMhRA2EUQNgUbQk+qbJecyO+/1ofRiRkK57
	 nczEbBFJsoBkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 28A713B29D
 for <cake@lists.bufferbloat.net>; Sun, 10 Oct 2021 20:53:30 -0400 (EDT)
Received: by mail-lf1-x12c.google.com with SMTP id z11so57798134lfj.4
 for <cake@lists.bufferbloat.net>; Sun, 10 Oct 2021 17:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=BIMIHweyJ0AL+xqAjc2AUn57pnVJh9U+bvxvF0IedZo=;
 b=73LxxKmVeOhM4gmbip0WkLMltFExQdsK2FFdpr18JTju555jxmQdkkZnlJHAJ5qpiN
 OU/0eoGtHJf4emdRyJGtFdElvbeul2yll72EUcOV2Rw1vgAo613WyYsBUfPBFaKx78OQ
 Vw/bCuAd7xTWhewqXraLABwFVqTEL+twCNNnKS/2YFTvfLqHWSP5wexI+P5ysKdeH+27
 xwFJLVyxm7mlVIMn6TAwSdf5bw5lyvmSdqUNXZNXemr0fI+bGy7bbydwJdz0jtIpKwfE
 GghYisiEjP+wFiMmveMvzpc1F8WhOxZ1ZY9zfQKM3Mb2fC9t5583P+j4RUKaGXD1SBO7
 yYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=BIMIHweyJ0AL+xqAjc2AUn57pnVJh9U+bvxvF0IedZo=;
 b=Ud+uuhvuy72A0al14dMnpFWcgA3cpqC+BulqqfhPVeYMmlKnvADxfeTP0zgCDHRDBi
 Anvqqg7jSd/XKbp0oL3G8m+wS2kyyzeLft5kxw2P4oe+1+Y0L+hNYJEy3AtJdE0u+20z
 ljZb1GCQg4kVuQwZ5z9rvYbVQMXEjVB5YQJhlJWGexiApWZlLbzap+v1i4LpNOVpp/Y+
 ME9iF9KUQPTrSkuvAQyOemag6iw1hliqy8LipsMq+uvVcuPtEQ7dDW+krnUtPx9aZNxu
 ijBxLNai6vbdj8t1vHPtazmZ0tr16SSgJWKRaaTNa7Z5HLgCJf9kP+kq4juWo6KeaPso
 npzA==
X-Gm-Message-State: AOAM532A0/yChFuZK9UxX68lPVmv3HbnU+Ydf7BqE36cYTELy6UI5hUx
 MkeC7Gie1fmwxz3o+0yjmKrK9SG4Wvkx4fPPVg9kiUYxbEs=
X-Received: by 2002:a05:6512:114d:: with SMTP id
 m13mt9761741lfg.382.1633913608331; 
 Sun, 10 Oct 2021 17:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
In-Reply-To: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
From: Thomas Croghan <tcroghan@lostcreek.tech>
Date: Sun, 10 Oct 2021 18:53:16 -0600
Message-ID: <CADmwGqtmvrGmiC95CXR-Vg=Satp2nCH_ihBnevibDYdhzY=KAg@mail.gmail.com>
Subject: Re: [Cake] some mikrotik comments
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2287911742536309383=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2287911742536309383==
Content-Type: multipart/alternative; boundary="0000000000003af03005ce092872"

--0000000000003af03005ce092872
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've been running fq_codel for a couple weeks and initial tests are
positive. Untill rc4 I was having crashing issues on anything with less
then a gig of RAM Mikrotik, but I have it running now on multiple devices
in my lab.

I could probably run a few tests if you're interested. So far I've seen
really good results limiting up to 2.4 Gbps to multiple endpoints on the
CCR line from my testing.

On Sun, Oct 10, 2021, 8:39 AM Dave Taht <dave.taht@gmail.com> wrote:

> the v7 beta gained doc and more os support for fq_codel and cake recently
>
> https://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000
>
> anyone out there actively testing mikrotik?
>
> --
> Fixing Starlink's Latencies: https://www.youtube.com/watch?v=3Dc9gLo6Xrwg=
w
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--0000000000003af03005ce092872
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;ve been running fq_codel for a couple weeks and ini=
tial tests are positive. Untill rc4 I was having crashing issues on anythin=
g with less then a gig of RAM Mikrotik, but I have it running now on multip=
le devices in my lab.<div dir=3D"auto"><br></div><div dir=3D"auto">I could =
probably run a few tests if you&#39;re interested. So far I&#39;ve seen rea=
lly good results limiting up to 2.4 Gbps to multiple endpoints on the CCR l=
ine from my testing.=C2=A0</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 10, 2021, 8:39 AM Dave Taht &lt=
;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">the v7 beta gained doc and more os =
support for fq_codel and cake recently<br>
<br>
<a href=3D"https://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://forum.mikrotik.com/vie=
wtopic.php?p=3D885000#p885000</a><br>
<br>
anyone out there actively testing mikrotik?<br>
<br>
-- <br>
Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.com/watch?v=
=3Dc9gLo6Xrwgw" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www=
.youtube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank" rel=3D"nore=
ferrer">Cake@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a=
><br>
</blockquote></div>

--0000000000003af03005ce092872--

--===============2287911742536309383==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2287911742536309383==--
