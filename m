Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 609081E8669
	for <lists+cake@lfdr.de>; Fri, 29 May 2020 20:14:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA9AD3CB38;
	Fri, 29 May 2020 14:14:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590776086;
	bh=sQhApmY1R/90JMPqNfp5lbWBtMiRhqBjMWL3OcCrCG8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XICersP4H1GTBA0Lkr10jI7Q3Ho0nKoyizdBwKlqlU/VlZyt8DhNmKpBUsEAWrmR2
	 h0tJBNvToQNaO0/ed+sbnPASOvulk+bT4ok3MhhQu5lk+olAvKaiObsqhFbBDsjGO1
	 4qL8vfgXyGoDfJsv8IPpY7CMZbAkTPqOcZI367iVgcu0MtsyOZB3vYFTT8P00gw3ut
	 2eauauJ0rpmHfvuTu33S2EZs+tPC5vPS4tcDLb0gSCnFcPfzlnk6Yk2U+UxSv77Man
	 4Ys6TfnROA/ExsqumP5xVrVVlM1bxpCP4C8dB58COrY3Db6ViUolgbQAOK8YarMoOg
	 UqvN4x134JjqQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B8B453B2A4
 for <cake@lists.bufferbloat.net>; Fri, 29 May 2020 13:57:02 -0400 (EDT)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A21002073B;
 Fri, 29 May 2020 17:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590775021;
 bh=6hjkRiGoDWgBwj+tfVkMty4dGqtVTTKH+mMJl6ebRw4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m2v7LLGjYpRyy5G0GGiUhTpUqTuBYmANXmFtGltlFyf/sGZ6dJl2z3K12bO9YXh/Y
 F42fVWSH1RRw8row7nrZTVBMpxVj024kB6i9rZ7yciQLVFsYrwCOLLxHm0D82iLEdm
 +tpQ2NhK8tDq7nSHbykz14A03QmSvq3mqAg4umzA=
Date: Fri, 29 May 2020 10:57:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20200529105700.73a2b017@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20200529124344.355785-1-toke@redhat.com>
References: <20200529124344.355785-1-toke@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 May 2020 14:14:45 -0400
Subject: Re: [Cake] [PATCH net] sch_cake: Take advantage of skb->hash where
 appropriate
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCAyOSBNYXkgMjAyMCAxNDo0Mzo0NCArMDIwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gKwkgKiBlbmFibGVkIHRoZXJlJ3MgYW5vdGhlciBjaGVjayBiZWxvdyBhZnRl
ciBkb2luZyB0aGUgY29ubnRyYWNrIGxvb2t1cC4KPiArCSAgKi8KCm5pdDogYWxpZ25tZW50Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
