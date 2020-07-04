Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC1E214591
	for <lists+cake@lfdr.de>; Sat,  4 Jul 2020 13:42:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F2A7B3CB45;
	Sat,  4 Jul 2020 07:42:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593862970;
	bh=XTrjJY/r/SlXLIOLgID+6R35e4OL4dQ6nFcyA1bkDk8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OeDg0aKwXfyDGIzYL+ykdSw0JiS9jCsgiBzC1W++LD8UBIa4i/Tl244DXdkoAmw6T
	 pui/QL2IopfzlAgxTOFYwFU/1+SwporeQiPYg769N5IAqW4Lkog/ysx6kseWJmxWov
	 8MR5mcFCn1fAvwqpQ38tZWtoxys4dZuYpLqtiVM5jTksBABItcWrEnOi508+h2gOep
	 CKlkPRmMg795xtnHinwJq6wVaYjMzyDVhaNKv5iwJngqp2FJUXpz5ZJeo+L2moao6t
	 xCDMXP4MpmVOu1YCOLIQ+YGK63D39YQJ2HZwu+5tTJI3p76sETdGO1hz6Z023+wvZ7
	 LoLnJiV4/cBrg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EEDB13B29D
 for <cake@lists.bufferbloat.net>; Sat,  4 Jul 2020 07:33:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593862434;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k1xDOxnW3xmUX81X4QGvTZ5jM/EECvOfpllGJAAplKU=;
 b=J14cDo+zqlqTrLE21mKVXwrPEdrsuJnDwEHB6fD9YIfT2QIJXzOdbShAPrMQwzUI7tUyeR
 8ZYE/UOFPoS8gBJaw3YgbEcWgNvFWLzUERFdHaENH3RCnEu+7VTl4VLqzHupNF9p4DRNYG
 9bp3jJl24YSC1dOGrsnpwMoAKznNVas=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-344-0AcGveRnOLKlU-wP8kYuEw-1; Sat, 04 Jul 2020 07:33:50 -0400
X-MC-Unique: 0AcGveRnOLKlU-wP8kYuEw-1
Received: by mail-pg1-f200.google.com with SMTP id o15so25365491pgn.15
 for <cake@lists.bufferbloat.net>; Sat, 04 Jul 2020 04:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=4HB36sjhmx4bYypIIg0QrKY9T+pJQwvtAds11G9bSlA=;
 b=Wc3cuAA8xu6BGozjXp9YmJv0YeohfZb6bqDT1MU64+gjwdSY14N1bExc2Y8GVP9r+f
 snVGrxmaXdzF3gHokvdm6B3On4g2e4an1dSWM2CAMz6DKUJLmfp6CvdxIeWWml+PvnJl
 UdDvilSloa1IadTSgFQNwB/xb4GzzETw4GuKJ1Gk0eQT7kizgC2GW7bzYhsU0Sdg7ho/
 0WQOSSCJv6FxLP3PD26y/cWh6JBx3dffUaBRi0ozYI/h/J4kWD9XU4Ja4OrZ+Jp5X1kh
 7A187pVYA5tF4FUZ2V5CopJo4LasytX7ABjeNgq25f1ibd+Mbb9MSis+J+jPQ9OKK4hp
 phEA==
X-Gm-Message-State: AOAM533QBf3Fjlm9VdLgoSQutAGopzLP7HVAKxLj46VLO+LLN+xogw/D
 avr5JV+J15ZDsizATO7/PJ3hL05x/m9SMZJMYpafqudjVa5IyhY1K1AUS7WUlH55b5jhD8pYMg2
 +lG7SJFkFmJ4u8peXtooATg==
X-Received: by 2002:a17:902:a515:: with SMTP id
 s21mr26753040plq.192.1593862428096; 
 Sat, 04 Jul 2020 04:33:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0K4ul/+ya1hBFl7f4gxJwUZBehZNesHyGf1bbzBMtCiOpFmsnFFSkDnlXDOVgqHCF/Oj8fA==
X-Received: by 2002:a17:902:a515:: with SMTP id
 s21mr26753021plq.192.1593862427886; 
 Sat, 04 Jul 2020 04:33:47 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id np5sm13817593pjb.43.2020.07.04.04.33.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 04:33:47 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 4DA2B1804A8; Sat,  4 Jul 2020 13:33:42 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>
In-Reply-To: <ada37763-16cd-7b51-f9ce-41e8d313bf96@gmail.com>
References: <20200703202643.12919-1-toke@redhat.com>
 <ada37763-16cd-7b51-f9ce-41e8d313bf96@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 04 Jul 2020 13:33:42 +0200
Message-ID: <878sfzms4p.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Sat, 04 Jul 2020 07:42:48 -0400
Subject: Re: [Cake] [PATCH net v3] sched: consistently handle layer3 header
	accesses in the presence of VLANs
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
Cc: Lawrence Brakmo <brakmo@fb.com>, Davide Caratti <dcaratti@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Roman Mashak <mrv@mojatatu.com>, Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, bpf@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9zaGlha2kgTWFraXRhIDx0b3NoaWFraS5tYWtpdGExQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBP
biAyMDIwLzA3LzA0IDU6MjYsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiAuLi4K
Pj4gKy8qIEEgZ2V0dGVyIGZvciB0aGUgU0tCIHByb3RvY29sIGZpZWxkIHdoaWNoIHdpbGwgaGFu
ZGxlIFZMQU4gdGFncyBjb25zaXN0ZW50bHkKPj4gKyAqIHdoZXRoZXIgVkxBTiBhY2NlbGVyYXRp
b24gaXMgZW5hYmxlZCBvciBub3QuCj4+ICsgKi8KPj4gK3N0YXRpYyBpbmxpbmUgX19iZTE2IHNr
Yl9wcm90b2NvbChjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIHNraXBfdmxhbikKPj4g
K3sKPj4gKwl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2tiX21hY19vZmZzZXQoc2tiKSArIHNpemVv
ZihzdHJ1Y3QgZXRoaGRyKTsKPj4gKwlfX2JlMTYgcHJvdG8gPSBza2ItPnByb3RvY29sOwo+PiAr
Cj4+ICsJaWYgKCFza2lwX3ZsYW4pCj4+ICsJCS8qIFZMQU4gYWNjZWxlcmF0aW9uIHN0cmlwcyB0
aGUgVkxBTiBoZWFkZXIgZnJvbSB0aGUgc2tiIGFuZAo+PiArCQkgKiBtb3ZlcyBpdCB0byBza2It
PnZsYW5fcHJvdG8KPj4gKwkJICovCj4+ICsJCXJldHVybiBza2Jfdmxhbl90YWdfcHJlc2VudChz
a2IpID8gc2tiLT52bGFuX3Byb3RvIDogcHJvdG87Cj4+ICsKPj4gKwl3aGlsZSAoZXRoX3R5cGVf
dmxhbihwcm90bykpIHsKPj4gKwkJc3RydWN0IHZsYW5faGRyIHZoZHIsICp2aDsKPj4gKwo+PiAr
CQl2aCA9IHNrYl9oZWFkZXJfcG9pbnRlcihza2IsIG9mZnNldCwgc2l6ZW9mKHZoZHIpLCAmdmhk
cik7Cj4+ICsJCWlmICghdmgpCj4+ICsJCQlicmVhazsKPj4gKwo+PiArCQlwcm90byA9IHZoLT5o
X3ZsYW5fZW5jYXBzdWxhdGVkX3Byb3RvOwo+PiArCQlvZmZzZXQgKz0gc2l6ZW9mKHZoZHIpOwo+
PiArCX0KPgo+IFdoeSBkb24ndCB5b3UgdXNlIF9fdmxhbl9nZXRfcHJvdG9jb2woKSBoZXJlPyBJ
dCBsb29rcyBxdWl0ZSBzaW1pbGFyLgo+IElzIHRoZXJlIGFueSBwcm9ibGVtIHdpdGggdXNpbmcg
dGhhdD8KClRCSCwgSSBjb21wbGV0ZWx5IG1pc3NlZCB0aGF0IGhlbHBlci4gSXQgc2VlbXMgdG8g
aGF2ZSBzaWRlIGVmZmVjdHMsCnRob3VnaCAocHNrYl9tYXlfcHVsbCgpKSwgd2hpY2ggaXMgb25l
IG9mIHRoZSB0aGluZ3MgdGhlIG9yaWdpbmFsIHBhdGNoCnRvIHNjaF9jYWtlIHRoYXQgaW5pdGlh
dGVkIGFsbCBvZiB0aGlzIHdhcyB0cnlpbmcgdG8gYXZvaWQuCgpJIGd1ZXNzIEkgY291bGQganVz
dCBmaXggdGhhdCwgdGhvdWdoLCBhbmQgc3dpdGNoIF9fdmxhbl9nZXRfcHJvdG9jb2woKQpvdmVy
IHRvIHVzaW5nIHNrYl9oZWFkZXJfcG9pbnRlcigpLiBXaWxsIHNlbmQgYSBmb2xsb3ctdXAgdG8g
ZG8gdGhhdC4KCkFueSBvcGluaW9uIG9uIHdoZXRoZXIgaXQncyBhIGdvb2QgaWRlYSB0byBsaW1p
dCB0aGUgbWF4IHBhcnNlIGRlcHRoCndoaWxlIEknbSBhdCBpdCAoc2VlIERhbmllbCdzIHJlcGx5
KT8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
