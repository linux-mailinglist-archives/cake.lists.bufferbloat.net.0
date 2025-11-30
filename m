Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBC1C954A7
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 21:37:39 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 68D729E8DE2;
	Sun, 30 Nov 2025 21:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764535057;
	bh=bLdXI5bDQvXwKGMmuVDkZmNw++ISIgUNok42qFvl46I=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=hbsO/Y83WXE5/C0zUliS2UREx+IcBbKh1uCf54fLrITHQSKYSezPKukwPlY1lncvK
	 n+STZqaLF4LG4WvQgMj2JYnDAi5U56C2P4ymhW7gGSB6Srad3xR8bD+kBATmGx/V0L
	 LjOFm5cZxxjQQ84x5zE0hSC7qxPB/QZGB8BdOnJNYrSB8MJjYjclQZtznNexit7rRU
	 SsGReeqHjwLBgF3t1n83++Nhg040Ll5sHt70xkxsBlbtPWsdfpR/FdsOoutuLEJLMJ
	 E93yMAumCqn5+Eu7+PC3hNOtvoASSs6OeCoHsLCNa8bTLp7uNOaMnAFI4ZtS7uuUT4
	 GOUFCURPN3Zbw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764535057;
 b=biLp3vOzjaMWjrwajX59k9EPr7WM2cz23I2Eu/HI2EE9WTuV//C4v6jEiOS2t7DFdI35i
 mqAIa+tfSAtUQabRJPRx1fb640mry1pcme+mQNW0K3XwMBdq59GGfc+Hin5Pw6J7bQ7Fi+Y
 ChdBUGHiHTolSMVB3Ec6tQiFDLNL3A0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764535057; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bLdXI5bDQvXwKGMmuVDkZmNw++ISIgUNok42qFvl46I=;
 b=QsBeI/4YK/GWPRU127bJru+5eIJrQIupN0TuXjsCkR0+//W8EFZaPcGoNRqsddt5sYEuG
 gDohJ+48ieHmQ5xb3YaKZCDid6d22sKjysJ+SRGMfHTgSGZ+7gX5ZiKu8I3XAcBcp8idd2q
 J+263PJsTYbjoozkz0gVaAs3q4GRjlQ=
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
	by mail.toke.dk (Postfix) with ESMTPS id 12E589E8D7B
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 21:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764535053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+aQZT4b2Nu/IBd7NvYkGdOpZxCNL6++4JZQfNH7Vtno=;
	b=DIlmgPQakSBGpgSJ4ag5VxArirQTvbkO0HukobqvMzXznzpDmfCyzeT8yabpx2uOqTc02o
	nbq8/b6b3UVBUkenZQCag4kDWq0N39osltJaO0y9GhgDQQ/fAJC1gmrElIHF5tauyNwRL7
	kDHMDXiMlFCyNBx1H3+g021K4AV3Uwg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-isK09wY7PiCFhyP2tEJK1g-1; Sun, 30 Nov 2025 15:37:30 -0500
X-MC-Unique: isK09wY7PiCFhyP2tEJK1g-1
X-Mimecast-MFC-AGG-ID: isK09wY7PiCFhyP2tEJK1g_1764535049
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-6409c803b1aso4490952a12.3
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 12:37:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764535049; x=1765139849;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+aQZT4b2Nu/IBd7NvYkGdOpZxCNL6++4JZQfNH7Vtno=;
        b=m2lt9M7YT7YfW4FUq24Vm0mfF47yyEsbteb/+Q27Sxx8l3PtIReCc+DBrwSOApjkW6
         Jbgivgbq1GGz3gNTvq68BBIKMG9pWe27qcp7GRlIrhL/2/RSk25cN5K/Gd2/mC06CFDG
         SL35vAbN+cIyOScxRDMSzjyVaNB7DGFXoGynDDQ5AXKck7dEM/xVun5Hkn1UguS4aBER
         BLgrOdAVE75X0yJrqh0Tvyne5v/jSElaaAjDBEfXGB+1npKwKSXhOLQzWYQKMUEU93kH
         R627HUs7gG+N6k9TyE9kc7Z+k+AsPdwimqRFUTqnwSvX3LD0RzOdXsQCrgYRelX1mD+h
         gAMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7FFqH4pGLyL41h+Z88uKjKvTCwNAWSRa2QSfPwbeFoWgg7LONUGrXvecZR2ts5LYa37cN@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxiB6ysXEWCdqmbjjy1NK0WTfRIeAgXT31GaPIlzWu41xi4AJg9
	IxWMmB2dn4dpk2oLXLTmEn7bDmwvN/G4Tq1wXqTiKFTwWEnGBY5Iw8uvrq93cKdNqTbwhkeOJse
	p9WDHOXgDfQgs/U6PEni7WgSnfM2nhvXRXWpXD4o0sqESVgC9zsWOE7YxumxywUE=
X-Gm-Gg: ASbGncuoeuUz/8jmjpqVBYP1mB8kBHDjOXbUVLA58UmNJLksPUl3/3PS8wKyqhqO8nm
	xcHd4/CQ7HWEXyJuZKsAb9eOrJteYO53vsq1CAyLsVWyfZZ66SkK0S1eF89+spWr5clQCQ3iK4v
	negxRoccBDymZUsLvslZFbbBc+3J8DuzwIYkOhE4Zpm4a+UV1yev+jo4s8qj3ICo19yM2DvY+7F
	UO8FwjUtE/yc0BZzT5KoBbZCnBHfO8v/Vd2CDYNNLfyfjqQUJHjKZBxsHNIbGa4UMPK/L5Ozw2Y
	cpswlNd8bY9EdOz+7tOxQjBA9jlp28fMa85FtOiz9zXdBj4nSOdD5/g7m8BEBaZiVThs2FUPELz
	dnwtC3LF+Zk0vMMQXOmYJVuodB47zYuMQ0g==
X-Received: by 2002:a05:6402:5246:b0:62f:8274:d6bd with SMTP id
 4fb4d7f45d1cf-64555b965e5mr31799459a12.8.1764535048858;
        Sun, 30 Nov 2025 12:37:28 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IH+MHlVb+HXR1Syt7OiQv3LYgQRsQyXTTIn3F85nqKzPRN8lUMKxM5xLTDLbFxEpo1vxAa8mA==
X-Received: by 2002:a05:6402:5246:b0:62f:8274:d6bd with SMTP id
 4fb4d7f45d1cf-64555b965e5mr31799443a12.8.1764535048454;
        Sun, 30 Nov 2025 12:37:28 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-64751062709sm10284515a12.35.2025.11.30.12.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 12:37:26 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 390B2395C21; Sun, 30 Nov 2025 21:37:26 +0100 (CET)
Date: Sun, 30 Nov 2025 21:37:17 +0100
Message-Id: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP2qLGkC/3XNQQrCMBAF0KtI1o4kY6rWlSB4ALfiIs1MbJC2m
 tSiSO9uqCCKuvz8+W/uInLwHMVydBeBOx99U6cwHY+ELU19YPCUskCJmcwlQnUGa44M8VLAmXy
 0YMnJIssJHWci7U6Bnb8O5k7U3ELN11bsU1P62DbhNjzbbtbDwRNG/QPuFEjQUyNnkpRSaFaBq
 TTtxDbV4HXqRaT6L2HQOUWm0IuF+yLwnZj/IjARqClnQ1LPi/yD6Pv+AVGxSYlEAQAA
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
X-Mimecast-MFC-PROC-ID: gFPST19l5_2DBWtXGNXhMbE2peitx_kE0BwwXrTPyog_1764535049
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: GCMR36NUTNHQ65ON3JP7DJ4ZHLRL4R5A
X-Message-ID-Hash: GCMR36NUTNHQ65ON3JP7DJ4ZHLRL4R5A
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v3 0/5] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com/>
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
aXNjLCB3aWxsIGJlIHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lg0KDQotLS0NCkNoYW5nZXMgaW4gdjM6
DQotIEV4cG9ydCB0aGUgZnVuY3Rpb25zIGZyb20gc2NoX21xIGFuZCByZXVzZSB0aGVtIGluc3Rl
YWQgb2YgY29weS1wYXN0aW5nDQotIERyb3BwZWQgSmFtYWwncyByZXZpZXdlZC1ieSBvbiB0aGUg
cGF0Y2hlcyB0aGF0IGNoYW5nZWQgZHVlIHRvIHRoZSBhYm92ZQ0KLSBGaXhlZCBhIGNyYXNoIGlm
IGNha2VfbXFfaW5pdCBpcyBjYWxsZWQgd2l0aCBhIE5VTEwgb3B0IHBhcmFtZXRlcg0KLSBMaW5r
IHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTI3LW1xLWNha2Utc3ViLXFk
aXNjLXYyLTAtMjRkOWVhZDA0N2I5QHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2MjoNCi0gUmVi
YXNlIG9uIHRvcCBvZiBuZXQtbmV4dCwgaW5jb3Jwb3JhdGluZyBFcmljJ3MgY2hhbmdlcw0KLSBM
aW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTI0LW1xLWNha2Utc3Vi
LXFkaXNjLXYxLTAtYTJmZjFkYWI0ODhmQHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2MSAoc2lu
Y2UgUkZDKToNCi0gRHJvcCB0aGUgc3luY190aW1lIHBhcmFtZXRlciBmb3Igbm93IGFuZCBhbHdh
eXMgdXNlIHRoZSAyMDAgdXMgdmFsdWUuDQogIFdlIGFyZSBwbGFubmluZyB0byBleHBsb3JlIGF1
dG8tY29uZmlndXJhdGlvbiBvZiB0aGUgc3luYyB0aW1lLCBzbw0KICB0aGlzIGlzIHRvIGF2b2lk
IGNvbW1pdHRpbmcgdG8gYSBVQVBJLiBJZiBuZWVkZWQsIGEgcGFyYW1ldGVyIGNhbiBiZQ0KICBh
ZGRlZCBiYWNrIGxhdGVyLg0KLSBLZWVwIHRoZSB0YyB5YW1sIHNwZWMgaW4gc3luYyB3aXRoIHRo
ZSBuZXcgc3RhdHMgbWVtYmVyDQotIFJlYmFzZSBvbiBuZXQtbmV4dA0KLSBMaW5rIHRvIFJGQzog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDkyNC1tcS1jYWtlLXN1Yi1xZGlzYy12MS0w
LTQzYTA2MGQxMTEyYUByZWRoYXQuY29tDQoNCi0tLQ0KSm9uYXMgS8O2cHBlbGVyICgxKToNCiAg
ICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IHNoYXJlIHNoYXBlciBzdGF0ZSBhY3Jvc3Mgc3ViLWlu
c3RhbmNlcyBvZiBjYWtlX21xDQoNClRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiAoNCk6DQogICAg
ICBuZXQvc2NoZWQ6IEV4cG9ydCBtcSBmdW5jdGlvbnMgZm9yIHJldXNlDQogICAgICBuZXQvc2No
ZWQ6IHNjaF9jYWtlOiBGYWN0b3Igb3V0IGNvbmZpZyB2YXJpYWJsZXMgaW50byBzZXBhcmF0ZSBz
dHJ1Y3QNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IEFkZCBjYWtlX21xIHFkaXNjIGZvciB1
c2luZyBjYWtlIG9uIG1xIGRldmljZXMNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IFNoYXJl
IGNvbmZpZyBhY3Jvc3MgY2FrZV9tcSBzdWItcWRpc2NzDQoNCiBEb2N1bWVudGF0aW9uL25ldGxp
bmsvc3BlY3MvdGMueWFtbCB8ICAgMyArDQogaW5jbHVkZS9uZXQvc2NoX2dlbmVyaWMuaCAgICAg
ICAgICAgfCAgMTkgKysNCiBpbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggICAgICB8ICAg
MSArDQogbmV0L3NjaGVkL3NjaF9jYWtlLmMgICAgICAgICAgICAgICAgfCA0NzYgKysrKysrKysr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tDQogbmV0L3NjaGVkL3NjaF9tcS5jICAgICAgICAg
ICAgICAgICAgfCAgNjkgKysrKy0tDQogNSBmaWxlcyBjaGFuZ2VkLCA0MjIgaW5zZXJ0aW9ucygr
KSwgMTQ2IGRlbGV0aW9ucygtKQ0KLS0tDQpiYXNlLWNvbW1pdDogZjkzNTA1ZjM1NzQ1NjM3YjZk
OTRlZmU4ZWZmYTk3ZWYyNjgxOTc4NA0KY2hhbmdlLWlkOiAyMDI1MDkwMi1tcS1jYWtlLXN1Yi1x
ZGlzYy1jZGYwYjU5ZDJmZTUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo=
