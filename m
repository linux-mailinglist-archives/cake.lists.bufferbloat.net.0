Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8AC96866
	for <lists+cake@lfdr.de>; Mon, 01 Dec 2025 11:00:52 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8305F9ED81A;
	Mon, 01 Dec 2025 11:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764583243;
	bh=ACc3IL4iIHTQzyN5OYxrOinPZDzD0lXLPcAGAvbSOHg=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=jlqF5IwkInRFpbOFdlWQqJESC+0gbrRegVrSIwuOeegk1wk1slwKzADJGs/rkzEpJ
	 TC3CoMvUiVeKdwd1kP1c37j4ZFkRafJn0iNDQ8CMxte2pF69vZY5BCfISANvWGcRHR
	 hqWzZOgJueFbYRfAuaXg0sPKmY9lBJclSrJEF6GlYM9aUHvz7o3Jgjb6cT6rY2O6Ii
	 WUo/haCZGY9FGWnIzgy7UXWXRU1dWaZk4ktxo9CHG3Ia2Q+5RNnTcq96j/zotjcWWo
	 U6oMazzdFDI/DWX1Lnk/3elqOtjsztQLbYvDXaWQubNXP7BuNK2EtQrXWvD6SCggj2
	 okAvqMN4aShsw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764583243;
 b=0E6+GSndglLB5hvCMKgnTzv82Pz6Uw0OjcKmKTADCmfmzsBLIVVCdBrO2iUtnaVry1eXf
 bds8AIYi0w2NsPV40IcMCCMwZX+XCkEB7MiIB2twjCu6ZI7rh4lss10k3lhd3cU7gzV6ei0
 r1SYKaSVTMBSewPXqnYXN8mX45SWm6Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764583243; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ACc3IL4iIHTQzyN5OYxrOinPZDzD0lXLPcAGAvbSOHg=;
 b=3fJWc3M3+AgBAb1crs80T0xbnwFEQjLdf/+z4cXqhlW0+dUr5m7o7sj6YlW+jk96PS0o+
 fN2CK2lP1hCo8udewFL1NLYSfChr9XU+/fOAA/mlNR/F2c9wwLNiHXhxXKFkZl1EjYC1DmW
 /kvLQH7ndsAapprd9L7qqNO1rNyCTNg=
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
	by mail.toke.dk (Postfix) with ESMTPS id 3398F9ED7DF
	for <cake@lists.bufferbloat.net>; Mon, 01 Dec 2025 11:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764583239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xPcAtXmqkcV2OwW35f2TUENlJezHZj6qDhp1D2vi8Cc=;
	b=WaeWWdg81tHdJcFmAVPpQn6ABh1BWVxkPmivcuC1bbl4fpIwy0c7Dmlx2XqOpZILsCAz97
	P4Pqb3zMUE1wGYnpPopXE6egFHjJiEhToIe6Go72d/cBpPTA+v+OdzclZfzvygjgw01Rx6
	rL/y79vybTyF6vlI3oI7KyV68/ibxqg=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-232-ZyoD6UxPOquxEWIhe3vzLQ-1; Mon, 01 Dec 2025 05:00:36 -0500
X-MC-Unique: ZyoD6UxPOquxEWIhe3vzLQ-1
X-Mimecast-MFC-AGG-ID: ZyoD6UxPOquxEWIhe3vzLQ_1764583235
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-b70bca184ccso396891366b.2
        for <cake@lists.bufferbloat.net>;
 Mon, 01 Dec 2025 02:00:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764583235; x=1765188035;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPcAtXmqkcV2OwW35f2TUENlJezHZj6qDhp1D2vi8Cc=;
        b=WWPrbyEIixprYKsTza0yVvnLOPQZe0bynKCeS//KVSQGYBEdnezRTKPyXHcuxi08ha
         AKxOcqc2Pd2RZtQ0GCRQSYR/ilbffYvlWUx6KGYVWhSWoDbj/8/DmZ9bzUdXpaVdeJVC
         Cgvd82faVsmxEfQHY1fanDIQ5kTJMU0LDle+sFqXFHonAAsYsc4gsmddc7PRgrMMMtiy
         abZlAUwwUIxl1I/iGwbvfdtn71dejGrmmCIpj06VdEIxfeQOwlmrr1uOUGExuonMrS7l
         zaJzJ47vgu7jabPYdVhNvzsi5OI/k7bB0OBiPoalqkCQDK2jXcYOQmRUKVHOkdYo+vp6
         Fq+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXN+4lgE0cg1ioO5LyJdvbucPwfi+Uh5kD6xSB0t30/kuO+ux7ojN20cCmpHIeEmYqriVBc@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzjLsf2QtB4MqN/LW8DkXJNpSDoO+Ser5WO4MUczcWi+kLb52N3
	fTwT9xMKThFqtsSwvW2BEukmachEcZ1RodG4Mb7pBRzb5X2g3ke2RxjUkMKvvK0QdvdDaNgdExi
	M0gfDeWnqMu2O1P8Buf/C91QqXZYPlP8J8tZtx+wmPp8aEWSvT6Y3e6u+7EnNDG0=
X-Gm-Gg: ASbGncu7zplElUP3Qv4x1SVbsOx+rNDTHUFBkk8y47Kzn8+naHckkDkhJgBy9zKPOy5
	b9u3FD6QD7C4FFpOYbOjkbJtX/DXLpnKz6QFhaoBD6nS/sI4xLkGNeWqJbmo25jeLllV++S7VfI
	tcSBGD6In7/x3DGELAxV4bDDByDE8cW4gKS+9+FGLR9eR/Kk1OHqMyuuRy/veg7bZdq3wxjRTy0
	nK9KY1hPwGZ9vy7Y3ENrgp/rfjUvrtls2rjQPfQqMK06MlR9TdOapRzeewAs8W+T9pAKphzM/m5
	vFI7x6pNCCpyiKiu29EPBXinY3Q5QE0bLUWf3w68NEgJyBP86TPj2QA+8bTOWTz5K0VxGAaWwCH
	x82vCytPiguuVsChSMHkSFniP+34ie1dM6Q==
X-Received: by 2002:a17:907:948e:b0:b76:6aca:f1f3 with SMTP id
 a640c23a62f3a-b7671589e26mr4283870666b.19.1764583235289;
        Mon, 01 Dec 2025 02:00:35 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IEmT8/ucDX1Qh3CKdD8iaTBPlS1ARFHW2GBYJb7svm5iT+aEQnVTVZYTPPAQOJCRS6udU6r2g==
X-Received: by 2002:a17:907:948e:b0:b76:6aca:f1f3 with SMTP id
 a640c23a62f3a-b7671589e26mr4283857766b.19.1764583233293;
        Mon, 01 Dec 2025 02:00:33 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f5a25fcasm1175298266b.61.2025.12.01.02.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:00:29 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 99FD1395D51; Mon, 01 Dec 2025 11:00:28 +0100 (CET)
Date: Mon, 01 Dec 2025 11:00:18 +0100
Message-Id: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADJnLWkC/3XNwUrEMBAG4FdZcnZkMk26rSdB8AG8ioc0M7Fh2
 dZNallZ+u6GCrKy9fjzz//NRWVJUbJ62F1UkjnmOA4lmLud8r0b3gUil6wIyWKLBMcTeHcQyJ8
 dnDhmD54DdrZlCmJV2X0kCfG8mq9qkAkGOU/qrTR9zNOYvtZnL89P68EPTGYDnjUgmMphjay1J
 veYhHs33fvxuHqz/iVK/S/hKATNrjNNE24Iuib2WwQVggy34hjNvmtviOqKqHCLqAphQ117axr
 x7P8Qy7J8AzxyU4GHAQAA
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
X-Mimecast-MFC-PROC-ID: H9ywBTPArQ--BhRBddAIAA79TmHXdTkadtP7Ir8i_1c_1764583235
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: AJ5E2K7WYD5YYZX3ZRWUAZP77XWSYTCG
X-Message-ID-Hash: AJ5E2K7WYD5YYZX3ZRWUAZP77XWSYTCG
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v4 0/5] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com/>
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
IGVuYWJsZXMgdGhlIG11bHRpLWNvcmUgcmF0ZQ0KICBzaGFwaW5nDQoNCkEgc2VsZnRlc3QsIGFu
ZCBhIHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQgYXdhcmUgb2YgdGhlIGNha2VfbXENCnFk
aXNjLCB3aWxsIGJlIHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lg0KDQotLS0NCkNoYW5nZXMgaW4gdjQ6
DQotIEEgYnVuY2ggb2YgYm90IG5pdHM6DQogLSBGaXggbnVsbCBwb2ludGVyIGRlcmVmIGluIGNh
a2VfZGVzdHJveSgpDQogLSBVbndpbmQgcWRpc2MgcmVnaXN0cmF0aW9uIG9uIGZhaWx1cmUNCiAt
IFVzZSByY3VfZGVyZWZlcmVuY2UoKSBpbnN0ZWFkIG9mIHJ0bmxfZGVyZWZlcmVuY2UoKSBpbiBk
YXRhIHBhdGgNCiAtIFVzZSBXUklURV9PTkNFKCkgZm9yIHEtPmxhc3RfYWN0aXZlDQogLSBTdG9y
ZSBudW1fYWN0aXZlX3FzIHRvIHN0YXRzIHZhbHVlIGFmdGVyIGNvbXB1dGluZyBpdA0KLSBMaW5r
IHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTMwLW1xLWNha2Utc3ViLXFk
aXNjLXYzLTAtNWY2NmM1NDhlY2RjQHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2MzoNCi0gRXhw
b3J0IHRoZSBmdW5jdGlvbnMgZnJvbSBzY2hfbXEgYW5kIHJldXNlIHRoZW0gaW5zdGVhZCBvZiBj
b3B5LXBhc3RpbmcNCi0gRHJvcHBlZCBKYW1hbCdzIHJldmlld2VkLWJ5IG9uIHRoZSBwYXRjaGVz
IHRoYXQgY2hhbmdlZCBkdWUgdG8gdGhlIGFib3ZlDQotIEZpeGVkIGEgY3Jhc2ggaWYgY2FrZV9t
cV9pbml0IGlzIGNhbGxlZCB3aXRoIGEgTlVMTCBvcHQgcGFyYW1ldGVyDQotIExpbmsgdG8gdjI6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMjctbXEtY2FrZS1zdWItcWRpc2MtdjIt
MC0yNGQ5ZWFkMDQ3YjlAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYyOg0KLSBSZWJhc2Ugb24g
dG9wIG9mIG5ldC1uZXh0LCBpbmNvcnBvcmF0aW5nIEVyaWMncyBjaGFuZ2VzDQotIExpbmsgdG8g
djE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMjQtbXEtY2FrZS1zdWItcWRpc2Mt
djEtMC1hMmZmMWRhYjQ4OGZAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYxIChzaW5jZSBSRkMp
Og0KLSBEcm9wIHRoZSBzeW5jX3RpbWUgcGFyYW1ldGVyIGZvciBub3cgYW5kIGFsd2F5cyB1c2Ug
dGhlIDIwMCB1cyB2YWx1ZS4NCiAgV2UgYXJlIHBsYW5uaW5nIHRvIGV4cGxvcmUgYXV0by1jb25m
aWd1cmF0aW9uIG9mIHRoZSBzeW5jIHRpbWUsIHNvDQogIHRoaXMgaXMgdG8gYXZvaWQgY29tbWl0
dGluZyB0byBhIFVBUEkuIElmIG5lZWRlZCwgYSBwYXJhbWV0ZXIgY2FuIGJlDQogIGFkZGVkIGJh
Y2sgbGF0ZXIuDQotIEtlZXAgdGhlIHRjIHlhbWwgc3BlYyBpbiBzeW5jIHdpdGggdGhlIG5ldyBz
dGF0cyBtZW1iZXINCi0gUmViYXNlIG9uIG5ldC1uZXh0DQotIExpbmsgdG8gUkZDOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjUwOTI0LW1xLWNha2Utc3ViLXFkaXNjLXYxLTAtNDNhMDYw
ZDExMTJhQHJlZGhhdC5jb20NCg0KLS0tDQpKb25hcyBLw7ZwcGVsZXIgKDEpOg0KICAgICAgbmV0
L3NjaGVkOiBzY2hfY2FrZTogc2hhcmUgc2hhcGVyIHN0YXRlIGFjcm9zcyBzdWItaW5zdGFuY2Vz
IG9mIGNha2VfbXENCg0KVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuICg0KToNCiAgICAgIG5ldC9z
Y2hlZDogRXhwb3J0IG1xIGZ1bmN0aW9ucyBmb3IgcmV1c2UNCiAgICAgIG5ldC9zY2hlZDogc2No
X2Nha2U6IEZhY3RvciBvdXQgY29uZmlnIHZhcmlhYmxlcyBpbnRvIHNlcGFyYXRlIHN0cnVjdA0K
ICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogQWRkIGNha2VfbXEgcWRpc2MgZm9yIHVzaW5nIGNh
a2Ugb24gbXEgZGV2aWNlcw0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogU2hhcmUgY29uZmln
IGFjcm9zcyBjYWtlX21xIHN1Yi1xZGlzY3MNCg0KIERvY3VtZW50YXRpb24vbmV0bGluay9zcGVj
cy90Yy55YW1sIHwgICAzICsNCiBpbmNsdWRlL25ldC9zY2hfZ2VuZXJpYy5oICAgICAgICAgICB8
ICAxOSArKw0KIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCAgICAgIHwgICAxICsNCiBu
ZXQvc2NoZWQvc2NoX2Nha2UuYyAgICAgICAgICAgICAgICB8IDQ4NSArKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0NCiBuZXQvc2NoZWQvc2NoX21xLmMgICAgICAgICAgICAgICAg
ICB8ICA2OSArKystLQ0KIDUgZmlsZXMgY2hhbmdlZCwgNDMxIGluc2VydGlvbnMoKyksIDE0NiBk
ZWxldGlvbnMoLSkNCi0tLQ0KYmFzZS1jb21taXQ6IDAxNzdmMGYwNzg4NmU1NGUxMmM2ZjE4ZmE1
OGY2M2U2M2RkZDNjNTgNCmNoYW5nZS1pZDogMjAyNTA5MDItbXEtY2FrZS1zdWItcWRpc2MtY2Rm
MGI1OWQyZmU1DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQK
