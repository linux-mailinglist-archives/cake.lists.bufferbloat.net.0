Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5BA1B88D6
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 21:19:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C72943CB38;
	Sat, 25 Apr 2020 15:19:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587842393;
	bh=4vsdhPwGTsTiIMj+Prl7+7mDQBfPeJy1fUOy67zmlbg=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:List-Subscribe:
	 List-Unsubscribe:List-Archive:Reply-To:List-Help:Subject:From;
	b=NuareGW5KvtE05u4VzG/H1q10EK1CGDSTfQVnrJYh/lI32z4hIGmSgtEIqSB2nsi9
	 CJ6BjpHFpnUbbGY8F+W1yUH0BUt1Q5C8/Cjg1gucM8qs/ImhdmTlvNdnqklfOS9ES3
	 OTdNbQQtIdEEuLVezN7XDkCRZK2lV4nZCbVtrzfGCEG033i7tzKWd00GWw/k+OIDFP
	 O37hZXlYRoNgsfWXSnNVO5P8TlJxN2tpO5WLcGScms7IfsSRAF9nSHuj60GsJTgR1K
	 KWvyO2jn1dPafBDca3RBfkNEra2b/d3qmtJBYl8fUA56XbcO9pkaAKe4B2YvoXyU22
	 AUa8cdm6/Uj6w==
To: cake@lists.bufferbloat.net
In-Reply-To: <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
References: <CAA93jw71YdABJPeRkFDrzLGY2PtWy-zqaLoGrnFWuFhOPz48xg@mail.gmail.com>
 <20200424120317.4d3d3e98@rellim.com>
 <20200424120423.1f57def6@rellim.com>
 <CAA93jw7e6k4sxh2+5H-dSBmdUkA53=VxJu7FmTdrSKTsbP0rWg@mail.gmail.com>
 <20200424121344.2bc8e62c@rellim.com>
 <CAA93jw5i7ccwc3VwSKiNk9XL-FXHgwznxzCHUDytpHFDsNGfoA@mail.gmail.com>
 <20200424123005.64aef3bf@rellim.com>
 <CAA93jw5xygaNsqYb9z9cF00TpH=8cOSDzFGZJxrDW-SkQFey4g@mail.gmail.com>
 <20200424195745.72d725bd@rellim.com>
 <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.74.1587842393.24343.cake@lists.bufferbloat.net>
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
Subject: Re: [Cake] cake on linux 5.6 32 bit x86 might be broken
Content-Type: multipart/mixed; boundary="===============1139892405189249451=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1139892405189249451==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <intruder_tkyf@yahoo.fr>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic308-18.consmr.mail.ir2.yahoo.com (sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id B09A23B29E
	for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 15:19:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1587842391; bh=lelywwR+B6NaQkP84zfsqvQmH2ADK5b+4b+0Jk6LUW4=; h=Date:From:To:Subject:In-Reply-To:References:From:Subject; b=h1aQB0fUfsUBaYU8KqO6QSciloEajMKCtTi9Vrb4jj6bBl3T6TEqZBs2dpiLJ/xJgp+vHKyvnngeh9ZMKoJS4HuCcz1kfe+qKze18bihNHmMLr5WGHPVbgrZiUexqW0klJ1Wl+sRonUvvArZplRln9828c6F4l14KrFPJ/dzndRroUhlOGIKZfoSO5rhVaXaPspqi7ilb8kg2mZ05biyux7RJuAWeFlK0/T98PxjJuk0h2GAG4j6Rryhv9f6FI+Jn7RK8loW+dE0TLc1mg+QTQ3EBsjXSfeTUE+Djka6HrqsY1Yf6nH7m/MbwD1AUA1uVAk7wO3q3FXxXLZhPSWbMw==
X-YMail-OSG: z4tw9nsVM1l.J.PwI23RbWz131U3SOnPTfkHFTORtziK3TVUuQHHpCqlz0Z_wFX
 EI.Sd9xn2yWjOhs4j3bmYCUKkvi8gKmNB_1BlVbRORlCxH0Is3vurUX6yuCUiGvvaf5.QHGMj70E
 12A30kg7wybfHJZxojcPqQiEykE8QD0DcunnOBiCGCGa__P.oH4Fs2dFvmgnfIicqs7hjV5M.hkE
 nBsOlxyIG10jPum2fLx.xnD3ghQgYOZhKhK1nHGWEzUVrQnDoKfr9RsyvTT0dp31yZ2kY1wbEZ0V
 D7MbFp8qPvRCWdTYIoWpQgo6YE4zq0XHMijIDJWFKcgju9agQ6W0ZoOqkiiwyi.ehZoVtyoFOMdm
 nR8YYV3opKbnPJsRFo.3CHp03L2zUIwSIesXgsldOhJH0E5Xb_1dO0BnEZ7W_ZmFmcSwHw_NfW5I
 CPmA3zgTliOe6Pzjs9QhDdy8GSBLVbiSP7B_2QkxNvYVgn36rnSyq5E.._Kmhe75lgIBlNOWVsCR
 DD8WzlH31jhXs18iJYhmHKK.DWkPB23zE6h0nmg._jh7LwWBvZFG0F7pGugndvgDUBctIAwnFCqC
 e7UbMj0D1WaWlph.u1zJ300S0FsITWhqaxN.2AucjkkEahBA4kDJCfLCCGIBRV2LICt705FlUFjC
 OT2db_0Wq0NNqVjYdjftje7hFfqIkB5WCcUzn.Qd_1v8cW6VG0SKJY5J31bMvlLPYyiV50D.1A7L
 l3xrH9zJUydEZo1ZzKdYVEen6Etgrd9JOzI__Zx69OqeUddAp88frw3ydifs_TAGmiytRD1N3lrD
 aqanl6VfLJCnQSBvtLlqqeN.uSUTqy7W559AVrDTax8RlyfYZRLRMMoB79xAeSBtNm3Am3aoWbM5
 4wNfqhu32DnKVQuj8Y_9whFDWoYVqoxUwtg4mQ4GCACs3cGUltkjgTf81NAdDRETv0T2ELwZ1H8F
 MSBpnPqD8mUIXSTZvy_i.dwx71c1blpK3ge3Z7HJdsJF4EzSZdyaptA3CirrChtJ257ZMaiiHV3D
 0lHzw1l5jZuRj4gkPflxyLjuLqYLcUs74XguDsgRbqqvCLXZzDhIET1Udl7cnpcJoDoJ9HkmOvzu
 sHZXKQrjh8jFSPp8ajEIlj8eMrn2NL1z1H9KhbXE.xttFGp6ng0u_DVmF_ATrGEOAHZ60lrbORqL
 zXGxusmrVywcJsNtU34KjaDvsaKDuPyEBFuQfuGTIdEwdMob5E5nwYm8OKsSbtlN.c6doW5splk3
 NFLV0WxxOCfF.VcDObq5EN9F5hrh2Yw7QZry_5wWgxcF2X6WCrG8UhYHcoci8kxgkkYBP5.o5_pV
 FHSufMMNXmbUbSrIPqchE2Q5Ix6B1k0Ysk6Ru8arI93lYIjZkP3aIvZ9wHMoGolZZgP8c7Bard1e
 cO9ccO3nxlPLXfWK6EYmSjntxglYMFcM5vTAQQowi6Faxbg--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ir2.yahoo.com with HTTP; Sat, 25 Apr 2020 19:19:51 +0000
Received: by smtp408.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID aa516de83347f5aea1fdfd64b901b61d;
          Sat, 25 Apr 2020 19:19:45 +0000 (UTC)
Date: Sun, 26 Apr 2020 04:19:36 +0900
From: Y <intruder_tkyf@yahoo.fr>
To: cake@lists.bufferbloat.net
Subject: Re: [Cake] cake on linux 5.6 32 bit x86 might be broken
Message-Id: <20200426041936.a06a1597e07757d53ab9b266@yahoo.fr>
In-Reply-To: <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
References: <CAA93jw71YdABJPeRkFDrzLGY2PtWy-zqaLoGrnFWuFhOPz48xg@mail.gmail.com>
	<20200424120317.4d3d3e98@rellim.com>
	<20200424120423.1f57def6@rellim.com>
	<CAA93jw7e6k4sxh2+5H-dSBmdUkA53=VxJu7FmTdrSKTsbP0rWg@mail.gmail.com>
	<20200424121344.2bc8e62c@rellim.com>
	<CAA93jw5i7ccwc3VwSKiNk9XL-FXHgwznxzCHUDytpHFDsNGfoA@mail.gmail.com>
	<20200424123005.64aef3bf@rellim.com>
	<CAA93jw5xygaNsqYb9z9cF00TpH=8cOSDzFGZJxrDW-SkQFey4g@mail.gmail.com>
	<20200424195745.72d725bd@rellim.com>
	<CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,Dave
uname -r
5.4.34-1-MANJARO

Cake seeems to work.

Yutaka.

On Sat, 25 Apr 2020 12:09:49 -0700
Dave Taht <dave.taht@gmail.com> wrote:

> the bandwidth parameter is mis-parsed. this is stock kernel, stock 5.6 iproute2
> looks like an alignment bug. Anyone running x86 on 32 bit? anyone
> running this kernel on anything 32bit?
> 
> is 5.4 ok?
> 
> ---------- Forwarded message ---------
> From: elided
> Date: Fri, Apr 24, 2020 at 7:57 PM
> Subject: Re: PSA pt 1: for better videoconferencing at home on slow links
> To: Dave Taht <dave.taht@gmail.com>
> 
> 
> Yo Dave!
> 
> One step forward, two back.
> 
>     Linux kernel 5.6.7.
> 
>     ~# tc -V
>     tc utility, iproute2-ss200330
> 
> This started cake:
> 
>     ~# tc qdisc add dev eth1 root cake bandwidth 160mbps
> 
> But, my score of B for bufferbloat fell to a C!
> 
>     http://www.dslreports.com/speedtest/62801576
> 
> cake seems to be ignoring my bandwidth:
> 
>     catbert:~# tc -s qdisc show dev eth1
>     qdisc cake 8005: root refcnt 2 bandwidth 1280Mbit diffserv3
> triple-isolate nonat nowash no-ack-filter split-gso rtt 100.0ms raw
> overhead 0
>      Sent 591223311 bytes 562082 pkt (dropped 0, overlimits 666624 requeues 0)
>      backlog 0b 0p requeues 0
>      memory used: 377936b of 15140Kb
>      capacity estimate: 1280Mbit
>      min/max network layer size:           42 /    1514
>      min/max overhead-adjusted size:       42 /    1514
>      average network hdr offset:           14
> 
>                        Bulk  Best Effort        Voice
>       thresh         80Mbit     1280Mbit      320Mbit
>       target          5.0ms        5.0ms        5.0ms
>       interval      100.0ms      100.0ms      100.0ms
>       pk_delay          0us          8us          6us
>       av_delay          0us          3us          3us
>       sp_delay          0us          1us          1us
>       backlog            0b           0b           0b
>       pkts                0       447439       114643
>       bytes               0    580864114     10359197
>       way_inds            0        42159         2526
>       way_miss            0         3931        87597
>       way_cols            0           11            0
>       drops               0            0            0
>       marks               0            0            0
>       ack_drop            0            0            0
>       sp_flows            0          247           46
>       bk_flows            0            1            0
>       un_flows            0            0            0
>       max_len             0        36144          998
>       quantum          1514         1514         1514
> 
> Back to reading...
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake


-- 
Y <intruder_tkyf@yahoo.fr>

--===============1139892405189249451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1139892405189249451==--
