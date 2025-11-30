Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E88C95206
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 17:01:57 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 95F4E9E7574;
	Sun, 30 Nov 2025 17:01:56 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Psn75u5N
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764518516;
 b=YTvZJU3wfS/Q5epW43LlyWiL0e+K0Twt3znT0HUR9X34TCE7vLHfxXx1dVtS9gjIduplA
 qQ+IePwqt2JmiB8SjllRhLpGVShKuXmAgZ8+/mn5v0A4hTP/GU/Vxpn7h2Id8BIacYPtcF6
 lSt+t/arTZSc6hotfGYatGPyo/502Ls=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764518516; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=LtlReyrxrCOcT2FYkZue9WiogXIEs/XloTXOyXiLMgM=;
 b=KTokEHOlyvjgdgwXaY1+3FTmFOKc0dprnxoC5jb4YDALKZBUeWgapltkl5v22EKghOBm9
 6Cd93Wg1sjsARtuhbf9WyELpiNgfkjBaX76YrY8xaB31GAiAI6USUYmQHncHPzap+mIh1HK
 oSeLJ5Js9V+nKOCyRE3talpDv4fuMYU=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
	by mail.toke.dk (Postfix) with ESMTPS id C8CA29E71C8
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 16:07:20 +0100 (CET)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-78665368a5cso31190377b3.3
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 07:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764515238; x=1765120038;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=itd4PosqC2kQ6zrsIqy/TPRszeArCm4Xh6ukzxPw+Yo=;
        b=Psn75u5NAzIeeME6YR41XVViBEBRY2N+CuE2tzLcrOLKJtkm0/ZeDxvKNF7nQXsXQy
         flZWhqQHC1POjcCjGmlQ7y5mdG6lneEzO5ORtOyKna4B+MWrzhBLlJCvdDWyL5q1vGdg
         VtXmgP2yBYgJ8zBwsiveLmli4fuSoC8BUnXsP9vY++wBS+74HlieEeBc/pmUkWeCD5yg
         J02673rfW5HOuxtqrGSpSpX1WQVIHAjX/7tmEZ+RbNsN5LgZx85U1XU//lk0MF2VhHG6
         T8vGGUTMnzH7QfRsdlo2rgSApSE8C3+xSLRwNSZJpFglP5yiINcT2PtwshzE1a30HUJZ
         rLMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764515238; x=1765120038;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=itd4PosqC2kQ6zrsIqy/TPRszeArCm4Xh6ukzxPw+Yo=;
        b=LtPBNXmBaOeqnWGOJr9ZcO68HMsiVw931Ag86Ir1Jh5SKAiktJ+nXD+I8FqoI7UqH6
         tjs8QKyYAUbviBk4I8s5cmMqmPatGfBjFovMTuE9WqvHJFQTxGe4+5/fuVkiV7kTy4F8
         cE+9VQqFuebmHDCpMrkz6/DYMmnkTnwkt/OLYA8haJpzXXnaLrDU7DZb6yC2mRWOIBU2
         FziwP1tMHtQBgF48RiD+Pb+JQOn264EIJZ6avaSaMJr1lGpuk0daZ8Yzf0/yvhM7fYLZ
         E0JKQY2tp/gg7+FCmVBJmdtAI6gS6f+YTTseq3/1R2ygvoZ96ElKyMLMtd2JHKedm1Wd
         sxKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKj0WqchJae8BQkDgxt2DO4xNW2A1RJPOV4vyN+DidvZ+hl3FKm+42E7YXJztYBj09D4Qz@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwQ9dCTiZKazSwI/2dcMSSRht8RwAVqhBvPOqLm6zQEod3326oi
	38wWgVXZ+tTeX7K1aCqjfRvI4lmKTdaMcw1a0KSC9Virg9WEQ0lx1BSt
X-Gm-Gg: ASbGncsIgmReQskNCLKKCybEJq030T4xJTwjVHklfr5ooNego0Rtsk4tcWIMzp7H9bn
	HxdGPNaEhgPOwCoBWBroMSzw5op7Zhe9JgyTpUNewMIfEdepWhzeZ6l8Z/OhvVrrA2xJKW7wcY6
	5wzgYkMu4jUPk8k6vLzrZd5+0THUWo3ZEX/cnmkildtNlHe2Xl3LgeTWm2DXhnyak5W0lKyvMcw
	/gwVIw9XUCPvUliDdaRXI8QIUom5TVoNNWh4EEIn7+dY2BS++SFQdsB/VY7JLOUez3ISYMOG9mS
	Gby7PUuhhpC9E8xd17ib01OV8bq2ITanmJ+O8PAM98cki8Gxldt/uQIMxbV45wYpGtdNjUGMtaJ
	E3q7cAAfrSiFM/vMsq32d73BAjT+K+Bu8m3yzi/wRW3Uv3mUnd7dmjxx+GPY8BWeQSFD5tYKslO
	8ArIx4OvjVwvcOHBmQd9rNQiF76l3DEZ6cqgPks+2lwoVOrZKt6CCGOvt1K9Wy0x0O8mff5Vu+W
	gXb8w==
X-Google-Smtp-Source: 
 AGHT+IG60qUorMUgYcasY4EIKb1vnjohAXAd1P97tCZqWlM1nclAgl4uc4LJSWiAP/p0TAS5iyCAsg==
X-Received: by 2002:a05:690c:6c0e:b0:788:1cde:cad4 with SMTP id
 00721157ae682-78a8b4720c1mr290681297b3.19.1764515238523;
        Sun, 30 Nov 2025 07:07:18 -0800 (PST)
Received: from gmail.com (116.235.236.35.bc.googleusercontent.com.
 [35.236.235.116])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-78ad0d3f600sm37931137b3.9.2025.11.30.07.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 07:07:17 -0800 (PST)
Date: Sun, 30 Nov 2025 10:07:17 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: =?UTF-8?B?Sm9uYXMgS8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <willemdebruijn.kernel.12cce168f29d0@gmail.com>
In-Reply-To: <87zf84ab2d.fsf@toke.dk>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
 <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
 <87a505b3dt.fsf@toke.dk>
 <willemdebruijn.kernel.352b3243bf88@gmail.com>
 <87zf84ab2d.fsf@toke.dk>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 534Y3TUBHB4VZE2FRMGPLBKTTOCRDQ2B
X-Message-ID-Hash: 534Y3TUBHB4VZE2FRMGPLBKTTOCRDQ2B
X-Mailman-Approved-At: Sun, 30 Nov 2025 17:01:55 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.12cce168f29d0@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxs
ZW1kZWJydWlqbi5rZXJuZWxAZ21haWwuY29tPiB3cml0ZXM6DQo+IA0KPiA+IFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToNCj4gPj4gV2lsbGVtIGRlIEJydWlqbiA8d2lsbGVtZGVicnVp
am4ua2VybmVsQGdtYWlsLmNvbT4gd3JpdGVzOg0KPiA+PiANCj4gPj4gPiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gd3JvdGU6DQo+ID4+ID4+IEFkZCBhIGNha2VfbXEgcWRpc2Mgd2hpY2ggaW5z
dGFsbHMgY2FrZSBpbnN0YW5jZXMgb24gZWFjaCBoYXJkd2FyZQ0KPiA+PiA+PiBxdWV1ZSBvbiBh
IG11bHRpLXF1ZXVlIGRldmljZS4NCj4gPj4gPj4gDQo+ID4+ID4+IFRoaXMgaXMganVzdCBhIGNv
cHkgb2Ygc2NoX21xIHRoYXQgaW5zdGFsbHMgY2FrZSBpbnN0ZWFkIG9mIHRoZSBkZWZhdWx0DQo+
ID4+ID4+IHFkaXNjIG9uIGVhY2ggcXVldWUuIFN1YnNlcXVlbnQgY29tbWl0cyB3aWxsIGFkZCBz
aGFyaW5nIG9mIHRoZSBjb25maWcNCj4gPj4gPj4gYmV0d2VlbiBjYWtlIGluc3RhbmNlcywgYXMg
d2VsbCBhcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHNoYXBlciBhbGdvcml0aG0uDQo+ID4+ID4+IA0K
PiA+PiA+PiBSZXZpZXdlZC1ieTogSmFtYWwgSGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4N
Cj4gPj4gPj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJl
ZGhhdC5jb20+DQo+ID4+ID4+IC0tLQ0KPiA+PiA+PiAgbmV0L3NjaGVkL3NjaF9jYWtlLmMgfCAy
MTQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+
ID4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMjEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gPj4gPg0KPiA+PiA+IElzIHRoaXMgY29kZSBkdXBsaWNhdGlvbiB1bmF2b2lkYWJsZT8NCj4g
Pj4gPg0KPiA+PiA+IENvdWxkIHRoZSBzYW1lIGJlIGFjaGlldmVkIGJ5IGVpdGhlcg0KPiA+PiA+
DQo+ID4+ID4gZXh0ZW5kaW5nIHRoZSBvcmlnaW5hbCBzY2hfbXEgdG8gaGF2ZSBhIHZhcmlhbnQg
dGhhdCBjYWxscyB0aGUNCj4gPj4gPiBjdXN0b20gY2FrZV9tcV9jaGFuZ2UuDQo+ID4+ID4NCj4g
Pj4gPiBPciBhdm9pZCBoYW5naW5nIHRoZSBzaGFyZWQgc3RhdGUgb2ZmIG9mIHBhcmVudCBtcSBl
bnRpcmVseS4gSGF2ZSB0aGUNCj4gPj4gPiBjYWtlIGluc3RhbmNlcyBzaGFyZSBpdCBkaXJlY3Rs
eS4gRS5nLiwgd2hlcmUgYWxsIGJ1dCB0aGUgaW5zdGFuY2Ugb24NCj4gPj4gPiBuZXRkZXZfZ2V0
X3R4X3F1ZXVlKGRldiwgMCkgYXJlIG9wZW5lZCBpbiBhIHNwZWNpYWwgInNoYXJlZCIgbW9kZSAo
YQ0KPiA+PiA+IGJpdCBsaWtlIFNPX1JFVVNFUE9SVCBzb2NrZXRzKSBhbmQgbG9va3VwIHRoZSBz
dGF0ZSBmcm9tIHRoYXQNCj4gPj4gPiBpbnN0YW5jZS4NCj4gPj4gDQo+ID4+IFdlIGFjdHVhbGx5
IHN0YXJ0ZWQgb3V0IHdpdGggc29tZXRoaW5nIGxpa2UgdGhhdCwgYnV0IGVuZGVkIHVwIHdpdGgg
dGhlDQo+ID4+IGN1cnJlbnQgdmFyaWFudCBmb3IgcHJpbWFyaWx5IFVBUEkgcmVhc29uczogSGF2
aW5nIHRoZSBtcSB2YXJpYW50IGJlIGENCj4gPj4gc2VwYXJhdGUgbmFtZWQgcWRpc2MgaXMgc2lt
cGxlIGFuZCBlYXN5IHRvIHVuZGVyc3RhbmQgKCdjYWtlJyBnZXRzIHlvdQ0KPiA+PiBzaW5nbGUt
cXVldWUsICdjYWtlX21xJyBnZXRzIHlvdSBtdWx0aS1xdWV1ZSkuDQo+ID4+IA0KPiA+PiBJIHRo
aW5rIGhhdmluZyB0aGF0IHZhcmlhbnQgbGl2ZSB3aXRoIHRoZSBjYWtlIGNvZGUgbWFrZXMgc2Vu
c2UuIEkNCj4gPj4gc3VwcG9zZSB3ZSBjb3VsZCByZXVzZSBhIGNvdXBsZSBvZiB0aGUgbXEgY2Fs
bGJhY2tzIGJ5IGV4cG9ydGluZyB0aGVtDQo+ID4+IGFuZCBjYWxsaW5nIHRoZW0gZnJvbSB0aGUg
Y2FrZSBjb2RlIGFuZCBhdm9pZCBzb21lIGR1cGxpY2F0aW9uIHRoYXQgd2F5Lg0KPiA+PiBJIGNh
biBmb2xsb3cgdXAgd2l0aCBhIHBhdGNoIHRvIGNvbnNvbGlkYXRlIHRob3NlIGlmIHlvdSB0aGlu
ayBpdCBpcw0KPiA+PiB3b3J0aCBpdCB0byBkbyBzbz8NCj4gPg0KPiA+IFNpbmNlIG1vc3QgZnVu
Y3Rpb25zIGFyZSBpZGVudGljYWwsIEkgZG8gdGhpbmsgcmV1c2luZyB0aGVtIGlzDQo+ID4gcHJl
ZmVyYWJsZSBvdmVyIGR1cGxpY2F0aW5nIHRoZW0uDQo+IA0KPiBTdXJlLCB0aGF0J3MgZmFpci4g
U2VlbXMgcmVsYXRpdmVseSBzdHJhaWdodCBmb3J3YXJkIHRvbzoNCj4gDQo+IGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rva2UvbGludXguZ2l0L2NvbW1p
dC8/aD1tcS1jYWtlLXN1Yi1xZGlzYyZpZD1mZGI2ODkxY2M1ODRhMjJkNDgyM2Q3NzFhNjAyZjlm
MWVlNTZlZWFlDQoNCkdyZWF0LiBUaGF0J3MgZ29vZCBlbm91Z2ggZm9yIG1lLg0KIA0KPiA+IEkn
bSBub3QgZnVsbHkgY29udmluY2VkIHRoYXQgbXFfY2FrZSArIGNha2UgaXMgcHJlZmVyYWJsZSBv
dmVyDQo+ID4gbXEgKyBjYWtlIChteSBzZWNvbmQgc3VnZ2VzdGlvbikuIFdlIGFsc28gZG8gbm90
IGhhdmUgYSBzZXBhcmF0ZQ0KPiA+IG1xX2ZxLCBzYXkuIEJ1dCBtaW5lIGlzIGp1c3Qgb25lIG9w
aW5pb24gZnJvbSB0aGUgcGVhbnV0IGdhbGxlcnkuDQo+IA0KPiBSaWdodCwgSSBkbyBzZWUgd2hh
dCB5b3UgbWVhbjsgYXMgSSBzYWlkIHdlIGRpZCBjb25zaWRlciB0aGlzIGluaXRpYWxseSwNCj4g
YnV0IHdlbnQgd2l0aCB0aGlzIGltcGxlbWVudGF0aW9uIGZyb20gYSBjb25maWd1cmF0aW9uIHNp
bXBsaWNpdHkNCj4gY29uc2lkZXJhdGlvbi4gDQoNClRoZW4gYWRtaW5zIGhhdmUgb25seSB0byBp
bnN0YWxsIG9uZSBxZGlzYywgcmF0aGVyIHRoYW4gd2hhdCB3ZSBkbyBmb3INCkZRIHRvZGF5IHdo
aWNoIGlzIG9uZSBNUSArIGEgbG9vcCBvdmVyIHRoZSBGUXMuDQoNCkkgZG9uJ3Qga25vdyBpZiB3
ZSBoYXZlIHRvIGNvZGRsZSBhZG1pbnMgbGlrZSB0aGF0Lg0KDQo+IElmIHdlIHdlcmUgdG8gaW1w
bGVtZW50IHRoaXMgYXMgYW4gb3B0aW9uIHdoZW4gcnVubmluZw0KPiB1bmRlciB0aGUgZXhpc3Rp
bmcgbXEsIHdlJ2QgaGF2ZSB0byBhZGQgYW4gb3B0aW9uIHRvIGNha2UgaXRzZWxmIHRvIG9wdA0K
PiBpbiB0byB0aGlzIGJlaGF2aW91ciwgYW5kIHRoZW4gZGVhbCB3aXRoIHRoZSB2YXJpb3VzIGNv
bWJpbmF0aW9ucyBvZg0KPiBzdWItcWRpc2NzIGJlaW5nIGFkZGVkIGFuZCByZW1vdmVkIChpbmNs
dWRpbmcgbWl4aW5nIGNha2UgYW5kIG5vbi1jYWtlDQo+IHN1Yi1xZGlzY3Mgb2YgdGhlIHNhbWUg
bXEpLiBBbmQgdXNlcnNwYWNlIHdvdWxkIGhhdmUgdG8gc2V0dXAgdGhlIG1xLA0KPiB0aGVuIG1h
bnVhbGx5IGFkZCB0aGUgY2FrZSBpbnN0YW5jZXMgd2l0aCB0aGUgc2hhcmVkIGZsYWcgdW5kZXJu
ZWF0aCBpdC4NCg0KT25lIHF1ZXN0aW9uIGlzIHdoZXRoZXIgdGhlIGtlcm5lbCBuZWVkcyB0byBw
cm90ZWN0IGFkbWlucyBmcm9tIGRvaW5nDQp0aGUgdW5leHBlY3RlZCB0aGluZywgd2hpY2ggd291
bGQgYmUgbWl4aW5nIG1xIGNoaWxkcmVuIG9mIGRpZmZlcmVudA0KdHlwZSB3aGVuIHVzaW5nIHNo
YXJlZCBjYWtlIHN0YXRlIGJldHdlZW4gY2hpbGRyZW4uDQoNCkhvbmVzdGx5LCBJIGRvbid0IHRo
aW5rIHNvLiBCdXQgaXQgY291bGQgYmUgZG9uZS4gRm9yIGluc3RhbmNlIGJ5DQphZGRpbmcgYW4g
bXEgb3B0aW9uIHRoYXQgcmVxdWlyZXMgYWxsIGNoaWxkcmVuIHRvIGJlIG9mIHRoZSBzYW1lIGtp
bmQsDQpvciBldmVuIGJ5IHNpbGVudGx5IHNldHRpbmcgdGhpcyBpZiB0aGUgZmlyc3QgY2hpbGQg
YWRkZWQgaXMgYSBjYWtlDQppbnN0YW5jZSB3aXRoIHNoYXJlZCBvcHRpb24gc2V0Lg0KDQpBcyBm
b3Igc2hhcmVkIHN0YXRlLCBpbiBjYWtlX2luaXQgdGhlIHFkaXNjIGNvdWxkIGNoZWNrIHRoYXQg
dGhlIGRldg0Kcm9vdCBpcyBtcSBhbmQgaXQgaXMgYSBkaXJlY3QgY2hpbGQgb2YgdGhpcyBxZGlz
YywgYW5kIHRoZW4gc2NhbiB0aGUNCm1xIGNoaWxkcmVuIGZvciB0aGUgZXhpc3RlbmNlIG9mIGEg
Y2FrZSBjaGlsZC4gSWYgb25lIGV4aXN0cywgdGFrZSBhDQpyZWYgb24gYSBzaGFyZWQgc3RhdGUg
c3RydWN0LiBJZiBub3QsIGNyZWF0ZSB0aGUgc3RydWN0LiBBZ2FpbiwgbGlrZQ0KU09fUkVVU0VQ
T1JULg0KDQpBbGwgZWFzaWVyIHNhaWQgdGhhbiBpbXBsZW1lbnRlZCwgb2YgY291cnNlLCBidXQg
c2VlbXMgZG9hYmxlPw0KDQo+IFdoZXJlYXMgd2l0aCB0aGlzIGNha2VfbXEgcWRpc2MgdGhlIHVz
ZXIgaW50ZXJmYWNlIGlzIGFzIHNpbXBsZSBhcw0KPiBwb3NzaWJsZToganVzdCBzdWJzdGl0dXRl
ICdjYWtlX21xJyBmb3IgJ2Nha2UnIGlmIHlvdSB3YW50IHRoZQ0KPiBtdWx0aS1xdWV1ZSBiZWhh
dmlvdXIgb24gYSBkZXZpY2U7IGV2ZXJ5dGhpbmcgZWxzZSBzdGF5cyB0aGUgc2FtZS4gU2luY2UN
Cj4gY29uZmlndXJhdGlvbiBzaW1wbGljaXR5IGlzIGFuIGV4cGxpY2l0IGdvYWwgb2YgY2FrZSwg
SSB0aGluayB0aGlzIGlzDQo+IGFwcHJvcHJpYXRlOyBhbHRob3VnaCBpdCBtYXkgbm90IGJlIGZv
ciBvdGhlciBxZGlzY3MuDQo+IA0KPiBIb3BlIHRoYXQgbWFrZXMgc2Vuc2U/DQo+IA0KPiAtVG9r
ZQ0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
