Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BFE22FB90
	for <lists+cake@lfdr.de>; Mon, 27 Jul 2020 23:41:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD0573CB38;
	Mon, 27 Jul 2020 17:41:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595886088;
	bh=d7c8aI12mLvfCjl8u+FnkF4WY+QJ1uhc1Ixmcj+Vzgw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DsdoAg24CxA+HrbINpn5GEGFZWqUVhP3BbW3XbU1+om8vJxoWdfdqBtIFrRTycCYF
	 UktIiglQY1ZX8Lw09MPEhDpToTaK4pqrnqMAxaxOIU7Glvx8wFFhD5Ia18RRoEN0gc
	 MiEiqNMYxKdk+TICk7imtj+IaZsroSZZmxZ87qCnnbSzlMwrda/MXf/raeq8IKrxcd
	 lyXO9/r8BHXVT1O13OguDZJgLQD8Os/kmmw7kqcGlDH/VXm8YFDGi3DIjEQ18rdiqc
	 KBhKuyFUEwocU27SfBuu5H8HgCPm1/tMtUhtHLzs2d90pVz9uGmEMwx6/SiBTLSr3u
	 dB7wHULv9+g/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7B1DD3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 27 Jul 2020 17:41:26 -0400 (EDT)
Received: by mail-qt1-x841.google.com with SMTP id b25so13441841qto.2
 for <cake@lists.bufferbloat.net>; Mon, 27 Jul 2020 14:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=oSV6RLjZwp747W/g7Jq6CJIj6HKD3OWt18INZrJIbr8=;
 b=oAB26KOpdAumsSv4mJ792d11FB4AXnNbA36QL6vKGWrwmBtCwkDAwSlbULGBJ5bR7l
 9kt3lg8Yv9UMXguMaRzrmhSb3lnrN+fJq89H2BlweODMvWNwwbNi0MczVUjqBaRStwPO
 3Qan8FnsFrztY3TiLdgyNSzkPzCIkDz0fSkJdtdAtk2XMmceZjLzzp2R+/IVi3PMRzdn
 BKKH7VgOEMD0P/vwNRwoR0/Sbw2GDlXe7QpFwRwn6snZ2CzPfYqpqhXSaO6EtY+v88N0
 sALAQOyfzE7CaUKtEL8xf5udnzww0E9+6m1xHFpdUrc8+q5krBazk/KRp7qF+9rsyqsl
 mezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oSV6RLjZwp747W/g7Jq6CJIj6HKD3OWt18INZrJIbr8=;
 b=PKaIr/y/2Wjuidc7/OsrTaQInTPWztcYwqkQCJiAt75mGZJs5XW+Y9lOLjdNWbHL0m
 rvIIcq62tOWmQlGQ2zCyjP1fRd8TcCcRM2WcrJwsVeYCYh02GWO6MnqVuxgJJA+BPo7Q
 nDpCjHv/1UJTFuAwcMhK/zbO2Q/I5TPNFXKuoW4Y/FEjJABiJMoqUmj6H9TOG5MiTwjo
 wUFMOM1ZOiOlxGab+tn1Dd3GVNCdLlvWetGcnsnymNlhn5jjame2IRpFbfXq3mtqoLNw
 GQ0xjg0WxU4EQFkB9mok0NObdCQxvUooJV2e5ryhnI3R9ZKbkMgBbfVKbHFa8Naarqv0
 heWw==
X-Gm-Message-State: AOAM530Vo3bneMRx3dzBEFrrTRkUD+d3JFelTL68YI6OCBY+TZMG+3HW
 pPARjuc87rmtX3yt+9+TsPa7mH+GdSDaro6hQG1VhA==
X-Google-Smtp-Source: ABdhPJy+NQSAHJWePeE8clx8RqxERmbNy2hsFS+fqMJpfv9hQcjXFp1s4T1hkPg2DD5h5OsQv6YBsTit+C9ptbBB+y0=
X-Received: by 2002:aed:3689:: with SMTP id f9mr9328100qtb.238.1595886085883; 
 Mon, 27 Jul 2020 14:41:25 -0700 (PDT)
MIME-Version: 1.0
From: Jim Geo <dim.geo@gmail.com>
Date: Tue, 28 Jul 2020 00:41:14 +0300
Message-ID: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Cake, low speed ADSL & fwmark
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
Content-Type: multipart/mixed; boundary="===============1046302013054100247=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1046302013054100247==
Content-Type: multipart/alternative; boundary="0000000000004049b505ab732f15"

--0000000000004049b505ab732f15
Content-Type: text/plain; charset="UTF-8"

Hello,

Thank you for all the efforts you have done to make internet usable.

I currently use htb & fq_codel in my low speed ADSL 6Mbps downlink/1 Mbps
uplink. I use fwmark to control both uplink and downlink with good results
in terms of bandwidth allocation. Streaming video is chopping bulk traffic
successfully.

Is setting up cake worth the effort at such low speeds? Would it reduce
latency?

Regarding fwmark can you please elaborate more on the calculations
performed? Man page is not that helpful.

My understanding is this:

I use 1,2,3,4 as marks of traffic.
If I set the mask to 0xffffff[..] the marks will remain unchanged. Then
right shifting will occur for the unset bits, so they will land on tins
1,1,3,1

Can you please correct me? If logical and performed between mask and mark
value?

Thanks,
Jim

--0000000000004049b505ab732f15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">Thank=
 you for all the efforts you have done to make internet usable.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">I currently use htb &amp; fq_codel =
in my low speed ADSL 6Mbps downlink/1 Mbps uplink. I use fwmark to control =
both uplink and downlink with good results in terms of bandwidth allocation=
. Streaming video is chopping bulk traffic successfully.</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Is setting up cake worth the effort at suc=
h low speeds? Would it reduce latency?</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Regarding fwmark can you please elaborate more on the calcul=
ations performed? Man page is not that helpful.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">My understanding is this:</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">I use 1,2,3,4 as marks of traffic.</div><div dir=
=3D"auto">If I set the mask to 0xffffff[..] the marks will remain unchanged=
. Then right shifting will occur for the unset bits, so they will land on t=
ins</div><div dir=3D"auto">1,1,3,1</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Can you please correct me? If logical and performed between mask=
 and mark value?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,=
</div><div dir=3D"auto">Jim</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div></div>

--0000000000004049b505ab732f15--

--===============1046302013054100247==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1046302013054100247==--
