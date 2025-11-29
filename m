Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 741BAC93B46
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 10:25:19 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 43CB49DF494;
	Sat, 29 Nov 2025 10:25:19 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=IayxeAoA
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764408319;
 b=3Wu16ubw9B8+KAk/2XH6EISOxZeCuLCY48MBQhobw6vuVSC9Mqo9pqLb0DbrjpTevErRb
 0Cme0rf/tqHKcsbUL9/ilC+Jo7shVvY4/SEonCSnsKI7xxeEXe8L5NjJmjr35DqdatDs2wX
 gEASPbTP5cFkvel6CzauseN5EHsyuhg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764408319; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=R+Iu+ayozszpTUz1MNtCiRiFEx1YpJBq/+9A5bWGE/A=;
 b=nHBhPdZ13FC4BywbRl2SseBS1YlR5OoTreJhSSEcJJweqy/dxfJOAdDUleOQJZgY/Bqdt
 k9c2Y+0lpLAPudz36PWEvnvHyKC00JkGUh/Y8ie0oAREFWZUwntClIln0gzXsctVz7oU/ek
 skyUUJb74N4BU1D28ZA46bklRTGWYp0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com
 [IPv6:2607:f8b0:4864:20::1134])
	by mail.toke.dk (Postfix) with ESMTPS id 5E6B89DD614
	for <cake@lists.bufferbloat.net>; Sat, 29 Nov 2025 03:08:16 +0100 (CET)
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-789314f0920so20251307b3.1
        for <cake@lists.bufferbloat.net>;
 Fri, 28 Nov 2025 18:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764382095; x=1764986895;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lsRYCdc4G4wEDADpE0nWasPGvye4RSjOQQ03w+jfvak=;
        b=IayxeAoA2OzD1ydkht0SNB5ZA03ei+7zYCqXZXbShUJSgPvj3lbgrLj4u77bwehwSI
         oApfBl8/xxoqC4iqpOd06BWEW3HFkhZFdEbCwvbAF5WbibulIQP4RUr0EyARjmaC8/H2
         EmgQI1c+uGDIsjPwc3tTtD1EBEWg3k8pGYfZtgDb+hYN/kpHd6cUnTUMWVB/GL+apEiP
         5xH1/046dG2fyQA9pIx4rHWyX0WuK8HHnesjLPVjHFrJZ8/UjwIOQvpkEoaAiCKGQZjO
         dibZvek83plBTN/VM5cg925fI9GMdpzFkJMVwUncOgdjr7tb7TxWJ3LEAPv68DQqnYbA
         jERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764382095; x=1764986895;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lsRYCdc4G4wEDADpE0nWasPGvye4RSjOQQ03w+jfvak=;
        b=VKl51lhVOuGkK4DefIdwyQcATHT3IYHbrOpevlU208AwDLpNI2TkdJed6iW8ycIzv4
         mGkWvR8tAPRg87xmlGeRFIRj+0x4XqqJE7Twd1RM/2ncizLUtr21VzxPlU3mgSILvcZ5
         HR2omvEYE2U0pADyk7yuF9ZBf6gW1E4QGSL441PN5r2xHXLWZ5oqNSdq0fXK/wCNbHqQ
         X7Nkz3GcH04UEaJL7vsE1meo2Hfp4sPd5Wl8JABHkh2W9+y2V3xN+nls0KW9Ryw/7RUN
         RWzpYvgFCenpYLFMXsCvdPdKg3HBG4vVHoDTdQPLOa1nPINF5BcjNFZRnUngNtpJVSsW
         660A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVus2V6tjQcFKiFwMBuXq3uP+NjxFLHshMXrVssv+3W0hxwpK7FqsU53gUjWObMbhZ2Cq7J@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyznaDrejyetUoXt7woCyz2YghGvkegyzZakQ0N9fSqDquIbaci
	e+aWM2QoZJlpBqPts2aRnM2LTpGRM+vo/XM/XytbxbhjAzD2fGX9MkoJ
X-Gm-Gg: ASbGncvCG5GgJVxcrKQ4C6ut0zE2TksuclcFF8a5HJQa7X0vFGOR+DMuDCipE8tcmlM
	VZaQj6yVSao80k+b4YDlzTtHqsTMXkZVCRpH3JNb44x8CLrAjBev7KIy5TAZn2dZt8zYnxIxRTL
	dazfHZKYWZzH2IdqKCFC8t0LBWG03Twkz+MvpwCZTTp6NskR2IUZ8LldlWR25Dbi4/PtIYAhjbb
	4/b/+6NIsnn2oQt3ZOz55AvzoPvmo4LgmaWW113kOMjQxi81vI0u9Ht20Tn473hbGpjYM1izfnJ
	dl8TppikcIMv7V1RFE03eXllPBngAZqBWwbcUh0OXvb691qFDxDL4XLqHf94krQ8YkWC8DUQXul
	wGHtKUP4USGOoQCPHr60A1/szBtfr9WWHpVZn/gD3pVEbovkU9floyFn1WFlNb29Ca/ahfVcGfA
	W3t8u84a0bGsX0RoDNzUfSNjrOjMJUENmKKgFHdHwEkNTAsrZmQrSt8HgDoK11SlC4FNI=
X-Google-Smtp-Source: 
 AGHT+IEmqYXBYpPqEYCSQkz8zSv3rzNYAa0HQAd47UXkkbuR8k3qdccCqSRbB3zv+SwTOcIUYRCuAw==
X-Received: by 2002:a05:690c:6d93:b0:787:cb0c:c240 with SMTP id
 00721157ae682-78ab6e01205mr143757197b3.19.1764382094910;
        Fri, 28 Nov 2025 18:08:14 -0800 (PST)
Received: from gmail.com (116.235.236.35.bc.googleusercontent.com.
 [35.236.235.116])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-78ad102d25csm20916737b3.44.2025.11.28.18.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 18:08:14 -0800 (PST)
Date: Fri, 28 Nov 2025 21:08:13 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
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
 netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Message-ID: <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
In-Reply-To: <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: ND6M4XPQ3VFZNCUZAVKO6HP5MZ2RB5BJ
X-Message-ID-Hash: ND6M4XPQ3VFZNCUZAVKO6HP5MZ2RB5BJ
X-Mailman-Approved-At: Sat, 29 Nov 2025 10:25:17 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.2e44851dd8b26@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBBZGQgYSBjYWtlX21xIHFkaXNjIHdo
aWNoIGluc3RhbGxzIGNha2UgaW5zdGFuY2VzIG9uIGVhY2ggaGFyZHdhcmUNCj4gcXVldWUgb24g
YSBtdWx0aS1xdWV1ZSBkZXZpY2UuDQo+IA0KPiBUaGlzIGlzIGp1c3QgYSBjb3B5IG9mIHNjaF9t
cSB0aGF0IGluc3RhbGxzIGNha2UgaW5zdGVhZCBvZiB0aGUgZGVmYXVsdA0KPiBxZGlzYyBvbiBl
YWNoIHF1ZXVlLiBTdWJzZXF1ZW50IGNvbW1pdHMgd2lsbCBhZGQgc2hhcmluZyBvZiB0aGUgY29u
ZmlnDQo+IGJldHdlZW4gY2FrZSBpbnN0YW5jZXMsIGFzIHdlbGwgYXMgYSBtdWx0aS1xdWV1ZSBh
d2FyZSBzaGFwZXIgYWxnb3JpdGhtLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphbWFsIEhhZGkgU2Fs
aW0gPGpoc0Btb2phdGF0dS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KPiAtLS0NCj4gIG5ldC9zY2hlZC9zY2hfY2FrZS5j
IHwgMjE0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoN
CklzIHRoaXMgY29kZSBkdXBsaWNhdGlvbiB1bmF2b2lkYWJsZT8NCg0KQ291bGQgdGhlIHNhbWUg
YmUgYWNoaWV2ZWQgYnkgZWl0aGVyDQoNCmV4dGVuZGluZyB0aGUgb3JpZ2luYWwgc2NoX21xIHRv
IGhhdmUgYSB2YXJpYW50IHRoYXQgY2FsbHMgdGhlDQpjdXN0b20gY2FrZV9tcV9jaGFuZ2UuDQoN
Ck9yIGF2b2lkIGhhbmdpbmcgdGhlIHNoYXJlZCBzdGF0ZSBvZmYgb2YgcGFyZW50IG1xIGVudGly
ZWx5LiBIYXZlIHRoZQ0KY2FrZSBpbnN0YW5jZXMgc2hhcmUgaXQgZGlyZWN0bHkuIEUuZy4sIHdo
ZXJlIGFsbCBidXQgdGhlIGluc3RhbmNlIG9uDQpuZXRkZXZfZ2V0X3R4X3F1ZXVlKGRldiwgMCkg
YXJlIG9wZW5lZCBpbiBhIHNwZWNpYWwgInNoYXJlZCIgbW9kZSAoYQ0KYml0IGxpa2UgU09fUkVV
U0VQT1JUIHNvY2tldHMpIGFuZCBsb29rdXAgdGhlIHN0YXRlIGZyb20gdGhhdA0KaW5zdGFuY2Uu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
