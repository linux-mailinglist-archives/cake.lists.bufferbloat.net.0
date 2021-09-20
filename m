Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CB9410EE2
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 06:10:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1CBB03CB48;
	Mon, 20 Sep 2021 00:09:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632110998;
	bh=UI1mJFZAwpYlr9WIfOx4kf0IpkUr4rv9O8d1BYUv51A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P0JhJ8zB0pkhaQ7IKiiyDmPfC9/cvIIvQAEy6q6xa2s/vxpglbSvkWfwZA146x9kA
	 /lP+beq9giLOAw7gbIga5h66ELfUhd0A9SL+94m+7kdrSqGA7G5iotH41LZBdUl43N
	 d9RiXewQTTLz/MtxWf5xNTARkjTOe10BTO4XXFHbbogvP4+KSZ3OmNG9gXXTWfN8VL
	 0rUNddFdAfm0U/+bb951ydGOQZI/tv4fMf7WPTkepHUDdmS460Ndq86cRIqOFmzEWs
	 8pSXLR06TFUS7Ui8E6LsbcNpeO83XeFmLHEOuJHtKODgTp73sOsayWWiNFD18aj6CI
	 24iKlw48MAd3w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 606413B29D;
 Mon, 20 Sep 2021 00:09:57 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 554EB107C14;
 Sun, 19 Sep 2021 21:09:56 -0700 (PDT)
Date: Sun, 19 Sep 2021 21:09:56 -0700 (PDT)
From: David Lang <david@lang.hm>
To: =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
In-Reply-To: <257851.1632110422@turing-police>
Message-ID: <2760o61s-408q-4613-r840-3sq96s8q1s1@ynat.uz>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="===============7217231120676519930=="
Subject: Re: [Cake] [Bloat] [Cerowrt-devel]  Little's Law mea culpa,
 but not invalidating my main point
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--===============7217231120676519930==
Content-Type: text/plain; format=flowed; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 20 Sep 2021, Valdis Klētnieks wrote:

> On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:
>> what actually happens during a web page load,
>
> I'm pretty sure that nobody actually understands that anymore, in any
> more than handwaving levels.

This is my favorite interview question, it's amazing and saddning at the answers 
that I get, even from supposedly senior security and networking people.

David Lang
--===============7217231120676519930==
Content-Type: text/plain; CHARSET=utf-8
Content-Transfer-Encoding: BASE64
Content-ID: <55sp560-p443-81oo-742r-n6qs32rr01n@ynat.uz>
Content-Description: 
Content-Disposition: INLINE

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxvYXQgbWFp
bGluZyBsaXN0CkJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo=

--===============7217231120676519930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7217231120676519930==--
