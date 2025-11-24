Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2532CC81355
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 16:00:53 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5EC809C36C0;
	Mon, 24 Nov 2025 16:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763996451;
	bh=4bCW0ThGe/Lw+Ycj4bW3fCOJv5KfYzsZ7YiVs7CDWG8=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=GDXkOcko1ZGX7ai0aQZ0ajcKy9/m6SMg1ATsNhlC9hVh951KkTCxjX2J1oAEsUS+/
	 ttYB7uUtocoSmQziF821fMzzsCHseoMYdXKcGp0fycSHJGmFKD2BDLnib9jO3n6VMx
	 zU0ziLptvLiYnEhg2/5TaKfdfe2BmX46CvC74MmR6wzzkdofKVGv8crXphgmQu6Qmn
	 SnVVsaapI/1bx0HXihW0kjtDmjVlhsk5oZ+ZzXtZgMca48Y30l9WmuTIH9Qn5+I+DL
	 k1MYpneezpwy27I9ACdUpchKAzjKyafLJswyBWiLNYUjoxy/FCVo21NE+0U4WKw5Fy
	 YZtovsDCUGOdg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763996451;
 b=Y1xGgO9QRgAzdaLV67qMyI4YQq/VmMrCqAlQ93gbysBhlJcV84eEmM+gixUqDMjtd6Vck
 e+/wcw2Zp8o3uSHJTp5FtJcCC1a+Z4rV08ftNz7/4sfydRuSyci3qXfGqn/v/ochU2at5wy
 B5XuZYczmF3qL8X7eS3wX6R7+aGVey0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763996451; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4bCW0ThGe/Lw+Ycj4bW3fCOJv5KfYzsZ7YiVs7CDWG8=;
 b=FBdfcHNOjUphrHFbX+YKyhtQFQKcN6HjmiY6fIGFZ7VwwOfi1uL5W+nn6hAN0WXSnPimm
 DnCXU3Yc5l1DvJ2XsfFFhBVmgH/0CdtrHqgJ7hYxQeMFeCYBPrGq5Ig4iAgNDYmsds1Gy7O
 ha83HNtq/0rN7mrRdwGptm9IsIeCZ4U=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com;
 arc=none;
 dmarc=pass header.from=redhat.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=redhat.com
 policy.dmarc=quarantine
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.toke.dk (Postfix) with ESMTPS id 4ACB99C368F
	for <cake@lists.bufferbloat.net>; Mon, 24 Nov 2025 16:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763996446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=El6SYBg6qd6iWN4m7MYZIFgs+1l8f50f5tCtkjW7g5A=;
	b=G9oQlSbgAzkMzhjCDgyhrBP1ZFKmK5bLs15aW8Df/4ZmDlfYW8hbIHfaAkpC4Emzp92q2N
	Ur2yoSUjQ79oLL/DqlIeoVakm9+VR0fgaLhTkwcHYI5QNpD0sHn9VrPKizzfBp1RGNFvBn
	tS9lXobeHSWL6GBHu3UtXZMFVHyGOpY=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-_T965HqjO7-mt-0HAXhbwQ-1; Mon, 24 Nov 2025 10:00:44 -0500
X-MC-Unique: _T965HqjO7-mt-0HAXhbwQ-1
X-Mimecast-MFC-AGG-ID: _T965HqjO7-mt-0HAXhbwQ_1763996442
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b70caafad59so548080466b.0
        for <cake@lists.bufferbloat.net>;
 Mon, 24 Nov 2025 07:00:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763996442; x=1764601242;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=El6SYBg6qd6iWN4m7MYZIFgs+1l8f50f5tCtkjW7g5A=;
        b=EsdzISkkbIikauta7DPNR5JaN8Aoe0wI5BELZ3qUuVSMIoJULGaqz8/oNKSVIEsPqJ
         j+vgGFLpOizPfG5DzD8casNR4DwyMriaes0KHeDW/kTaPeld1AHxgh7kD82+CUoGv7BP
         AMNaYwHzr12DszGGsCyxPm1dmvdShSqSwdKnqADMNNneaauJX3xhr2wCcwStCPF2m/AP
         skOL4XcFHleRNVJ/xbqfCT4tM0Jk6yOqTSG1ys5nNm+1W3j1GdChSODlf2V8wKKdfN0W
         dPHc3bMge7DSIkSWf14IyhwPe/5MU5k1iiEdEoJ8ZTojf2dx77n9pqpbWD888D9tU/8L
         Bdpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVyZOOA2BTa2plEe3qbDUR9HzDUmTgCzvKE2pqFtTxINwcUti7h8m3ZYHZCPRHC088EjhjI@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzyJuAfWY7CbSTWpeFVIlvXrWa6cd4/bslGhmx1Pr8TV9VW9EU5
	XkrEfppu7t5QN1VgyBZUM3BwXDgF0PzuPzeVgMiRRe3BKDVSmNp6yVHiun8t/xJT1BP8KVpRv7N
	KCRhQMCF0/7oLYOzOxrsD2p7Ak37sVgTgTge0W36PN7FiGeuagBkIIwlXWf5SxW0=
X-Gm-Gg: ASbGnctOeQPCzCCpSNcn95/A2XdC5Fg0YRF+kNXo0nbtdKcTeKk28q8kIRmoujV+n3H
	zNN+J6Z98cnxUs+ZjLJZaQrU6KjEG7oCQmufk2BblVRRt6ejUrRE5K1+jiXU08z7YdNk+OIQKwv
	E/vTy4inl0WA648YbNp6kMcQ8kbfDsdSRUyY0pYa1YuKXRDf4nemxF+vgJxXK3iIEdwJn+GJye/
	Kb24PYtnQDFyya/cRzrcvoVyojeULfFXTvIHr9ppr4A18n9X6584qv4Hxv2/F+Dr6Y2toqVlEfv
	ahxOOI83pSBIJmy2Ba3xKZ1An3KyJlfzlcsljIvMzqHejMvGMdRGu2Rk7sRZbLBiyLXsqcZywE2
	vvC2wnf9TSBsuZ7ejBvPzAvkmgzJPu1brDhU2
X-Received: by 2002:a17:906:a3c3:b0:b76:b921:d961 with SMTP id
 a640c23a62f3a-b76b9221db3mr114880266b.2.1763996440859;
        Mon, 24 Nov 2025 07:00:40 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IF5vmM5u+rlyhmXKD5DCgsBRHL1yjP6OiBGpiq/nnRCU4NCgpLN6BRViklpa4+O08204QTrzw==
X-Received: by 2002:a17:906:a3c3:b0:b76:b921:d961 with SMTP id
 a640c23a62f3a-b76b9221db3mr114872566b.2.1763996439876;
        Mon, 24 Nov 2025 07:00:39 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76550512d2sm1315316566b.67.2025.11.24.07.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 07:00:38 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 479F432A7FD; Mon, 24 Nov 2025 16:00:37 +0100 (CET)
Date: Mon, 24 Nov 2025 15:59:31 +0100
Message-Id: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANNyJGkC/22NQQ6CMBBFr0Jm7ZhpBRNceQ/CorSDTAxF2kowh
 Lvb4Nbly8t/f4PIQTjCrdgg8CJRJp9BnQqwg/EPRnGZQZOuqCaN44zWPBnju8PZSbRoXU9dVTv
 dcwV59wrcy3o0G/Cc0POaoM1mkJim8DnOFnX4X1eXf7qLQsLyYuhKTimlzT2wG0w622mEdt/3L
 51Cmfu9AAAA
X-Change-ID: 20250902-mq-cake-sub-qdisc-cdf0b59d2fe5
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: b4 0.14.3
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6uW6xfe3uTEpnfNi4lGgq78pEGhrWouAxAATUFunKl4_1763996442
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: IKLLILMNXG7U3HOLGTL6XUDA4JNNJNLU
X-Message-ID-Hash: IKLLILMNXG7U3HOLGTL6XUDA4JNNJNLU
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Transfer-Encoding: base64

VGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNjaF9j
YWtlIHNjaGVkdWxlciwNCmNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMgaXQgcG9z
c2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQpvZiBzY2hfY2FrZSBhY3Jvc3MgbXVsdGlw
bGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5mb3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0KcmF0ZSBvbiB0
aGUgaW50ZXJmYWNlLg0KDQpUaGUgYXBwcm9hY2ggdGFrZW4gaW4gdGhpcyBwYXRjaCBzZXJpZXMg
aXMgdG8gaW1wbGVtZW50IGEgc2VwYXJhdGUgcWRpc2MNCmNhbGxlZCAnY2FrZV9tcScsIHdoaWNo
IGlzIGJhc2VkIG9uIHRoZSBleGlzdGluZyAnbXEnIHFkaXNjLCBidXQgZGlmZmVycw0KaW4gYSBj
b3VwbGUgb2YgYXNwZWN0czoNCg0KLSBJdCB3aWxsIGFsd2F5cyBpbnN0YWxsIGEgY2FrZSBpbnN0
YW5jZSBvbiBlYWNoIGhhcmR3YXJlIHF1ZXVlIChpbnN0ZWFkDQogIG9mIHVzaW5nIHRoZSBkZWZh
dWx0IHFkaXNjIGZvciBlYWNoIHF1ZXVlIGxpa2UgJ21xJyBkb2VzKS4NCg0KLSBUaGUgY2FrZSBp
bnN0YW5jZXMgb24gdGhlIHF1ZXVlcyB3aWxsIHNoYXJlIHRoZWlyIGNvbmZpZ3VyYXRpb24sIHdo
aWNoDQogIGNhbiBvbmx5IGJlIG1vZGlmaWVkIHRocm91Z2ggdGhlIHBhcmVudCBjYWtlX21xIGlu
c3RhbmNlLg0KDQpEb2luZyB0aGluZ3MgdGhpcyB3YXkgZG9lcyBpbmN1ciBhIGJpdCBvZiBjb2Rl
IGR1cGxpY2F0aW9uIChyZXVzaW5nIHRoZQ0KJ21xJyBxZGlzYyBjb2RlKSwgYnV0IGl0IHNpbXBs
aWZpZXMgdXNlciBjb25maWd1cmF0aW9uIGJ5IGNlbnRyYWxpc2luZw0KYWxsIGNvbmZpZ3VyYXRp
b24gdGhyb3VnaCB0aGUgY2FrZV9tcSBxZGlzYyAod2hpY2ggYWxzbyBzZXJ2ZXMgYXMgYW4NCm9i
dmlvdXMgd2F5IG9mIG9wdGluZyBpbnRvIHRoZSBtdWx0aS1xdWV1ZSBhd2FyZSBiZWhhdmlvdXIp
LiBUaGUgY2FrZV9tcQ0KcWRpc2MgdGFrZXMgYWxsIHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gcGFy
YW1ldGVycyBhcyB0aGUgY2FrZSBxZGlzYy4NCg0KQW4gZWFybGllciB2ZXJzaW9uIG9mIHRoaXMg
d29yayB3YXMgcHJlc2VudGVkIGF0IHRoaXMgeWVhcidzIE5ldGRldmNvbmY6DQpodHRwczovL25l
dGRldmNvbmYuaW5mby8weDE5L3Nlc3Npb25zL3RhbGsvbXEtY2FrZS1zY2FsaW5nLXNvZnR3YXJl
LXJhdGUtbGltaXRpbmctYWNyb3NzLWNwdS1jb3Jlcy5odG1sDQoNClRoZSBwYXRjaCBzZXJpZXMg
aXMgc3RydWN0dXJlZCBhcyBmb2xsb3dzOg0KDQotIFBhdGNoIDEgZmFjdG9ycyBvdXQgdGhlIHNj
aF9jYWtlIGNvbmZpZ3VyYXRpb24gdmFyaWFibGVzIGludG8gYQ0KICBzZXBhcmF0ZSBzdHJ1Y3Qg
dGhhdCBjYW4gYmUgc2hhcmVkIGJldHdlZW4gaW5zdGFuY2VzLg0KDQotIFBhdGNoIDIgYWRkcyB0
aGUgYmFzaWMgY2FrZV9tcSBxZGlzYywgYmFzZWQgb24gdGhlIG1xIGNvZGUNCg0KLSBQYXRjaCAz
IGFkZHMgY29uZmlndXJhdGlvbiBzaGFyaW5nIGFjcm9zcyB0aGUgY2FrZSBpbnN0YW5jZXMgaW5z
dGFsbGVkDQogIHVuZGVyIGNha2VfbXENCg0KLSBQYXRjaCA0IGFkZHMgdGhlIHNoYXJlZCBzaGFw
ZXIgc3RhdGUgdGhhdCBlbmFibGVzIHRoZSBtdWx0aS1jb3JlIHJhdGUNCiAgc2hhcGluZw0KDQpB
IHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQgYXdhcmUgb2YgdGhlIGNha2VfbXEgcWRpc2Mg
aXMgaW5jbHVkZWQgYXMNCmEgc2VwYXJhdGUgcGF0Y2ggYXMgcGFydCBvZiB0aGlzIHNlcmllcy4N
Cg0KLS0tDQpDaGFuZ2VzIHNpbmNlIFJGQzoNCg0KLSBEcm9wIHRoZSBzeW5jX3RpbWUgcGFyYW1l
dGVyIGZvciBub3cgYW5kIGFsd2F5cyB1c2UgdGhlIDIwMCB1cyB2YWx1ZS4NCiAgV2UgYXJlIHBs
YW5uaW5nIHRvIGV4cGxvcmUgYXV0by1jb25maWd1cmF0aW9uIG9mIHRoZSBzeW5jIHRpbWUsIHNv
DQogIHRoaXMgaXMgdG8gYXZvaWQgY29tbWl0dGluZyB0byBhIFVBUEkuIElmIG5lZWRlZCwgYSBw
YXJhbWV0ZXIgY2FuIGJlDQogIGFkZGVkIGJhY2sgbGF0ZXIuDQotIEtlZXAgdGhlIHRjIHlhbWwg
c3BlYyBpbiBzeW5jIHdpdGggdGhlIG5ldyBzdGF0cyBtZW1iZXINCi0gUmViYXNlIG9uIG5ldC1u
ZXh0DQotIExpbmsgdG8gUkZDOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwOTI0LW1x
LWNha2Utc3ViLXFkaXNjLXYxLTAtNDNhMDYwZDExMTJhQHJlZGhhdC5jb20NCg0KLS0tDQpKb25h
cyBLw7ZwcGVsZXIgKDEpOg0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogc2hhcmUgc2hhcGVy
IHN0YXRlIGFjcm9zcyBzdWItaW5zdGFuY2VzIG9mIGNha2VfbXENCg0KVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuICgzKToNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IEZhY3RvciBvdXQgY29u
ZmlnIHZhcmlhYmxlcyBpbnRvIHNlcGFyYXRlIHN0cnVjdA0KICAgICAgbmV0L3NjaGVkOiBzY2hf
Y2FrZTogQWRkIGNha2VfbXEgcWRpc2MgZm9yIHVzaW5nIGNha2Ugb24gbXEgZGV2aWNlcw0KICAg
ICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogU2hhcmUgY29uZmlnIGFjcm9zcyBjYWtlX21xIHN1Yi1x
ZGlzY3MNCg0KIERvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy90Yy55YW1sIHwgICAzICsNCiBp
bmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggICAgICB8ICAgMSArDQogbmV0L3NjaGVkL3Nj
aF9jYWtlLmMgICAgICAgICAgICAgICAgfCA2MTkgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tDQogMyBmaWxlcyBjaGFuZ2VkLCA1MDAgaW5zZXJ0aW9ucygrKSwgMTIzIGRlbGV0
aW9ucygtKQ0KLS0tDQpiYXNlLWNvbW1pdDogZTA1MDIxYTgyOWI4MzRmZWNiZDQyYjE3M2U1NTM4
MjQxNjU3MWIyYw0KY2hhbmdlLWlkOiAyMDI1MDkwMi1tcS1jYWtlLXN1Yi1xZGlzYy1jZGYwYjU5
ZDJmZTUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
