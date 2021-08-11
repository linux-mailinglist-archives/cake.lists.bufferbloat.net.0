Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDFD3E890E
	for <lists+cake@lfdr.de>; Wed, 11 Aug 2021 05:58:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AC50B3CB40;
	Tue, 10 Aug 2021 23:57:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628654278;
	bh=Laxqh2XKFxor3TKSfDUIRlC/ADJwVbnnX5Ur3oBRIcU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N8L326CFxNG+ac34XmlUL1laTiKwI5Uxust8yUZvSShSfdIYYhYQh1f1ptbZSV/qa
	 v4HfLy1B4wJkav9FWXy/0aEz2Ucd3e4DYfh2SO+Fe/29CU8rUm7WILsVFKsKl+xG5s
	 L7HfLD6u7v69Q6s5dpMcHBiegsBv5H72kRqqYPCLn/BKy/U+nvuMNyVVy4MAba6hpX
	 fzEvsTWvIyPX4jVfWLL9kHDfmOmHRaeYeYXs226NrlO2TWRXMG2SgQF8mNp3gKcyUY
	 GdCP8YyjOOcWmKuzKsu2Ne2bKvMho18/j09TSpJHAi1UY+nqK3xr6fk8izkmyog0Bl
	 AGkZuX1Y82Ewg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 91D773B2A4
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 23:57:56 -0400 (EDT)
Received: by mail-pj1-x1033.google.com with SMTP id
 w13-20020a17090aea0db029017897a5f7bcso2521561pjy.5
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 20:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V4Kt/awIRP588OpNM3hJtdO5Xcq9pT0o3YMj1aQM0Fk=;
 b=O8O4xqqqVCohzZFefaBJHY/rIMxVmUSbDm4AbAPKlN5w1Q85BFbHLJq+6aokdlj1ol
 Do+dSbPy1Oir0UKogqLGMy8oV5qcPaExVBlWvSqP+J7TDfkwuR8qYGTc9ClU/Fp/1yZN
 B6bS+Zo06rx8p2VtbD8b6jDZ2BL1qJUfkvAXZCVSFsWIabLMJLfGrL7wUQomeTwrUCy0
 vF2UH6PjsSSM0+gaLokHxQawVx/Fsn7d8obxxEC/eNQE0bzqZPn69GHi3Fx+KB/YyVOV
 dPo+8uwzZDKnpfy1vJI1rnDpC3G0wvNn5WKVI+4I8i46Lu2k129tng58zcBMhZkk15Y7
 2aIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V4Kt/awIRP588OpNM3hJtdO5Xcq9pT0o3YMj1aQM0Fk=;
 b=tc8XLYwlbR4AOPOg12+egkBa5j5hztlJVhRh1D7bLXvEBEm4AjUNhreR67KoBaYN2s
 I9rIJoU+by17WVxTRZvkVlRfPfVYh+j5lOnZsx+QMQEUS/29AhMaimNH7jQ+ZIKvrvoU
 FMGaPkba4OARrppF/F/cAjIXj3LvpQp5w4QBWhGGyZYkGznxWgymHSf1tpZvZZfhAmmS
 eUV/Q1f5WDU7HrM3vVGJGhBPU+c+pv0V0nnwZc9KQw16XRYl4xDWTKrHcNpsRAV4vsTQ
 QsSEBwRFKGFrHpd14Z9NZC7er8xx0l00LyStLlTk5lkuM3K/m+zVBXJBA+6OjtJ2mJwG
 kwHw==
X-Gm-Message-State: AOAM531BzNzMkaxc7qscyYLASsKNVrm/bKR6RW/+MdakVdBQhNyMl0M7
 c+HmTGmrWMo4x6wT6LvSLM6YZV3koVl1/g==
X-Google-Smtp-Source: ABdhPJwJX4JMtr3dv52h46gU8TNozmTh5SqTQthkjWkgMZq+NCFeWfn1dYA5B9Y1u/bhy9LijyO8lg==
X-Received: by 2002:aa7:9115:0:b029:359:69db:bc89 with SMTP id
 21-20020aa791150000b029035969dbbc89mr26214476pfh.32.1628654275006; 
 Tue, 10 Aug 2021 20:57:55 -0700 (PDT)
Received: from hermes.local (204-195-33-123.wavecable.com. [204.195.33.123])
 by smtp.gmail.com with ESMTPSA id v16sm4759090pje.24.2021.08.10.20.57.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 20:57:54 -0700 (PDT)
Date: Tue, 10 Aug 2021 20:57:51 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= via Cake
 <cake@lists.bufferbloat.net>
Message-ID: <20210810205751.49bad7be@hermes.local>
In-Reply-To: <87r1f95und.fsf@toke.dk>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAwNCBBdWcgMjAyMSAxMzoxNDozMCArMDIwMApUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gdmlhIENha2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKCj4gKyAgICAg
ICBlbHNlIGlmICh1c2Vfc2tiaGFzaCAmJiBmbG93X21vZGUgJiBDQUtFX0ZMT1dfRkxPV1MpCgpJ
IHRoaW5rIHNvbWUgY29tcGlsZXJzIGFuZCBzdGF0aWMgY2hlY2tlcnMgYXJlIGdvaW5nIHRvIGdp
dmUgYSB3YXJuaW5nIHVubGVzcwp5b3UgYWRkIGEgcGFyZW50aGVzaXMgaW4gdGhpcyBzdGF0ZW1l
bnQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
