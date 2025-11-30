Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 8193EC9549E
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 21:37:37 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id DA5439E8DA2;
	Sun, 30 Nov 2025 21:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764535055;
	bh=W5nmN5hGrbGvCuwFSuP2fizOUnpl9LdN6kSRsy2cV7I=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MDu3h9OotwUkmwHSSQxWsNBZGaZZmeHinGW3l3RcXgV8wrQJA4rqHSUXR2MwlNWze
	 bzG6R8pG7y4Km8rYccy3WFyeDOHyuJW+O52khMsio+OQVNQLvug1hkvkQNnzblQYeS
	 sQhVIJWR4lRIukp2xW+PLB5+zC2zh7hlly3BXYLdYUHUggG0OsQMplji6rJU+T6oIS
	 BHlGIiuyVGWFDWbY30fRuEIKymc3fBfQlzzxFrP/H8f0nQ4T87Xc5+i5Z6Z7mNtVhg
	 oRfQ6FOfDh6wvVpHMR28qb4yTwqQkg2Mj/WpveeTq/QNNOxZvjPi4w+7Pzv3oOvtOK
	 ISUBthY6c0oww==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764535055;
 b=qufyRvAsIVPhNW5y9lXuK2KmPa5pf/fUr+dHMHMGOGkwaUtaROicSKJ7x0M/NOYHFWj/9
 LVZiyTN8GNSXCK5A9NkmuUoCzsXYtVAn3Q7a9V4IefJupv2w/jrIlvJdM2gNRiUVLGqSLtp
 GcSwEr+qUGb6oRrsW4ulRWVrSNKwKcc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764535055; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=W5nmN5hGrbGvCuwFSuP2fizOUnpl9LdN6kSRsy2cV7I=;
 b=0GqfYmCQ26kPRc6BCMAVPMdAqSeW7pCmB+lA+QnivNbrTPf24PPkCfTYz6KW2EpE/BoNB
 UFxJ3rSoKmL2vDhivPX5oO64th2Yw13UQxoEcTnnJlsEYeEb16jxkpj+f7IIimuAUAzrmH3
 mTlugLY2ZxaCOS2WiawEqjL3WyVxPnI=
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
	by mail.toke.dk (Postfix) with ESMTPS id 421219E8D6D
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 21:37:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764535050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5CKwso0sYMJQqO4VfFGMWxTfY6Mo/xzbtN9lClbYs88=;
	b=EWXnBA3undkKRMHUeXcsr10IkVZ2Dxv0WoDvCb6socWPO/SovPSeFvKH6d8FqWZsXDQ8Kp
	gSuburqacQ+2MSS5K+ORztg7SrbCye0Y+u5IFpFt+9GMb5lCG72xfjuOQrB052CW7uvu1f
	aYOW2HHiA8plyYADpkL1UOXwYIq/xV0=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-DffXZl79OuG8OP7TlmXtHw-1; Sun, 30 Nov 2025 15:37:29 -0500
X-MC-Unique: DffXZl79OuG8OP7TlmXtHw-1
X-Mimecast-MFC-AGG-ID: DffXZl79OuG8OP7TlmXtHw_1764535048
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-64095d94c2cso4129017a12.1
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 12:37:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764535048; x=1765139848;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5CKwso0sYMJQqO4VfFGMWxTfY6Mo/xzbtN9lClbYs88=;
        b=Nklqi+ERvuCWl7vDtfKsvNr5SbBwRivgDD2/MXJ5iAB84qm+Qk+y+FJ6o30ijWTOor
         aNHdhDoPDEvcApb/FsPRDQxnz2+6OovPTmaq2JHGDeGFncz90QEe6opcUa7YlFXFLXXT
         YJfHSTGXutwn4IzFm8wUfz+ndhbWIzTm1Sq/m7AhKowEv2/h5WQ+StBX7wUK6cSesS4x
         Il2kjSwmUnkMsuQwjJkrfskHBavoihIrrnxPDJCc32TGbLQjmAfapofStQ/nvLzdhbbj
         Vd9ywmJlk5fwZ7OzCt2c3Y0O1kzF/cL8QBmAVkEcXMHwNPWrj5Fw2h3mEeMvBMVGYS3s
         eFew==
X-Forwarded-Encrypted: i=1;
 AJvYcCWM5i1s1nMHjQCKdT2antutOppGZSCl8Cr9ZRdJ2No/F5fVFVjWotRnUJQky23c8siXsLGT@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxFqf5vPMkHnSvba1q1WOoMN9oBy5iOX99rt0FNJ2AuKbmvd9ob
	etPPeNIj9J+fX8sOhzorl8pDjyOBwnj/heFFe7SzAxW/BANtwRn1QOoaOjaTSUUHizNHb5VYRIA
	ekp8Mzkl+6Hw1pDjUchDURzmdYrAPacLmlmEZqVzYoZmDeSZ6sX01NPxeoTB7WHI=
X-Gm-Gg: ASbGncs/Mer7InD/Cw4kgll3clUySSFwbVPe0MWG6YXQxOPyWs0ME1fTOSdXohoOVIA
	JmmD5AYbcNh6tGQ9FqhFPsp+ARRovv/YxeNpvvgf/Ik5kUuR3otmRQjo+wtgljXZiiHcCtej1c1
	H08/N+vypYYg633yiiQ6T46YQoMktxI3lY6agw9EinHmH1TnQNBnWxqF/xNjdERwkBvDq/V1FKx
	b1A/YC83FoMigdaslF9zgCGCEYs0+9MxwC5wVKErnzx4N3lXan2JgbOpeEp6857SiDCAtk/9haH
	AlfNvwxzmGvpGcWwp+N0TDRhGMnDtpUC3vKNfnPMVr4FubT/K81hQouaWsW7USplfZywtz7YjR1
	+s8yTu5reaQux+s/03+Faju5XC5JcsmRAUQ==
X-Received: by 2002:a17:907:d92:b0:b72:588:2976 with SMTP id
 a640c23a62f3a-b76719d749bmr3522248166b.60.1764535048039;
        Sun, 30 Nov 2025 12:37:28 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IElmJmo4hg/2Kqg0PjWd9+E58vVUyFL8EW5kQTkceKQlL14rTfVMDP34XY640Yj4moSIuKAZw==
X-Received: by 2002:a17:907:d92:b0:b72:588:2976 with SMTP id
 a640c23a62f3a-b76719d749bmr3522247166b.60.1764535047683;
        Sun, 30 Nov 2025 12:37:27 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f59aea78sm988661166b.36.2025.11.30.12.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 12:37:26 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 41FB0395C27; Sun, 30 Nov 2025 21:37:26 +0100 (CET)
Date: Sun, 30 Nov 2025 21:37:20 +0100
MIME-Version: 1.0
Message-Id: <20251130-mq-cake-sub-qdisc-v3-3-5f66c548ecdc@redhat.com>
References: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
In-Reply-To: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
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
X-Mimecast-MFC-PROC-ID: EOrbqNieSEPNKK9jMb9c1GfG12JknmnLKoshw4LulCw_1764535048
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: MCW3TB2O3MOYJBZNJBEKFVRQBNGIIMQN
X-Message-ID-Hash: MCW3TB2O3MOYJBZNJBEKFVRQBNGIIMQN
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v3 3/5] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251130-mq-cake-sub-qdisc-v3-3-5f66c548ecdc@redhat.com/>
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

QWRkIGEgY2FrZV9tcSBxZGlzYyB3aGljaCBpbnN0YWxscyBjYWtlIGluc3RhbmNlcyBvbiBlYWNo
IGhhcmR3YXJlDQpxdWV1ZSBvbiBhIG11bHRpLXF1ZXVlIGRldmljZS4NCg0KVGhpcyBpcyBqdXN0
IGEgY29weSBvZiBzY2hfbXEgdGhhdCBpbnN0YWxscyBjYWtlIGluc3RlYWQgb2YgdGhlIGRlZmF1
bHQNCnFkaXNjIG9uIGVhY2ggcXVldWUuIFN1YnNlcXVlbnQgY29tbWl0cyB3aWxsIGFkZCBzaGFy
aW5nIG9mIHRoZSBjb25maWcNCmJldHdlZW4gY2FrZSBpbnN0YW5jZXMsIGFzIHdlbGwgYXMgYSBt
dWx0aS1xdWV1ZSBhd2FyZSBzaGFwZXIgYWxnb3JpdGhtLg0KDQpTaWduZWQtb2ZmLWJ5OiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCi0tLQ0KIG5ldC9zY2hlZC9z
Y2hfY2FrZS5jIHwgNjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQoNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hf
Y2FrZS5jDQppbmRleCA1NDViOWI4MzBjY2UuLmQzNjBhZGU2Y2EyNiAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTMxNTEs
MTQgKzMxNTEsODAgQEAgc3RhdGljIHN0cnVjdCBRZGlzY19vcHMgY2FrZV9xZGlzY19vcHMgX19y
ZWFkX21vc3RseSA9IHsNCiB9Ow0KIE1PRFVMRV9BTElBU19ORVRfU0NIKCJjYWtlIik7DQogDQor
c3RydWN0IGNha2VfbXFfc2NoZWQgew0KKwlzdHJ1Y3QgbXFfc2NoZWQgbXFfcHJpdjsgLyogbXVz
dCBiZSBmaXJzdCAqLw0KK307DQorDQorc3RhdGljIHZvaWQgY2FrZV9tcV9kZXN0cm95KHN0cnVj
dCBRZGlzYyAqc2NoKQ0KK3sNCisJbXFfZGVzdHJveV9jb21tb24oc2NoKTsNCit9DQorDQorc3Rh
dGljIGludCBjYWtlX21xX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9w
dCwNCisJCQlzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQorew0KKwlpbnQgcmV0Ow0K
Kw0KKwlyZXQgPSBtcV9pbml0X2NvbW1vbihzY2gsIG9wdCwgZXh0YWNrLCAmY2FrZV9xZGlzY19v
cHMpOw0KKwlpZiAocmV0KQ0KKwkJcmV0dXJuIHJldDsNCisNCisJcmV0dXJuIDA7DQorfQ0KKw0K
K3N0YXRpYyBpbnQgY2FrZV9tcV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiKQ0KK3sNCisJbXFfZHVtcF9jb21tb24oc2NoLCBza2IpOw0KKwlyZXR1cm4gMDsNCit9
DQorDQorc3RhdGljIGludCBjYWtlX21xX2NoYW5nZShzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0
IG5sYXR0ciAqb3B0LA0KKwkJCSAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KK3sN
CisJcmV0dXJuIC1FT1BOT1RTVVBQOw0KK30NCisNCitzdGF0aWMgaW50IGNha2VfbXFfZ3JhZnQo
c3RydWN0IFFkaXNjICpzY2gsIHVuc2lnbmVkIGxvbmcgY2wsIHN0cnVjdCBRZGlzYyAqbmV3LA0K
KwkJCSBzdHJ1Y3QgUWRpc2MgKipvbGQsIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykN
Cit7DQorCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgImNhbid0IHJlcGxhY2UgY2FrZV9tcSBzdWIt
cWRpc2NzIik7DQorCXJldHVybiAtRU9QTk9UU1VQUDsNCit9DQorDQorc3RhdGljIGNvbnN0IHN0
cnVjdCBRZGlzY19jbGFzc19vcHMgY2FrZV9tcV9jbGFzc19vcHMgPSB7DQorCS5zZWxlY3RfcXVl
dWUJPSBtcV9zZWxlY3RfcXVldWUsDQorCS5ncmFmdAkJPSBjYWtlX21xX2dyYWZ0LA0KKwkubGVh
ZgkJPSBtcV9sZWFmLA0KKwkuZmluZAkJPSBtcV9maW5kLA0KKwkud2FsawkJPSBtcV93YWxrLA0K
KwkuZHVtcAkJPSBtcV9kdW1wX2NsYXNzLA0KKwkuZHVtcF9zdGF0cwk9IG1xX2R1bXBfY2xhc3Nf
c3RhdHMsDQorfTsNCisNCitzdGF0aWMgc3RydWN0IFFkaXNjX29wcyBjYWtlX21xX3FkaXNjX29w
cyBfX3JlYWRfbW9zdGx5ID0gew0KKwkuY2xfb3BzCQk9CSZjYWtlX21xX2NsYXNzX29wcywNCisJ
LmlkCQk9CSJjYWtlX21xIiwNCisJLnByaXZfc2l6ZQk9CXNpemVvZihzdHJ1Y3QgY2FrZV9tcV9z
Y2hlZCksDQorCS5pbml0CQk9CWNha2VfbXFfaW5pdCwNCisJLmRlc3Ryb3kJPQljYWtlX21xX2Rl
c3Ryb3ksDQorCS5hdHRhY2gJCT0JbXFfYXR0YWNoLA0KKwkuY2hhbmdlCQk9CWNha2VfbXFfY2hh
bmdlLA0KKwkuY2hhbmdlX3JlYWxfbnVtX3R4ID0gbXFfY2hhbmdlX3JlYWxfbnVtX3R4LA0KKwku
ZHVtcAkJPQljYWtlX21xX2R1bXAsDQorCS5vd25lcgkJPQlUSElTX01PRFVMRSwNCit9Ow0KK01P
RFVMRV9BTElBU19ORVRfU0NIKCJjYWtlX21xIik7DQorDQogc3RhdGljIGludCBfX2luaXQgY2Fr
ZV9tb2R1bGVfaW5pdCh2b2lkKQ0KIHsNCi0JcmV0dXJuIHJlZ2lzdGVyX3FkaXNjKCZjYWtlX3Fk
aXNjX29wcyk7DQorCXJldHVybiByZWdpc3Rlcl9xZGlzYygmY2FrZV9xZGlzY19vcHMpID86DQor
CQlyZWdpc3Rlcl9xZGlzYygmY2FrZV9tcV9xZGlzY19vcHMpOw0KIH0NCiANCiBzdGF0aWMgdm9p
ZCBfX2V4aXQgY2FrZV9tb2R1bGVfZXhpdCh2b2lkKQ0KIHsNCiAJdW5yZWdpc3Rlcl9xZGlzYygm
Y2FrZV9xZGlzY19vcHMpOw0KKwl1bnJlZ2lzdGVyX3FkaXNjKCZjYWtlX21xX3FkaXNjX29wcyk7
DQogfQ0KIA0KIG1vZHVsZV9pbml0KGNha2VfbW9kdWxlX2luaXQpDQoNCi0tIA0KMi41Mi4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
