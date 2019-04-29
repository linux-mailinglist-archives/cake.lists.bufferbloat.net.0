Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C53E2EC
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2019 14:43:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7BA093CB3A;
	Mon, 29 Apr 2019 08:43:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556541795;
	bh=WruhbkOyEC20SeTt15HPQsZYSX6vaeSB20lKlUDf5Jc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YZNMIQBBTvynWvgneV8Jbe75SB9Pp7i4Qb+z8QPXmfelAx4hQoe5vTHPISqHZNkk+
	 wF8BJY04m9iGDfD4jXSgzsfMxiShYGn5Ey/QAuw3P6yY8QEfvNDQGO9CeyQ0dRi51U
	 ZIWGJUXaydGNlIm2qEkXw/QguI7dbMANMNQnL9W/plh6lvYcGgb3Ii5JeqeCIB15UQ
	 +4rzTXIvbRV+8Icy8rBpi4A+/a2oAGXzq4jrUEdzUeJ8gYCijEYF2T1kpki/hRMKJn
	 grsYadkgzHQFiryZ69E1WeQvKetpHkoSSK1f6Xo2y4QdxMz5Oe0aRTej7sSX3b2P6l
	 sRNOyTXql9PrQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 857503CB37
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2019 08:43:13 -0400 (EDT)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B00D2075E;
 Mon, 29 Apr 2019 12:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556541792;
 bh=bIfBqkPDQ6e7Jh243IHJzgn2cqjGZuCjSwv8chcSMXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rRsOcR8SM9orR5Rvp5Qc2/vbTK3Yexrp3bzYiB/hvZgpaQ8E6gg0QW640Jprhvexp
 b6oWsod4P/50gzWJ7mUveVaTK9i2uTnLSJq+cpSccUKD6ofm97Y8/J6i4C+qGOO5v1
 j3CkZutlLv2dqXyTpJzsV+cD/zd2GT1LJtLy2/CY=
Date: Mon, 29 Apr 2019 14:43:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20190429124310.GD31371@kroah.com>
References: <155446010188.1460.16734711102827171744.stgit@alrua-x1>
 <155446010198.1460.1169444436924215431.stgit@alrua-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155446010198.1460.1169444436924215431.stgit@alrua-x1>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Cake] [PATCH for-4.19 1/3] sch_cake: Simplify logic in
 cake_select_tin()
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
Cc: cake@lists.bufferbloat.net, David Miller <davem@davemloft.net>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCBBcHIgMDUsIDIwMTkgYXQgMTI6Mjg6MjJQTSArMDIwMCwgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHdyb3RlOgo+IGNvbW1pdCA0YjQ1NDQzMzIyMWRlNDQ1ZjZkM2Q3M2IwYWMyN2I0
ZjdkYTI1YjgzIHVwc3RyZWFtLgoKSSBzZWUgbm8gc3VjaCBjb21taXQgaW4gTGludXMncyB0cmVl
LiAgV2hhdCBhbSBJIHN1cHBvc2VkIHRvIGRvIHdpdGgKdGhpcz8KCnRoYW5rcywKCmdyZWcgay1o
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
