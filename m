Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DE990667A67
	for <lists+cake@lfdr.de>; Thu, 12 Jan 2023 17:12:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 73C0E3CB4B;
	Thu, 12 Jan 2023 11:12:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1673539951;
	bh=0Y/5qD2tU9JqmyrJwUneJqCE9OzOzIE73o6p9nY5xTY=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=p1raFIVJAcynrmXvHC49iHF48KmF2ULKoZTrbLPKdNThjqpEocGeOkM/DQPXIFKxK
	 HEey9jHwo4ATc62rBRbcjCzuAWLsNmoFwDIwlbCbxEgugLt2I1LZJXi5mZYe0r3jw+
	 OHtpBvp9YLTBrysOgNU+IQ8gEZSNxyAD8xAlj9X16Nn+CLFPVcx8C/eQvgIbTb95Jq
	 APUKceYoKWmSPPqXII6np7okUrd8ex2pn8ZoUJyjsV0aaHi8ZkZgpLZETJS5Fpdu6Q
	 4AWt/JgT5aLtjomwGNghgPgAmZy7fjLpFhriPBrBSFwkxccEgSV1iGEyPkklwaJnhr
	 oiFkhwIj13aIQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 784403B2A4;
 Thu, 12 Jan 2023 11:12:30 -0500 (EST)
Received: by mail-wr1-x436.google.com with SMTP id h16so18567030wrz.12;
 Thu, 12 Jan 2023 08:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/rA5evMy9CLhxFRHe/AKQZNd04HoU4UBRuYsfzJaGu0=;
 b=T2uYhK5Zmtc9NZR8Jpf4UimG/U8uhHNHGZBOJ/bQeO8E7EXlJ8vqnhSr3OvtmxC29g
 6RMh5j3KacPLcm9toEvrrF7Ydwx/g/GqYwKKbdEJOECYl4qzj5KR+jlXYPwG0Akdal2g
 POHtE0McZv2CH/saaXNXzASzAWtuQ2ApruFeQANmMnyuTN6Omuw1XO4ryJZKZdArMtfT
 Pc++QmVG9dkqZplnyiurd9eGel1xOdpZbZBZxYI/AfHmi/rTfb7XHtZhiMinMfOaiHCX
 EjkAU82D1vxSUubFtJ8h3bPOdwSqNKnRiJ1MNPkjEZ3hK+k79i+ZLO1bbLYAgnMWfFMm
 D4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/rA5evMy9CLhxFRHe/AKQZNd04HoU4UBRuYsfzJaGu0=;
 b=yqtstHLUN7x6FVArMQ8f5iVdvD60I2Zw4IRIo1xB7teuFCV+zL1FkZ+4EzaW20VLKn
 4aoMkkjgFu5+1QxNSVz4YtvqXRA3osq4hfiWPEt8C2kfmB6K2L+XEQlAQxzxuM6oC/eA
 xfaaghOz4N9Nv1Dr46ACD/E3mhuI4kOzbwHp4MBvATM4ja1G2LjR8gOK95rp4XCPTZ9K
 kJ5hJytW87gadITJbxpO1fp6eXGzt6JvslIS/v3hNxC+OALjvplEm+0HxorrnIvZ0t0y
 t2/qjoGt1ywYLz1pRyawQmMBYHA2PbVZuvssrTLwDpuy3faItrhigoRzI6JD1noUpAH7
 Ellg==
X-Gm-Message-State: AFqh2koY5H9wka7OLRWimUy3lobW/bDwYSHsbhdy893tbbTcr5Nn/pZ3
 8QZ26cs2MOUHPDz8TmXUVkFUyc8AcWd/+Pt79VM=
X-Google-Smtp-Source: AMrXdXvGrIxWTSVpUVgHXI8q24ihMu6aF1s/hjctScEzPOLjgNWR8QDIiThJsMbJgwrXP3U4NYXnBho2NrcGTTjgF5M=
X-Received: by 2002:a05:6000:a19:b0:2ba:fe36:49ba with SMTP id
 co25-20020a0560000a1900b002bafe3649bamr1043412wrb.500.1673539949107; Thu, 12
 Jan 2023 08:12:29 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
 <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
 <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
In-Reply-To: <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
Date: Thu, 12 Jan 2023 08:12:13 -0800
Message-ID: <CAA93jw4DcBhA8CevRQoMbzjO-3Jt+emr+xvnJ-hUGkT+n0KJzg@mail.gmail.com>
To: "Luis A. Cornejo" <luis.a.cornejo@gmail.com>
Subject: Re: [Cake] [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
 cloudflare'schristmas present
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, "MORTON JR., AL" <acmorton@att.com>,
 IETF IPPM WG <ippm@ietf.org>, libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Jay Moran <jay@tp.org>, dickroy@alum.mit.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RWl0aGVyIHN0YXJsaW5rIGhhcyB2YXN0bHkgaW1wcm92ZWQsIG9yIHRoZSB0ZXN0IGlzIHdheSBv
ZmYgaW4gdGhpcyBjYXNlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
