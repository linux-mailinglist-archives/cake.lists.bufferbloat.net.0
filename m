Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B9AC82E65
	for <lists+cake@lfdr.de>; Tue, 25 Nov 2025 01:00:29 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5BE969C5F84;
	Tue, 25 Nov 2025 01:00:28 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=MQzyMdDh
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764028828;
 b=AVJ47Sf6p4hIiDUKPeC5HKAc4YjV90ZRCxn/o7i0U1DpX2+qiLc3uHCFJsT0eHRn8xfWT
 z4H4wxloNgaQCbeAsyvmmLYJzc5doAAMujdMLFRXPgCsWNqPe4OF3oRIhP5Trd7jq6rYhbl
 zEUk9hDgQeASJfk83OEIj01v4fbc3RM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764028828; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ziwcQHqrpgZSTxars71ul0C+XqMq/MWQZHUKtTD1QDc=;
 b=VYzlGgZFCZAONtjMo/nkmmsemYZNCM+BzIVFyztwwXiqFulvtRwHPcPROcX4HWOS3Wzn/
 w7Uk0dI4XJTfovzDeZsAE3LUuct7lrqwsbtgnSv7Q2Mw1q9/eLBXUXMlXtSkyyxFDBwKwKp
 PDWesrNTEoBEljSQc/Ol3HE4TK2FeY4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
	by mail.toke.dk (Postfix) with ESMTPS id A880E9C5F76
	for <cake@lists.bufferbloat.net>; Tue, 25 Nov 2025 01:00:25 +0100 (CET)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-298287a26c3so56521705ad.0
        for <cake@lists.bufferbloat.net>;
 Mon, 24 Nov 2025 16:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764028823; x=1764633623;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/pVSZbIbwK3ksgyy/+zRVxCJy1ucujLDzjuOppCJkcY=;
        b=MQzyMdDhEAJKWJyoBQMug6qVKrFP4kijwu5bQ0gwHYTH9bYn1zxnipCNC3l04/bwz2
         pcjC4NSWeEUdIoXQDkVUGfFPKyHlBgcTbOD97KNLASgWgAOJo5ENY7gaA4p92P0+cVK/
         7MwVXwYbL1Spq+sSdRrQfRok/it3eukaHF2i4V6Cr9WI12ehdY4UXIyiPFEV9eMOO5MN
         Qlg0t4PRmIqk8WJ/KqG2SGIqKIB0yDRLL2ac4v8Mq8TbF7hI8VbhhXMDKTW8zGhy2IqY
         a6wVnZ7Hmr/8B031JFzAwt5bFaXvQGKDUMnbEhCQxCGQO2DOkNyS8zOY3E+LJ/W11SqB
         Ssuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764028823; x=1764633623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pVSZbIbwK3ksgyy/+zRVxCJy1ucujLDzjuOppCJkcY=;
        b=siWWn0bqU3tjc/xxs0H3/g8uNJt2Ck5V+hL7QrITHRp2Yc4/F9K09PNN3ZfdhpGbyR
         ZurJt+HEspCGu2sfph1rc8/2a0jbzMuRy1JwUeM2qAMOXwQWmfd7s5XW1b0+sEgIXq9j
         rvO+a6f6lxepvZNoibzDEsbBgnqtgus6Zdlg2dncXiJZbybBXkqswqznXVAcAP+slkhT
         J2NnGdol2DfFCx2iVdoI1WSQVFnPqtF3SO3e0iid03kixa3tOBGt9szabFxP/P7qv/91
         PytXRlBTe7OXTfRqxVLi51oo2A1bE3pkmXUnDQrZBbqoFnxuUakEfRzOmrf8aigJc7oz
         aB7g==
X-Gm-Message-State: AOJu0Yw7yyBL4ttKLMZOEIf4JLRT4wLHEEc/LucnQOqzQqa1hWWJfrGt
	2sGBL+wIP+2SssB1ulRJlr9OR4+UcAjNtRlvrLKatzdO7eNy+MCxY0De
X-Gm-Gg: ASbGncv6zcMy0J6XwoN7Svkm9BiY7PWmIGMPYnHRp33v4P0jYp7DHcd2Qxz/wnbRYPs
	VS1qSh7vVHHrSeRgO4xcfjHxWFmrTqd4jxV7aiitkLmCYBBGmFFEoIjcfC5lt8Lo2Uloim2Tn+H
	DWcgN2B4KmBsgZfNgZvoNZytrfRowx0ykYfiWbmGbMZWT2JPlxGlEqDBS5Su6uDqxz+CfcgRvVf
	XF9/FqrNHn2KsU/B6w6ao1eVVeJVHRYHwKi9dT2BaDY0OQJstipOmToXfKqQRRzsHfSwAISgj5G
	IGEXHPN2qyBocSMrFGhyT5ocgAR4v/GUUBqOeKq/Q06m4g+XcAbhO1g5tpWSAz7GBqtj5hVpVLR
	UcLrQnc0M3/EqCxGnruUtpcE75KBshXgUTaEq72NPrw0Ixmo3e8beX41A6UUZTm585MLWmSuqli
	1AHTA2E8fKpOz/3VxMpaYILE5oOdT1
X-Google-Smtp-Source: 
 AGHT+IGIhr1pB+Rkutrj3UKpogob8iv40eeW+eBzxKe3lgSkjClNZaTI0ECS7qofsN+gwze8tI4PbQ==
X-Received: by 2002:a17:90b:224e:b0:33e:2d0f:479b with SMTP id
 98e67ed59e1d1-34733e4683cmr13777752a91.6.1764028820913;
        Mon, 24 Nov 2025 16:00:20 -0800 (PST)
Received: from [192.168.21.44] ([65.153.131.115])
        by smtp.googlemail.com with ESMTPSA id
 98e67ed59e1d1-3475fdfccfdsm133145a91.2.2025.11.24.16.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 16:00:20 -0800 (PST)
Message-ID: <fb5fc99e-fa3b-4499-80be-4731a8c7a297@gmail.com>
Date: Mon, 24 Nov 2025 16:00:19 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Stephen Hemminger <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?UTF-8?Q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
 <20251124150350.492522-1-toke@redhat.com>
From: David Ahern <dsahern@gmail.com>
In-Reply-To: <20251124150350.492522-1-toke@redhat.com>
Message-ID-Hash: L6LU7WTKGG6DGROUZ23Z5GPFZ52PV2XN
X-Message-ID-Hash: L6LU7WTKGG6DGROUZ23Z5GPFZ52PV2XN
X-MailFrom: dsahern@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH iproute2-next] tc: cake: add cake_mq support
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/fb5fc99e-fa3b-4499-80be-4731a8c7a297@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjQvMjUgODowMyBBTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oIGIvaW5jbHVkZS91YXBp
L2xpbnV4L3BrdF9zY2hlZC5oDQo+IGluZGV4IDE1ZDFhMzdhYzZkOC4uZmIwN2E4ODk4MjI1IDEw
MDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmgNCj4gKysrIGIvaW5j
bHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQo+IEBAIC0xMDM2LDYgKzEwMzYsNyBAQCBlbnVt
IHsNCj4gIAlUQ0FfQ0FLRV9TVEFUU19EUk9QX05FWFRfVVMsDQo+ICAJVENBX0NBS0VfU1RBVFNf
UF9EUk9QLA0KPiAgCVRDQV9DQUtFX1NUQVRTX0JMVUVfVElNRVJfVVMsDQo+ICsJVENBX0NBS0Vf
U1RBVFNfQUNUSVZFX1FVRVVFUywNCj4gIAlfX1RDQV9DQUtFX1NUQVRTX01BWA0KPiAgfTsNCj4g
ICNkZWZpbmUgVENBX0NBS0VfU1RBVFNfTUFYIChfX1RDQV9DQUtFX1NUQVRTX01BWCAtIDEpDQoN
CnVhcGkgY2hhbmdlcyBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwYXRjaCB0aGF0IEkgY2FuIGRyb3Ag
d2hlbiBhcHBseWluZy4NCg0KPiBkaWZmIC0tZ2l0IGEvdGMvcV9jYWtlLmMgYi90Yy9xX2Nha2Uu
Yw0KPiBpbmRleCBlMmI4ZGU1NWU1YTIuLjFjMTQzZTc2Njg4OCAxMDA2NDQNCj4gLS0tIGEvdGMv
cV9jYWtlLmMNCj4gKysrIGIvdGMvcV9jYWtlLmMNCj4gQEAgLTUyNSw3ICs1MjUsNiBAQCBzdGF0
aWMgaW50IGNha2VfcHJpbnRfb3B0KGNvbnN0IHN0cnVjdCBxZGlzY191dGlsICpxdSwgRklMRSAq
Ziwgc3RydWN0IHJ0YXR0ciAqbw0KPiAgCSAgICBSVEFfUEFZTE9BRCh0YltUQ0FfQ0FLRV9GV01B
UktdKSA+PSBzaXplb2YoX191MzIpKSB7DQo+ICAJCWZ3bWFyayA9IHJ0YV9nZXRhdHRyX3UzMih0
YltUQ0FfQ0FLRV9GV01BUktdKTsNCj4gIAl9DQo+IC0NCj4gIAlpZiAod2FzaCkNCj4gIAkJcHJp
bnRfc3RyaW5nKFBSSU5UX0ZQLCBOVUxMLCAid2FzaCAiLCBOVUxMKTsNCj4gIAllbHNlDQoNCndo
eSByZW1vdmUgdGhlIHNwYWNpbmc/IHdoaXRlc3BhY2UgaGVscHMgcmVhZGFiaWxpdHkuDQoNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
