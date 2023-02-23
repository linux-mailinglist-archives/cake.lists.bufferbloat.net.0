Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B56A0269
	for <lists+cake@lfdr.de>; Thu, 23 Feb 2023 06:41:25 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9C64E3CB41;
	Thu, 23 Feb 2023 00:41:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677130883;
	bh=mP4PHp/W9srOJwBvbi7mQC7i7EAQ89z7Jq0jDBhD0qk=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=UyXSq/HLef5sywYYr9yMUaO36EGO27BjNqOMD4kdbwEW/MsAVKIXXAwO5TIEuzcHs
	 tZqGSMopw6PUeTR1dgFgMrXkxnIBft68So2El7aR+mMeg70o+IQQEymGlwInm2m8qH
	 j4xrBYPBa3YQ6jSku7vMDXPixDWQcRVo31GwiOvs2u5b06OtZpA0aaVHWkFhG5NkKL
	 OjjnQqBIaTRkWc6tqJbSsALtIkHjDN9ppP1vUYv8QdasKgPjF7osj/TCKbziB9fsYK
	 O63sRb3zVvFc78xTHBzwr39vPNvA3epfQth4oOGYweJi4GRBNMX4bYggLDBpoLrD3D
	 iciWNprxcXHlg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4CB763B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Feb 2023 00:41:22 -0500 (EST)
Received: by mail-lj1-x231.google.com with SMTP id e9so9933969ljn.9
 for <cake@lists.bufferbloat.net>; Wed, 22 Feb 2023 21:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mKZof2DAGaqnPvll0j7XSm5vBwyYUWkSJKr0e3woO0I=;
 b=IPNgzNlpYyoR9tSEbqLZN8eeRrTu6SG72za6iAVjWy5XNZt9UOc/7qdpRjFo+yCccU
 4DmRsoFcWP/NxQ5bGx8QSDe1R+osUJ7Wu6bVMjy5sePDtKwBESFR/pDndfsb+vtEnbIC
 3CnOyUmGyRV7OQ5wS4wtKalbRNunhOHsnUW4KP9kleLaUCWU3XoO5PU56DUO6X2mOCL7
 9IxqH49DUvow1pqwnR+E2m+JzWCKKGw5XF5/QdSGpZ1asZRAmA+XZV0vTUHld/MENPaf
 SlR51agSwsxsszFYNyYRDHGpivLpL/jOwDLfVRQujxeJ8BTT3senOMKNBnIw4zUK4jbC
 M9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mKZof2DAGaqnPvll0j7XSm5vBwyYUWkSJKr0e3woO0I=;
 b=5YwSyuoGPMpVFQ99vSCqYojCa9UOkufoIwuR2HT9msDXBDR4zZZ0M6zxAXhg2Km/td
 hSxs0Qc7wnx4HIcslttZKz3DoWTRkaKlMbJDAwCdl7ZKgK9Mxh1EfBcVdXYTGT00eS7t
 DKPbqgG1pFQx+qARL9P0sDoEPwcbC3nMyQP80dIIVcvp2WB2WdFvfP9+plsAN+NOAhz8
 uqq2QzTZu4dSyAyANPSItdYVcBuiZsC/rBfa7ZwdPVBVkV2pA1OsjxhItq+0REVx3vXf
 eCA5HE8MCzmFjTQPJkKAWQosqQDIHnYgWTwKIV7oEMzE3ScEv7TavJJ4fYe/GA0tN9aZ
 HSeQ==
X-Gm-Message-State: AO0yUKWnEb4fmcl8D5ljTTIT07S1J3kWZj/6U0UD4ZZBuSQs3r2I1odM
 B/nBt+nviu2lNBjXpU9dG+A=
X-Google-Smtp-Source: AK7set+zONX5VY4R3GY3/8qJV7b2U0awbIq68JSnmaRLtUAU105+99RFSsui4L66VPQvJmqYwwTHjg==
X-Received: by 2002:a05:651c:221d:b0:293:277f:ce45 with SMTP id
 y29-20020a05651c221d00b00293277fce45mr4950660ljq.8.1677130880557; 
 Wed, 22 Feb 2023 21:41:20 -0800 (PST)
Received: from smtpclient.apple (37-33-124-64.bb.dnainternet.fi.
 [37.33.124.64]) by smtp.gmail.com with ESMTPSA id
 h23-20020a2ea497000000b0029599744c02sm309390lji.75.2023.02.22.21.41.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Feb 2023 21:41:20 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CAA93jw6JQjJxaG9Wzpi4S9iW_=M6sD=6hnN6Z54XyJRS8+cyhA@mail.gmail.com>
Date: Thu, 23 Feb 2023 07:41:18 +0200
Message-Id: <E54B293B-A85E-428F-9016-C8E71E82CF13@gmail.com>
References: <CAA93jw6JQjJxaG9Wzpi4S9iW_=M6sD=6hnN6Z54XyJRS8+cyhA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] big tcp
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyMyBGZWIsIDIwMjMsIGF0IDM6MzUgYW0sIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IGRvZXMgdGhpcyBicmVhayBjYWtlPwo+
IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9kZTgxMWJmMy1lMmQ4LWY3MjctNzJi
Yy1jOGE3NTRhOWQ5MjlAdGVzc2FyZXMubmV0L1QvCgpJdCBsb29rcyBsaWtlIHRoZXkndmUgaW5j
bHVkZWQgcGF0Y2hlcyAqdG8qIENha2UgdG8gaGFuZGxlIGFudGljaXBhdGVkIGJyZWFrYWdlLiAg
VGhpcyBpcyBvbmUgb2YgdGhlIGdyZWF0IHRoaW5ncyBhYm91dCBoYXZpbmcgaXQgdXBzdHJlYW1l
ZC4KCiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
