Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A92B33330D6
	for <lists+cake@lfdr.de>; Tue,  9 Mar 2021 22:24:24 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 387393CB40;
	Tue,  9 Mar 2021 16:24:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615325063;
	bh=LhLf6a5dGJIylZn40E6wMxf9AYUhqcUSm2bq8jjZHRI=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YNP43YB1HlrO3fq7vIUVhKVzvj4hWyzPMKE1MkG1nTI+nRyVLa00SVlzLCtGTStGP
	 rRRHA0kRiTPdX3aCHHv9Na3Yj7EZcxuceCJVjXB3PKmYPq7iPKdeNnhB8xtx4rWaG+
	 xpJ7kEkvyl6FHEutMq5vDo3D+HADcnwzabpAlypYbrXjkFcDdIhpSy1fWESd4X+c60
	 uIQG7HNGNV8ZDDnQu++nVsRm3ysvR0+67kw3/2M8idKXdfVsLOBd0PufK+GdJWX1AG
	 VV3A0JvlWPxItM3ZVQYAYlymF0xrqVnzgJ5pk4glM+i9OLxxgEjelAlHvs1fl61CvI
	 GD07oIMBbUiag==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B5F5F3CB35;
 Tue,  9 Mar 2021 16:24:21 -0500 (EST)
Received: by mail-lf1-x131.google.com with SMTP id f1so29759449lfu.3;
 Tue, 09 Mar 2021 13:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WQbQtZ2uBxiQFWqgsW4wSkgfF9hosKxIVfd0W9vcPx4=;
 b=b6RoA4OzCTzYz9Fudu58H3LsM3pGDODoXGTQgqrUizA7OBLrpiRljV6C6ZAl/D2SW+
 H4F8GnhVEvtaRDCjuuoa4WVd0UyTgS8Qwl0gVSxTDQpLigb11E87DrK7XQMfrh/X7yjm
 S93eGmWj274dql8Iaym+b8sNq+hO7sqghPZCaaFXV1zhbabyTV2PFcvBngaYiOTttnMQ
 340yzkh5T7e0vnZAEO5MxpP+Z9Z4cNoH1Q/6Mk6vk3dk5jmKTkmDmAOr+WZDvYgY5Udb
 L2iiGEjq8TVgyyQxzzRYSuyGIIvJ7h25epJ8XVIBlr59SSoJBDcUsImxp+p/YtcxHogu
 ZY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WQbQtZ2uBxiQFWqgsW4wSkgfF9hosKxIVfd0W9vcPx4=;
 b=GWnPidvIP7DtXmCUP8tQLNld+QSG7802+X9flvTyhrxlx0FFrLuIL2VhqDRWi8sUOo
 U42Yvc1ugdpzg5y8y8RxsIq/G0sYfaWnjBNRbaL0dal5SMFd5LrCPymr9OtKSb7l/uMY
 RxAwpCoU9X1EHiuDv9lxxuaTspramrUW44hxNIhNPN1N2On1fxGET/Dibuy5khn/OjD1
 x5gdkHfXrMXE98Qn9u4Fdwp1cCepRZ8DZXLObl4f/gW1jT2gC3H4azhB1RTEGRqmmZoS
 doFvjDK2PXrvgns4P22jYR3VkudkxQ9OiTPs5nZxucJA1iPxM1p8oD4lPy+FQKLtj8XL
 ihrg==
X-Gm-Message-State: AOAM5323G7IeJ+0z8rsulkpDAq3cWDuVR60BQC2bdjvFbjXGD2fvI/JN
 HjMJwXTdpsG0aUlk7RZjKro=
X-Google-Smtp-Source: ABdhPJzvsR3w1hK2yX3mRHiN74AjGYdOn3EKZVBFERublBuh+6dUqLDZOnOGgt2NzFo4HAjYiAon1Q==
X-Received: by 2002:a19:ad4a:: with SMTP id s10mr18086712lfd.370.1615325060631; 
 Tue, 09 Mar 2021 13:24:20 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id w24sm646032ljh.19.2021.03.09.13.24.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Mar 2021 13:24:20 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw7wDiE4R+y2JV85wAZqcDpFtSetx47bmFQcr-8XAtCSpg@mail.gmail.com>
Date: Tue, 9 Mar 2021 23:24:18 +0200
Message-Id: <B147DD19-3507-407A-8E41-500F242B510C@gmail.com>
References: <CAA93jw7wDiE4R+y2JV85wAZqcDpFtSetx47bmFQcr-8XAtCSpg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] [Bloat] how to ecn again on osx and ios!!!
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
Cc: tsvwg IETF list <tsvwg@ietf.org>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA5IE1hciwgMjAyMSwgYXQgMTA6MzggcG0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gc3VkbyBzeXNjdGwgLXcgbmV0LmluZXQudGNwLmRpc2FibGVfdGNw
X2hldXJpc3RpY3M9MQoKTm93IHRoYXQgbWlnaHQgd2VsbCBiZSB0aGUgbWlzc2luZyBsaW5rLiAg
SSB0aGluayB3ZSBtaXNzZWQgaXQgYmVmb3JlIHNpbmNlIGl0IGRvZXNuJ3QgaGF2ZSAiZWNuIiBp
biBpdHMgbmFtZS4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
