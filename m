Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C45DD0A500
	for <lists+cake@lfdr.de>; Fri, 09 Jan 2026 14:15:50 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EDE86B8ABCB;
	Fri, 09 Jan 2026 14:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767964547;
	bh=IOkpVphW4UomRVj86Z6ClTZVEa8sPF7/bY4rF1QVBsA=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=RwUZ8whWVBqsp2iW6fK1z/GfemerIABcpYdaxvAM4QCXiPdCqqHh5NBCKX9cx10UE
	 XU9EUuZgiuIUSjpS6LiCDs121v4EXlANd0WvPF6+e3UnBTaEhfNPahK9l5wAX0gq2B
	 aXB0ROcVrbJDgPA9WddSM+vMkc8I+IUYA5CbgeZ6fLnI0YNrntbcc1riucdTtd1HxB
	 d728EbN+LPCbR5gVqLISIMufmFcVXdZos6ggUpZ3+dQiIUzXlmPAAIMcDtpyiInoI3
	 ZKUiXOeDevy4KKVXiHkGTrFDu/un+bCltTzKtKW3CxcvpQwfU8cb7iFE7jKvZ+O9em
	 jR5CxtuiJfODA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767964547;
 b=SrfrpKFhGK65WXYJfByBXi1dIi8lWvqlh2zrgCPriJqjfbgcT7CGjdwSd+S1GBrRmnnK0
 9rLlyIbwI7eXFjY8sWBaq6mHXUXZ0TAX1yTJQUt87KxlhXbTzvJyaVdge+PbHyVkdsmF5+t
 tzD6tvD3ADIwuRtVw46HyCEsxmHTvsU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767964547; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IOkpVphW4UomRVj86Z6ClTZVEa8sPF7/bY4rF1QVBsA=;
 b=blKd4L2OpVGJkF2Aqifh/CJNkIKwQCy5wmsctP1IUnktIh8GOUqT+Vv4vbXOHrYWkRBXE
 4PUcyrnY63FZFk6KGWsU5Bl2ErfbbXhFXwugHTFcJRzCxWaIr6BzDJUqxjTx6oZux5OmwU5
 cuRUPK/PJ+GUoT4I4ULdcP205ED8E04=
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
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.toke.dk (Postfix) with ESMTPS id 09DF7B8AB7B
	for <cake@lists.bufferbloat.net>; Fri, 09 Jan 2026 14:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767964544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=15JyQ+VnqINRMwrw8AIegPn8BzaxzgODQQRF2S98B5Y=;
	b=D5g+E8+GsZS9GXIFLiIYXYlvM/NvQAWzpw9rMGFMACSRMhEnn+Wo9tZqKaaTn3l9f1/6RN
	8m90LCyOrw5J9F09h3+UQuyTW27i7AgkQE15I1xw0ChwzPaR9GBsf33jd1HOFwmSR/miyV
	dmM1AV1B5kK05i/pkxtofQ83dL3Ljn8=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-676-NpoCqBnTNCaACww350v6yw-1; Fri, 09 Jan 2026 08:15:42 -0500
X-MC-Unique: NpoCqBnTNCaACww350v6yw-1
X-Mimecast-MFC-AGG-ID: NpoCqBnTNCaACww350v6yw_1767964541
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b76eaf310f6so432689466b.1
        for <cake@lists.bufferbloat.net>;
 Fri, 09 Jan 2026 05:15:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964541; x=1768569341;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=15JyQ+VnqINRMwrw8AIegPn8BzaxzgODQQRF2S98B5Y=;
        b=mULe6vteDPu0wAYULIf0udiUAHuVpqEuzTOeoy5eNGWCwPzgyavQB3x/frL8o2TSOt
         1h3wOCd0IP5MrCIZ2/i9CUa/QY58nA+pVwJ6gL5Ng6h9NblfxBAO5Fr82XacJiXzM6vo
         jCAeJp/VHhT1gj+xFpeH4skzm06pPaIe/Nk9tlFb7QyTPpv9oRE706zbIRkgqQszA1bu
         zQyhWze3eqKcd1i4KZFBoZYfiadm/ygW7BmZThk7i7lZnQsv4q5HU1G5NY51T66aIYYG
         aUf4bgzRxIWS6ObXH9c5wYtXdo6ulO6aN9C0KlCV7MKXdP4IbmERqapWHBG7NLndlEGQ
         yY2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVk1Zb3MSaetwf47D2ejcwoscYmaiif7qN6Cl6pv/nISYK4+4AAaG/MsCfEp5n1ZcqJ52Or@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yx/SM1SO7aVRsl8YbkHV519y28tZjIqRI50QbqMERkgp1aajtuI
	3nahfuAKmqs5nljdPS95IbtKnrK7zPI70OMd1Buxm8USPqSLFAcHitSY3DB6Ua6+7xg++FENJ7P
	6mgN9yCAYoQhmd3AwnOrL70EqQkba0AjGTsbz6gg9awMBh2K0HWJHGZ35fem/4tQ=
X-Gm-Gg: AY/fxX7Ex+9obqPMI3M0pH1SN7e2JNX1ya9hj4eIdzDOn8j6jI1pZxhbEVjaGjypiI6
	zGsykg58EpDZS/4+naPbJLOYfduEi1GurArKQE2LIqLGQ61UgTCZZMLQ6F8AzcTa6j2+KK2Gmvk
	9jDD6/XlJBDr2by4YUI758zLSf7FQUloag+0z3VlBwCoD3ATUFNUc/6hdibp18ZKtHErdbKPCHC
	wPyPhWRCukri3sBf0ofbzKsliWSIPev0GOzQkN4h+911rHLX6ss54OKOWowF5Q1Yz7wSnvsNbm8
	Z/RGZU2qxiA3g5dtWm5YQNtY/uuzqwMUJlbOcOHJ64dC++d4yLSW1XBVfy0DevevxWMCELBcuK0
	mwNsljmdL9JZVx+XsnPe0EySOjP9RQULqH6d6
X-Received: by 2002:a17:907:7801:b0:b73:1b97:5ddd with SMTP id
 a640c23a62f3a-b84298aaaf7mr977871566b.8.1767964540824;
        Fri, 09 Jan 2026 05:15:40 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IHXfD6hIS3yvZXrfPZ431q2UaPCz5Fvv5DwOUzo2N/PV5cXgjJXOX9oac+kNdKm+4+4JtHfjA==
X-Received: by 2002:a17:907:7801:b0:b73:1b97:5ddd with SMTP id
 a640c23a62f3a-b84298aaaf7mr977868166b.8.1767964540306;
        Fri, 09 Jan 2026 05:15:40 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a563f73sm1162052666b.61.2026.01.09.05.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:15:38 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 1FAFE40862B; Fri, 09 Jan 2026 14:15:38 +0100 (CET)
Date: Fri, 09 Jan 2026 14:15:29 +0100
Message-Id: <20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHH/YGkC/3XRwU7DMAwG4FdBORNkp0nacEJC4gG4Ig5J7LAIr
 WNtmYamvTtZEVDUcLR++7Nkn8TIQ+ZR3F6dxMCHPOZdX4ru+krEje9fWGYqtVCgDDhQcruX0b+
 yHN+D3FMeo4yUIBhHKrERZe5t4JSPs/kkep5kz8dJPJdkk8dpN3zMyx4f7ueGL1jpCnxACVI3H
 iwQIip/NzBt/HQTd9vZO+APUeJ/Ca9SQvJBd11aEWpJtDVCFUJpcuwJdBvcimgWRAM1oimESdZ
 GozuOFFeE/iUUYI3QFwKIGoXoMdoVYb4JCwimRphCdN654CiA4TVhl4StEbYQzIrBBuSA64+0S
 6KrEe3lqRysNgk0ur+3OJ/Pn0cBkXeTAgAA
X-Change-ID: 20250902-mq-cake-sub-qdisc-cdf0b59d2fe5
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Willem de Bruijn <willemb@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Victor Nogueira <victor@mojatatu.com>
X-Mailer: b4 0.14.3
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tTVSb6_T7Xc46jsaKVv2neC-K0c5GdTh3MO5P6Mapqw_1767964541
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: WPNOLO7QJIIOPUL6EICO4YB76C7VZQ6B
X-Message-ID-Hash: WPNOLO7QJIIOPUL6EICO4YB76C7VZQ6B
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v8 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com/>
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
c3RhbmNlLg0KDQpEb2luZyB0aGluZ3MgdGhpcyB3YXkgc2ltcGxpZmllcyB1c2VyIGNvbmZpZ3Vy
YXRpb24gYnkgY2VudHJhbGlzaW5nDQphbGwgY29uZmlndXJhdGlvbiB0aHJvdWdoIHRoZSBjYWtl
X21xIHFkaXNjICh3aGljaCBhbHNvIHNlcnZlcyBhcyBhbg0Kb2J2aW91cyB3YXkgb2Ygb3B0aW5n
IGludG8gdGhlIG11bHRpLXF1ZXVlIGF3YXJlIGJlaGF2aW91cikuIFRoZSBjYWtlX21xDQpxZGlz
YyB0YWtlcyBhbGwgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXJzIGFzIHRoZSBjYWtl
IHFkaXNjLg0KDQpBbiBlYXJsaWVyIHZlcnNpb24gb2YgdGhpcyB3b3JrIHdhcyBwcmVzZW50ZWQg
YXQgdGhpcyB5ZWFyJ3MgTmV0ZGV2Y29uZjoNCmh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTkv
c2Vzc2lvbnMvdGFsay9tcS1jYWtlLXNjYWxpbmctc29mdHdhcmUtcmF0ZS1saW1pdGluZy1hY3Jv
c3MtY3B1LWNvcmVzLmh0bWwNCg0KVGhlIHBhdGNoIHNlcmllcyBpcyBzdHJ1Y3R1cmVkIGFzIGZv
bGxvd3M6DQoNCi0gUGF0Y2ggMSBleHBvcnRzIHRoZSBtcSBxZGlzYyBmdW5jdGlvbnMgZm9yIHJl
dXNlLg0KDQotIFBhdGNoIDIgZmFjdG9ycyBvdXQgdGhlIHNjaF9jYWtlIGNvbmZpZ3VyYXRpb24g
dmFyaWFibGVzIGludG8gYQ0KICBzZXBhcmF0ZSBzdHJ1Y3QgdGhhdCBjYW4gYmUgc2hhcmVkIGJl
dHdlZW4gaW5zdGFuY2VzLg0KDQotIFBhdGNoIDMgYWRkcyB0aGUgYmFzaWMgY2FrZV9tcSBxZGlz
YywgcmV1c2luZyB0aGUgZXhwb3J0ZWQgbXEgY29kZQ0KDQotIFBhdGNoIDQgYWRkcyBjb25maWd1
cmF0aW9uIHNoYXJpbmcgYWNyb3NzIHRoZSBjYWtlIGluc3RhbmNlcyBpbnN0YWxsZWQNCiAgdW5k
ZXIgY2FrZV9tcQ0KDQotIFBhdGNoIDUgYWRkcyB0aGUgc2hhcmVkIHNoYXBlciBzdGF0ZSB0aGF0
IGVuYWJsZXMgdGhlIG11bHRpLWNvcmUgcmF0ZQ0KICBzaGFwaW5nDQoNCi0gUGF0Y2ggNiBhZGRz
IHNlbGZ0ZXN0cyBmb3IgY2FrZV9tcQ0KDQpBIHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQg
YXdhcmUgb2YgdGhlIGNha2VfbXEgcWRpc2Mgd2VyZSBzdWJtaXR0ZWQNCnNlcGFyYXRlbHkgd2l0
aCBhIHByZXZpb3VzIHBhdGNoIHZlcnNpb246DQoNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyNjAxMDUxNjI5MDIuMTQzMjk0MC0xLXRva2VAcmVkaGF0LmNvbQ0KDQotLS0NCkNoYW5nZXMg
aW4gdjg6DQotIFVzZSByaWdodCBhdHRyaWJ1dGUgaW4gbmV0bGluayBleHRhY3QgZXJyb3INCi0g
VXNlIGt6YWxsb2Moc2l6ZW9mKCpxKSkgaW5zdGVhZCBvZiBremFsbG9jKHNpemVvZihzdHJ1Y3Qg
Y2FrZV9zY2hlZF9jb25maWcpKQ0KLSBMaW5rIHRvIHY3OiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjYwMTA4LW1xLWNha2Utc3ViLXFkaXNjLXY3LTAtNGViNjQ1ZjA0MTljQHJlZGhhdC5j
b20NCg0KQ2hhbmdlcyBpbiB2NzoNCi0gVXNlIGt6YWxsb2MoKSBpbnN0ZWFkIG9mIGt2Y2FsbG9j
KDEsIC4uLikNCi0gQWRkIG1pc3NpbmcgU29CIHRvIGxhc3QgcGF0Y2gNCi0gQWRkIG5ldyBpbmNs
dWRlL2xpbnV4L3NjaF9wcml2LmggaGVhZGVyIGZpbGUgdG8gTUFJTlRBSU5FUlMgZW50cnkgZm9y
IFRDDQotIExpbmsgdG8gdjY6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMDYtbXEt
Y2FrZS1zdWItcWRpc2MtdjYtMC1lZTJlMDZiMWViMWFAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGlu
IHY2Og0KLSBBZGQgbWlzc2luZyB0ZWFyZG93biBjb21tYW5kIGluIGxhc3Qgc2VsZnRlc3QNCi0g
TGluayB0byB2NTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDEwNS1tcS1jYWtlLXN1
Yi1xZGlzYy12NS0wLThhOTliOWRiMDVlNkByZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjU6DQot
IERpc2FsbG93IHVzaW5nIGF1dG9yYXRlLWluZ3Jlc3Mgd2l0aCBjYWtlX21xDQotIExvY2sgZWFj
aCBjaGlsZCBpbiBjYWtlX21xX2NoYW5nZSgpIGluc3RlYWQgb2YgdGhlIHBhcmVudA0KLSBNb3Zl
IG1xIGV4cG9ydHMgaW50byBpdHMgb3duIGhlYWRlciBmaWxlIGFuZCBleHBvcnQgdGhlbSB3aXRo
IEVYUE9SVF9TWU1CT0xfTlNfR1BMDQotIEFkZCBzZWxmdGVzdHMNCi0gTGluayB0byB2NDogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MTIwMS1tcS1jYWtlLXN1Yi1xZGlzYy12NC0wLTUw
ZGQzMjExYTFjNkByZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjQ6DQotIEEgYnVuY2ggb2YgYm90
IG5pdHM6DQogLSBGaXggbnVsbCBwb2ludGVyIGRlcmVmIGluIGNha2VfZGVzdHJveSgpDQogLSBV
bndpbmQgcWRpc2MgcmVnaXN0cmF0aW9uIG9uIGZhaWx1cmUNCiAtIFVzZSByY3VfZGVyZWZlcmVu
Y2UoKSBpbnN0ZWFkIG9mIHJ0bmxfZGVyZWZlcmVuY2UoKSBpbiBkYXRhIHBhdGgNCiAtIFVzZSBX
UklURV9PTkNFKCkgZm9yIHEtPmxhc3RfYWN0aXZlDQogLSBTdG9yZSBudW1fYWN0aXZlX3FzIHRv
IHN0YXRzIHZhbHVlIGFmdGVyIGNvbXB1dGluZyBpdA0KLSBMaW5rIHRvIHYzOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjUxMTMwLW1xLWNha2Utc3ViLXFkaXNjLXYzLTAtNWY2NmM1NDhl
Y2RjQHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2MzoNCi0gRXhwb3J0IHRoZSBmdW5jdGlvbnMg
ZnJvbSBzY2hfbXEgYW5kIHJldXNlIHRoZW0gaW5zdGVhZCBvZiBjb3B5LXBhc3RpbmcNCi0gRHJv
cHBlZCBKYW1hbCdzIHJldmlld2VkLWJ5IG9uIHRoZSBwYXRjaGVzIHRoYXQgY2hhbmdlZCBkdWUg
dG8gdGhlIGFib3ZlDQotIEZpeGVkIGEgY3Jhc2ggaWYgY2FrZV9tcV9pbml0IGlzIGNhbGxlZCB3
aXRoIGEgTlVMTCBvcHQgcGFyYW1ldGVyDQotIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyNTExMjctbXEtY2FrZS1zdWItcWRpc2MtdjItMC0yNGQ5ZWFkMDQ3YjlAcmVk
aGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYyOg0KLSBSZWJhc2Ugb24gdG9wIG9mIG5ldC1uZXh0LCBp
bmNvcnBvcmF0aW5nIEVyaWMncyBjaGFuZ2VzDQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNTExMjQtbXEtY2FrZS1zdWItcWRpc2MtdjEtMC1hMmZmMWRhYjQ4OGZA
cmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYxIChzaW5jZSBSRkMpOg0KLSBEcm9wIHRoZSBzeW5j
X3RpbWUgcGFyYW1ldGVyIGZvciBub3cgYW5kIGFsd2F5cyB1c2UgdGhlIDIwMCB1cyB2YWx1ZS4N
CiAgV2UgYXJlIHBsYW5uaW5nIHRvIGV4cGxvcmUgYXV0by1jb25maWd1cmF0aW9uIG9mIHRoZSBz
eW5jIHRpbWUsIHNvDQogIHRoaXMgaXMgdG8gYXZvaWQgY29tbWl0dGluZyB0byBhIFVBUEkuIElm
IG5lZWRlZCwgYSBwYXJhbWV0ZXIgY2FuIGJlDQogIGFkZGVkIGJhY2sgbGF0ZXIuDQotIEtlZXAg
dGhlIHRjIHlhbWwgc3BlYyBpbiBzeW5jIHdpdGggdGhlIG5ldyBzdGF0cyBtZW1iZXINCi0gUmVi
YXNlIG9uIG5ldC1uZXh0DQotIExpbmsgdG8gUkZDOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjUwOTI0LW1xLWNha2Utc3ViLXFkaXNjLXYxLTAtNDNhMDYwZDExMTJhQHJlZGhhdC5jb20N
Cg0KLS0tDQpKb25hcyBLw7ZwcGVsZXIgKDIpOg0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTog
c2hhcmUgc2hhcGVyIHN0YXRlIGFjcm9zcyBzdWItaW5zdGFuY2VzIG9mIGNha2VfbXENCiAgICAg
IHNlbGZ0ZXN0cy90Yy10ZXN0aW5nOiBhZGQgc2VsZnRlc3RzIGZvciBjYWtlX21xIHFkaXNjDQoN
ClRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiAoNCk6DQogICAgICBuZXQvc2NoZWQ6IEV4cG9ydCBt
cSBmdW5jdGlvbnMgZm9yIHJldXNlDQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBGYWN0b3Ig
b3V0IGNvbmZpZyB2YXJpYWJsZXMgaW50byBzZXBhcmF0ZSBzdHJ1Y3QNCiAgICAgIG5ldC9zY2hl
ZDogc2NoX2Nha2U6IEFkZCBjYWtlX21xIHFkaXNjIGZvciB1c2luZyBjYWtlIG9uIG1xIGRldmlj
ZXMNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IFNoYXJlIGNvbmZpZyBhY3Jvc3MgY2FrZV9t
cSBzdWItcWRpc2NzDQoNCiBEb2N1bWVudGF0aW9uL25ldGxpbmsvc3BlY3MvdGMueWFtbCAgICAg
ICAgICAgICAgICB8ICAgMyArDQogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDEgKw0KIGluY2x1ZGUvbmV0L3NjaF9wcml2LmggICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDI3ICsNCiBpbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVk
LmggICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQogbmV0L3NjaGVkL3NjaF9jYWtlLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA1MTQgKysrKysrKysrKysrKystLS0tLQ0KIG5l
dC9zY2hlZC9zY2hfbXEuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDcxICsr
LQ0KIC4uLi90Yy10ZXN0aW5nL3RjLXRlc3RzL3FkaXNjcy9jYWtlX21xLmpzb24gICAgICAgIHwg
NTU5ICsrKysrKysrKysrKysrKysrKysrKw0KIDcgZmlsZXMgY2hhbmdlZCwgMTAxOCBpbnNlcnRp
b25zKCspLCAxNTggZGVsZXRpb25zKC0pDQotLS0NCmJhc2UtY29tbWl0OiA3NmRlNGUxNTk0Yjdk
ZmFjYmE1NDllOWRiNjA1ODU4MTFmNDVkYmU1DQpjaGFuZ2UtaWQ6IDIwMjUwOTAyLW1xLWNha2Ut
c3ViLXFkaXNjLWNkZjBiNTlkMmZlNQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cg==
