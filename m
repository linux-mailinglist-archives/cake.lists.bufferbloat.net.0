Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0CBDA8A
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2019 04:41:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 405343CB3A;
	Sun, 28 Apr 2019 22:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556505707;
	bh=v2KQOd1D9YRYRerjk0Jd1QCO7XaBTFXU74NZ+ABAJJg=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:List-Subscribe:
	 List-Unsubscribe:List-Archive:Reply-To:List-Help:Subject:From;
	b=A9gn7oezmlwz1qYs7mPpHVxSM+hqkYA+domieQI/SLKG8P5mFACTmctZwIpdUZAQZ
	 oU+bFVdICxFUtYJW08v7SfgZBbe25GHFgD3a/LEtSxxJoemBOgsjvA2OgzGcnPQQmW
	 7imghSi75AomNhkej8vmcE0BmJh65QN6U2Nqgqg6984v6/pqg9rG98J5SZ9sySx10n
	 WWWisqye5ZkSRYuZI4j94lqKhjv6qHbeH03opTwKm3bw1LRdZngLe9D5UQKfmtKTlz
	 2VtfVvBCUKAdF+Cge2vP7suxuEwrgYWcdA8CY6VOS4/16UM79bWvuPAvoTJWXkMbUX
	 9F1rlDvXwPdmA==
To: cake@lists.bufferbloat.net
In-Reply-To: <CAA93jw5eU8f7Ldp1-ssHyfO104GOGbQh8m28guTum5KMafoPtw@mail.gmail.com>
References: <CAA93jw5eU8f7Ldp1-ssHyfO104GOGbQh8m28guTum5KMafoPtw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.2416.1556505706.3538.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Y via Cake <cake@lists.bufferbloat.net>
Precedence: list
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Y <intruder_tkyf@yahoo.fr>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] sch_cake shaper/aqm/fq implementation in linux slides
 and paper
Content-Type: multipart/mixed; boundary="===============0833427367124978182=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0833427367124978182==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <intruder_tkyf@yahoo.fr>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic314-21.consmr.mail.sg3.yahoo.com (sonic314-21.consmr.mail.sg3.yahoo.com [106.10.240.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 5AE123B29E
	for <cake@lists.bufferbloat.net>; Sun, 28 Apr 2019 22:41:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1556505702; bh=2qKJTxvy20atlik9EuGrCCdIUcnN9xK+G18FMr5LIAk=; h=Date:From:To:Subject:In-Reply-To:References:From:Subject; b=D9cmQBTcN4iRVxH0BVrN/XUv4RPYme4SPp5ovICzuB982Aatg+vn6kA3WubADsetirvUEl+FESoADyhJff9GuGa75BND6TGJmcTipbMwWSEuX1NDCknwAWhnHMz0KJE7Pm04tzUFwfh4uuWvtI0OhDFhMqPa5trcbkuLvv8EDm+70XjceDuSe+O05y7xQEEh8092jf7iwtlpm88qtXixg4/KLPeB3Qo0sVKCOg6X5nFXikXXEaIFLuW+RllG4O4SAWc8dUIqTrN0TeAXj6OOd1Q4Wef9+DHVIPa+7xpD+yhhAFRSprsQF7rwdG+UcR3+M8iYWUaP6zbk8309ztdn1A==
X-YMail-OSG: DWUCJaAVM1nix0kydR3YkL8jjWzqtFSk5POhpSUbAaPdiFcdTiaChxLX1kqmQXJ
 c0Pm2WOrr6Zy8EikdiZ_mJDLsvDSnoH96p7HDBKofuOb2Iw_xrKTdcL_1DCiYI5xz0KGyWoo_frV
 ou4hBzVDjHi.pb9af0yUacmrZB7CAIEeXk9P9WpTDnv3bbT7U6xAuN2YyWAW_TKwjxvg5c2KYYus
 Yxm1R9ONjvpS4_xQoqqvQPLZaimMzreEygH2mbIKvrNGfLmjB6znByV8Tie590Agi6MH0XO7t7iS
 aPY4r0x4vwARq8NzbSAcnMGCtLXenRSUJYmlHR.eeGDjK1GNiNC5uWPtqfRoXySBn1pMIyLUYEsj
 FzRY2RUjc.TXamP9jiPgcbKH6iLDIhhzJX0FX4zucciha7S5H5sma6.zsejF1KAbulHCRXaVAonJ
 Zx56gvS11cac4PVskp.AB4HgMvEh5xTSamaAa5rxSsqgV91yh27k_FA_AZ6lzWX8oCEVBzsGlBHd
 3_D5nO5Dw3VY2uqBym14suKF4GYfcewSlSFMepW36Vuc0liChf6fNr7aIqj6xir0CX4DXJs0FjZp
 PIRSLKoLKY_xHfs9RW65zyB77Y_RuQgrRxpatm9_gS4syNYD5C8plRPhKbU1ejBicbwuN52gD2vi
 mZGuZSRkpXr9xa0a84NcsNtjwg34VZNT9pnJ5fTszjzYJGiLppFytxZJN5HKSpgHTGU0NHgyUcBc
 XzuuKhfss5tD6EY3bGEqW6n.NRKplQkPrYSDIU7ZQmD.VuDVvPaK3J00rsSYRwTg0JZ8JFVLw1JH
 RluSI2dad12VX6bn4jSf9GiK8Gk9zXdw0PvSvqbQJF63ln7vieu0jq4Zyrq3XsAYNWecavUzWRtu
 fCgh2N9MVwdr_cJJhbVmAbH1uOtQGoUHCEo1HSJvNm_vlkLRuB907CwMMnKVp6LysNDD0j3F9xEY
 GMyOcs79mugajX1FJrF2I.iNUteu6UKycC.q8dEYU332x3L908BcXaEUo92o8pfZTTZaSIBGotmg
 0_U_PMEoFgWyWrFpalRFOEdqbHl0ZxMx0Sn18i5NDbNctnUlvPjudUC_JuKwqa8zaXzxUEfNhfRD
 es6d8Piba8yvcBOUNvroHJ63ejE6voUQTkhAnISZvqlxNR5gd
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Mon, 29 Apr 2019 02:41:42 +0000
Received: from PPPa3808.e13.eacc.dti.ne.jp (EHLO raspberrypi) ([59.157.102.14])
          by smtp409.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 9617ec49dedfc0ab88d66027cac76abd
          for <cake@lists.bufferbloat.net>;
          Mon, 29 Apr 2019 02:41:41 +0000 (UTC)
Date: Mon, 29 Apr 2019 11:41:34 +0900
From: Y <intruder_tkyf@yahoo.fr>
To: cake@lists.bufferbloat.net
Subject: Re: [Cake] sch_cake shaper/aqm/fq implementation in linux slides
 and paper
Message-ID: <20190429114134.6e6360e7@raspberrypi>
In-Reply-To: <CAA93jw5eU8f7Ldp1-ssHyfO104GOGbQh8m28guTum5KMafoPtw@mail.gmail.com>
References: <CAA93jw5eU8f7Ldp1-ssHyfO104GOGbQh8m28guTum5KMafoPtw@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

It seems Bufferbloat in the world is getting worse.
SAD! :P

Yutaka
Sun, 28 Apr 2019 15:15:44 +0200
Dave Taht <dave.taht@gmail.com> wrote:

> Since sch_cake has been generally available as dual licensed (BSD/GPL)
> open source since last august (as of linux 4.19), and shipping in
> openwrt and evenroute for 3 years, I have generally longed for more
> folk to be fiddling with it in the ietf. The most current stable
> version is in openwrt 18.02, which shipped in january. Cake is in
> general is too complicated and addresses too many things to
> encapsulate into an RFC, but in particular, the DOCSIS/DSL/Ethernet
> framing compensation modes are excellent (unlike the BSD pfsense one),
> and we have many other improvements to multiple components of the SQM
> systems we've been shipping for 8 years. such as per host/per flow FQ,
> sane diffserv support, and ack-filtering being theprimary ones covered
> in slides from my IEEE lanman talk:
> 
> http://www.taht.net/~d/sch_cake_ieee_lanman2018%20(2).pdf
> 
> One major feature not brought out in paper or slides is that cake
> works the same whether it has backpressure from the device or via
> "BQL", OR in shaping in software. Another important feature -
> GRO-splitting, we haven't gone into much in print yet. In the extra
> slides section are some nice results from a GPON fiber network. It can
> also be used as a local host-only qdisc; there is a brief comparison
> of cake vs sch_fq also in the slides above. As well as in network
> namespaces, vms, docker containers, multi-tenant dcs, etc, etc.
> 
> All the features of cake were developed in close collaboration with
> the actual users of SQM in the field.
> 
> That paper: https://arxiv.org/pdf/1804.07617.pdf - talks about "Home"
> gateways but since then we got it to scale past 50GigE in software
> alone. I look forward to more independent benchmarkings in other
> scenarios, and we do take bug reports on the github.
> 
> Some of the new SCE ("Some Congestion Experienced") related work has
> landed in the https://github.com/dtaht/sch_cake repo already (as well
> as fq_codel_fast) but the majority of work is taking place over in
> jonathan's repos presently.
> 
> There is a paper pending, also, on the improvements to codel that
> jonathan (primarily) made in the COBALT AQM that I hope will be
> published soon.
> 
> One thing I've longed for is some coherent testing of the modern
> videoconferencing and quic and bbr congestion control algorithms
> against it. Is there anyone out there able to do this and possibly
> collaborate on a paper on it?
> 
> I was really quite unaware until this past ietf that so few had had a
> taste of cake yet.
> 
> thx!
> 


--===============0833427367124978182==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0833427367124978182==--
