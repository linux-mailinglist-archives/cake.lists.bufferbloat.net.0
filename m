Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id F27A8CF7AC1
	for <lists+cake@lfdr.de>; Tue, 06 Jan 2026 11:06:36 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 98432B5C81E;
	Tue, 06 Jan 2026 11:06:35 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mojatatu-com.20230601.gappssmtp.com header.i=@mojatatu-com.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=cSzoOyES
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767693995;
 b=SdQAvVRypRWLvKRX3e80nCAfynIMn91QKdwljrhMiPMfQ5kEc6tzJGEmH/AqK+qL4CaE7
 QS2IbIsQbLg2hba6SllXp0rJ4/+C556WcPT2gzS7YGVI83ZUCO802UudeWjVG6wNNTS0txF
 gOl2HoOkWLxSSWgXpiEwJ5MYBbiap/E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767693995; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=romfpFtigk08MxxmsLVwWoG1sebliwp4Q+RUGj6jUG8=;
 b=A5uLMzL9H0xgw838/2j7gR28w2EzFGnLf1kBeQGAiSHXXYDe35PZkKNTZabvXpEFJfX5u
 d1kp03BIFa7I3p3GuScbm64PddPwof16xNAbWXJZo56mfgI9qx6C3Q5IhfsXDj3InksJzTX
 ok+RRdKk9+APCIOgVz3JZTFok9CHe5I=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=none smtp.mailfrom=mojatatu.com;
 dkim=pass header.d=mojatatu-com.20230601.gappssmtp.com;
 arc=none;
 dmarc=none
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
	by mail.toke.dk (Postfix) with ESMTPS id 2E094B5A1D1
	for <cake@lists.bufferbloat.net>; Mon, 05 Jan 2026 21:52:53 +0100 (CET)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-c46d68f2b4eso199387a12.2
        for <cake@lists.bufferbloat.net>;
 Mon, 05 Jan 2026 12:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mojatatu-com.20230601.gappssmtp.com; s=20230601; t=1767646371;
 x=1768251171; darn=lists.bufferbloat.net;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gCb9sY5eWHfFp7S6NJ1pwNDBiIDe2ARMH+uqafrlkAM=;
        b=cSzoOyES2EqkvZPBrpavsQfVd2EiOmP0z7GOQAbkAfd7EX7uKkKFYez+MqM/lCsPVQ
         DAmT+vAhyb0UDC2YgUm67xJEUOtaV6mLQ/3Pyz6tYy/Mll887XcboWNzXz54NgkEcws6
         GBq4NeaKzxgN76hCtoS1jW1RkX6r0fSdcrWqDBOC5jl64eK3Ha3xFIz5j3N/8y3kN/VU
         g/zAFeyacS61vY82sTn96yLBHsabpu2EKPAAK0rDWfT+VFUqCmkRkBGLQJYHnrSoh6PV
         PB56S2aqoG8XsNJcXwiQt/cROh8wWVEB5cGIoJCKr6C6qzk35D1GDo2IcJ5UzwN0GIjW
         r33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767646371; x=1768251171;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gCb9sY5eWHfFp7S6NJ1pwNDBiIDe2ARMH+uqafrlkAM=;
        b=tDN+CEZ2+FtC6ekTVDgJMikWoAs7aBhavlOO3aHQMRvwejJ/k1Vr4tE4UonCl6MlDC
         IdZbG+YyYR1DBLMLrGZKQ2Uafi+27TwatQsRdpjOKjeEtCeNJyX5L0H3GzwmYd9PejoM
         SKGcxqwDu5wzb5+LhoeB1zJyQrC4D0lsRsVfM6EL8Md5/wlZStmIqnmAYSMKBXDRVCmj
         KjNUDLBjqAO2FBq+MMMqiN4kp0ljqtpjj5yyP1Y/1BBLxxvgsuzHoAoRp+kKxC+HWIEe
         iOPei+tPlBKNKNZKv9VQn4MsONmS7uApG50qGqu4tIj3NZHwC23QRpX3ocEvss1TO3Uw
         EoZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWSgpJoIKBTavGZNAob9msdz05kSNmwKvezxtTCPukk6CQ924Xer4t/fmkJDhJ9G4FmDyV@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxYzr382oE3a/4iuC5LXBm0yzMKp84kzg/f8hnZM+XRYOio0mZ+
	EjE51IfzHwfyWEwzxiMXuv9cReZqmaUsEKT2rZt3DIhzSEUcCUjSHTEOSNOlxlFujg==
X-Gm-Gg: AY/fxX4qG1iJpgN5RaTMVroJT1tyQhLqabBABKo6iryEVsxnaN4Lxk7sDrcuUwUilX+
	jTXV5IhpBv2Vdzt7CTJ/z96XlQIjCWH9bbj+Ya07YT1ZRwDy8Cfj7vuQqEazT1VFbWvKAdcYpn2
	lmnJXLzsuIt6Nnip2LWbe/iXAhXhvnYed/2DpOzyo1PTT7FmldQRFk48ihtew2w4A53uu0YXI3S
	GdVVh48OB+OPl1z7XaS986Lq5U06b6rEGkbY3pVSbPPPu/U7s7zzriYhbMH4nvHd48NyQqH72Gp
	p+vpk3gLZc57ICI756PFoNMGvNnLvphjm6LGjqjFESx0fe8rwNVxXtpANcm40qdTCrBLzpVJijO
	iraGL0l21/9P7RdW6+36Z+dFTI8UXkdWKeNP6cf4EVZ/7UgqXEYMmbjFgf+UriSpu5EiOgzIHQz
	FapttuXhdjhP3+pWumpQtZ6RChjNOpHoCC
X-Google-Smtp-Source: 
 AGHT+IE+dMTxe1WIhbpzEtzhArfLn62auaFBdv1wnjaBHeXTlYeyhZ+F8ywFN+X/W2GeTbPrTXKvZg==
X-Received: by 2002:a05:7300:bc0b:b0:2b0:514a:a8cf with SMTP id
 5a478bee46e88-2b16f880888mr462930eec.17.1767646370718;
        Mon, 05 Jan 2026 12:52:50 -0800 (PST)
Received: from ?IPV6:2804:14d:5c54:4efb::2000? ([2804:14d:5c54:4efb::2000])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2b1706a6386sm371481eec.14.2026.01.05.12.52.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 12:52:50 -0800 (PST)
Message-ID: <04a4cfc3-ca15-49cf-89c1-17a4bc374caa@mojatatu.com>
Date: Mon, 5 Jan 2026 17:52:45 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Victor Nogueira <victor@mojatatu.com>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?UTF-8?Q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
References: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
 <20260105-mq-cake-sub-qdisc-v5-6-8a99b9db05e6@redhat.com>
Content-Language: en-US
In-Reply-To: <20260105-mq-cake-sub-qdisc-v5-6-8a99b9db05e6@redhat.com>
X-MailFrom: victor@mojatatu.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: EL3NE4EPGGL6WP4LSN5RDLQRB32H4454
X-Message-ID-Hash: EL3NE4EPGGL6WP4LSN5RDLQRB32H4454
X-Mailman-Approved-At: Tue, 06 Jan 2026 11:06:33 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v5 6/6] selftests/tc-testing: add selftests for
 cake_mq qdisc
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/04a4cfc3-ca15-49cf-89c1-17a4bc374caa@mojatatu.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDEvMjAyNiAwOTo1MCwgVG9rZSBIw4PCuGlsYW5kLUrDg8K4cmdlbnNlbiB3cm90ZToN
Cj4gRnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQo+IFsu
Li5dDQo+IFRlc3QgMThlMDogRmFpbCB0byBpbnN0YWxsIENBS0VfTVEgb24gc2luZ2xlIHF1ZXVl
IGRldmljZQ0KPiAgWy4uLl0NCj4gKyAgICB7DQo+ICsgICAgICAgICJpZCI6ICIxOGUwIiwNCj4g
KyAgICAgICAgIm5hbWUiOiAiRmFpbCB0byBpbnN0YWxsIENBS0VfTVEgb24gc2luZ2xlIHF1ZXVl
IGRldmljZSIsDQo+ICsgICAgICAgICJjYXRlZ29yeSI6IFsNCj4gKyAgICAgICAgICAgICJxZGlz
YyIsDQo+ICsgICAgICAgICAgICAiY2FrZV9tcSINCj4gKyAgICAgICAgXSwNCj4gKyAgICAgICAg
InBsdWdpbnMiOiB7DQo+ICsgICAgICAgICAgICAicmVxdWlyZXMiOiAibnNQbHVnaW4iDQo+ICsg
ICAgICAgIH0sDQo+ICsgICAgICAgICJzZXR1cCI6IFsNCj4gKyAgICAgICAgICAgICJlY2hvIFwi
MSAxIDFcIiA+IC9zeXMvYnVzL25ldGRldnNpbS9uZXdfZGV2aWNlIg0KPiArICAgICAgICBdLA0K
PiArICAgICAgICAiY21kVW5kZXJUZXN0IjogIiRUQyBxZGlzYyBhZGQgZGV2ICRFVEggaGFuZGxl
IDE6IHJvb3QgY2FrZV9tcSIsDQo+ICsgICAgICAgICJleHBFeGl0Q29kZSI6ICIyIiwNCj4gKyAg
ICAgICAgInZlcmlmeUNtZCI6ICIkVEMgcWRpc2Mgc2hvdyBkZXYgJEVUSCIsDQo+ICsgICAgICAg
ICJtYXRjaFBhdHRlcm4iOiAicWRpc2MgKGNha2VfbXEgMTogcm9vdHxjYWtlIDA6IHBhcmVudCAx
OlsxLTRdKSBiYW5kd2lkdGggdW5saW1pdGVkIGRpZmZzZXJ2MyB0cmlwbGUtaXNvbGF0ZSBub25h
dCBub3dhc2ggbm8tYWNrLWZpbHRlciBzcGxpdC1nc28gcnR0IDEwMG1zIHJhdyBvdmVyaGVhZCAw
ICIsDQo+ICsgICAgICAgICJtYXRjaENvdW50IjogIjAiLA0KPiArICAgICAgICAidGVhcmRvd24i
OiBbXQ0KDQpIaSENCg0KVGhpcyB0ZXN0IGlzIG1pc3NpbmcgdGhlIGRldmljZSBkZWxldGlvbiBv
biB0aGUgdGVhcmRvd24gc3RhZ2UuDQoNCmNoZWVycywNClZpY3Rvcg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBj
YWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
