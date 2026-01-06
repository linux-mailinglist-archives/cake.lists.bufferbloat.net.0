Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E6566CFCBCD
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:27 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 7D045B78552;
	Tue, 06 Jan 2026 21:08:33 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mojatatu-com.20230601.gappssmtp.com header.i=@mojatatu-com.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=ZKFFwkVU
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767730113;
 b=OiVCyBQrejO7ui6NBsp64LzlW6hafiGd/AQIQkbLZG0i7A5fPyVla+aDiw7qjgTkPVkpt
 r31SNkgJfs8RI9hWHpnhUc/ewnw4AnVOzIXM/OV2Wrumua3HC6d8QlGcU16V0FSJHjkCxLu
 HmPzvC2i0W4a/DHDCsNYHGVjLO8XBRo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767730113; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qCP+uqHqkEO5ajLQ3yHOuHdFMQ9Jmi1NG5GFstvANeE=;
 b=BYUG1MganZkbOzNxISHjs0A/p7/EP5WV/1tnl3lDP5awLrq1DRSvoL6Kpb8n0GgTpXNMm
 FdEI6ddtDaKXJpcZ6dDEWpY+xo1nXpBj+MthL104tMqQ7SsQcvCVkcudYJERHUGNb67n54l
 QGJK3pXQkkdkxiy3p1AO+kcyxrfAXxE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=none smtp.mailfrom=mojatatu.com;
 dkim=pass header.d=mojatatu-com.20230601.gappssmtp.com;
 arc=none;
 dmarc=none
Received: from mail-dy1-x132f.google.com (mail-dy1-x132f.google.com
 [IPv6:2607:f8b0:4864:20::132f])
	by mail.toke.dk (Postfix) with ESMTPS id 7F706B77C94
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 19:20:00 +0100 (CET)
Received: by mail-dy1-x132f.google.com with SMTP id
 5a478bee46e88-2b0ea1edf11so1159666eec.0
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 10:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mojatatu-com.20230601.gappssmtp.com; s=20230601; t=1767723597;
 x=1768328397; darn=lists.bufferbloat.net;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=trT5e9qmw42xqqlHYRkk0Z7FLehgd4RFh1ytKbQv/9I=;
        b=ZKFFwkVUhL5ByXrJsogPpe5mFLhqJAlOGoDIRgt6eum2Q6CNN32u6M2hbR1StbOkqW
         9kjh3+ptDQVF3wWXJ96ljKnBkfj+808tV8fy2w2UaLgBTK4BYwvmgTY4kbZACbzFxrPr
         19eRKqB7rnCb1NJVdl3/TsgQ1hcs87dafn9FNGCB4lK14Fz+Q4RIfPAt/DM2g5144RNO
         3izRq9ZXDSFiEwZLI2IC4kKZI9VYTWvCJzIvoX3yBejx9DbUBRGsD4rJmTuoTQ/EWv/2
         REvp/iRiiwXeMLgc+G0pwrV1gVoV52DPA5frTBjjSWszhELgko4ca5CukeLVt4Dq+Prm
         pL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767723597; x=1768328397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=trT5e9qmw42xqqlHYRkk0Z7FLehgd4RFh1ytKbQv/9I=;
        b=rML1wzgSAGjvX9r4h35Q7PLqyY9uSzBr9GO8YDrYV5Z95cc8Cha5ix1CMYCcX2SuN/
         WN4C1c0PAGPZQwf0WOKtNjDRskVSWB6asMrYK42cjABsJq9dXqaCTNPhbakBcNbVY7TC
         f2Jt3PnvAEpmPa5niikCHaW8sfYUZAsMV8+2nbZ9d36YpwHe+5ptcmYSlsSPkLv60HZs
         qtzaVSNdKdn+n4dIv6xI79fZXcTCqYnM4W7VgNsm1hLWWIStZUn6Cd26anaAHrwWVP+H
         8tzOtkQl5Aipb7pdgF6oYbAVk6xTRje1Gks3Fl24u7WsFUI9oUG3r3exLiiuLulbZ6lX
         GbhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXo8MBVxlzmkhzYC9b5l0rmU8EvmRpca2FtxbGnyX0AxUvhrq9HOJA3Q8FQGkynTEAawtk0@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw1va4LN8axRkz8QfupX2CtVR5+GfZPCNIlqmaLAuk3Ry2TaXvS
	RLIZY2DzHAO7FvNhOo/3NsTn9/s5C2IZWnqdftAuEdZwKDkmqB07zhT8ddUJ/orkfQ==
X-Gm-Gg: AY/fxX67UjwdFWyJGDVJE33OIzPcgsxhwIy1IZWiWBu/GQNL0eAQ9TtBio2SGrstHd0
	dL9JthjbXm+4C6XGyUtiLtuAvO0rmzqCMbBmYc2GGYPob1ksV35gUcMRLtYBJYVOQV1WHfiSG+8
	Wz/BdlD+HVVlm7Jy8l+jB7KEmkdWpl47Ht8GMxiqF/c8OXCStDt9TH3lwKLFI3HCm01MYVgeiZx
	QrhNuxvujBX6mI/fslTRgFY44Ly4QCtxFB4aP19bBUgHPiSeKvbgQl51iNiGJnCCUrB328q294K
	iLCD3y3celBnF4mX+NFVNT9dSQy2Lk4t5JfReQ4QV8UiHvSlapOC+z1OKU+G0frRsjszRXwMGtH
	VrGKDKughx6TIA4y9NIWRdrEBapMo/joxSEihG4eigSUnusoOBDMHrlZh+5L8o/ouhEcxpd/Clu
	MnwWFOWhE+yx0mfUBspxGyig==
X-Google-Smtp-Source: 
 AGHT+IHdM+Pe2O19qzx4peU7mNXEr2NTKva0bAIMrxBULdr3+Sccns0d3fmGH0lYFudKBTMf0q+vJQ==
X-Received: by 2002:a05:7300:2319:b0:2a4:3594:d54e with SMTP id
 5a478bee46e88-2b16f906c1bmr2704088eec.27.1767723597459;
        Tue, 06 Jan 2026 10:19:57 -0800 (PST)
Received: from ?IPV6:2804:14d:5c54:4efb::2000? ([2804:14d:5c54:4efb::2000])
        by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2b1706c503csm5244344eec.15.2026.01.06.10.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 10:19:56 -0800 (PST)
Message-ID: <1cacbd67-7d09-4ddd-8762-8be3c238efa9@mojatatu.com>
Date: Tue, 6 Jan 2026 15:19:52 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?UTF-8?Q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
 <20260106-mq-cake-sub-qdisc-v6-6-ee2e06b1eb1a@redhat.com>
Content-Language: en-US
From: Victor Nogueira <victor@mojatatu.com>
In-Reply-To: <20260106-mq-cake-sub-qdisc-v6-6-ee2e06b1eb1a@redhat.com>
X-MailFrom: victor@mojatatu.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 4KJMFI5VV4762YBWFGLEOZGDUQHPRZ6X
X-Message-ID-Hash: 4KJMFI5VV4762YBWFGLEOZGDUQHPRZ6X
X-Mailman-Approved-At: Tue, 06 Jan 2026 21:08:31 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v6 6/6] selftests/tc-testing: add selftests for
 cake_mq qdisc
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/1cacbd67-7d09-4ddd-8762-8be3c238efa9@mojatatu.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDEvMjAyNiAwODo0MCwgVG9rZSBIw4PCuGlsYW5kLUrDg8K4cmdlbnNlbiB3cm90ZToN
Cj4gRnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQo+IA0K
PiBUZXN0IDY4NGI6IENyZWF0ZSBDQUtFX01RIHdpdGggZGVmYXVsdCBzZXR0aW5nICg0IHF1ZXVl
cykNCj4gVGVzdCA3ZWU4OiBDcmVhdGUgQ0FLRV9NUSB3aXRoIGJhbmR3aWR0aCBsaW1pdCAoNCBx
dWV1ZXMpDQo+IFRlc3QgMWY4NzogQ3JlYXRlIENBS0VfTVEgd2l0aCBydHQgdGltZSAoNCBxdWV1
ZXMpDQo+IFRlc3QgZTljZjogQ3JlYXRlIENBS0VfTVEgd2l0aCBiZXN0ZWZmb3J0IGZsYWcgKDQg
cXVldWVzKQ0KPiBUZXN0IDdjMDU6IENyZWF0ZSBDQUtFX01RIHdpdGggZGlmZnNlcnY4IGZsYWcg
KDQgcXVldWVzKQ0KPiBUZXN0IDVhNzc6IENyZWF0ZSBDQUtFX01RIHdpdGggZGlmZnNlcnY0IGZs
YWcgKDQgcXVldWVzKQ0KPiBUZXN0IDhmN2E6IENyZWF0ZSBDQUtFX01RIHdpdGggZmxvd2JsaW5k
IGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0IDdlZjc6IENyZWF0ZSBDQUtFX01RIHdpdGggZHN0aG9z
dCBhbmQgbmF0IGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0IDJlNGQ6IENyZWF0ZSBDQUtFX01RIHdp
dGggd2FzaCBmbGFnICg0IHF1ZXVlcykNCj4gVGVzdCBiM2U2OiBDcmVhdGUgQ0FLRV9NUSB3aXRo
IGZsb3dibGluZCBhbmQgbm8tc3BsaXQtZ3NvIGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0IDYyY2Q6
IENyZWF0ZSBDQUtFX01RIHdpdGggZHVhbC1zcmNob3N0IGFuZCBhY2stZmlsdGVyIGZsYWcgKDQg
cXVldWVzKQ0KPiBUZXN0IDBkZjM6IENyZWF0ZSBDQUtFX01RIHdpdGggZHVhbC1kc3Rob3N0IGFu
ZCBhY2stZmlsdGVyLWFnZ3Jlc3NpdmUgZmxhZyAoNCBxdWV1ZXMpDQo+IFRlc3QgOWE3NTogQ3Jl
YXRlIENBS0VfTVEgd2l0aCBtZW1saW1pdCBhbmQgcHRtIGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0
IGNkZWY6IENyZWF0ZSBDQUtFX01RIHdpdGggZndtYXJrIGFuZCBhdG0gZmxhZyAoNCBxdWV1ZXMp
DQo+IFRlc3QgOTNkZDogQ3JlYXRlIENBS0VfTVEgd2l0aCBvdmVyaGVhZCAwIGFuZCBtcHUgKDQg
cXVldWVzKQ0KPiBUZXN0IDE0NzU6IENyZWF0ZSBDQUtFX01RIHdpdGggY29uc2VydmF0aXZlIGFu
ZCBpbmdyZXNzIGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0IDdiZjE6IERlbGV0ZSBDQUtFX01RIHdp
dGggY29uc2VydmF0aXZlIGFuZCBpbmdyZXNzIGZsYWcgKDQgcXVldWVzKQ0KPiBUZXN0IGVlNTU6
IFJlcGxhY2UgQ0FLRV9NUSB3aXRoIG1wdSAoNCBxdWV1ZXMpDQo+IFRlc3QgNmRmOTogQ2hhbmdl
IENBS0VfTVEgd2l0aCBtcHUgKDQgcXVldWVzKQ0KPiBUZXN0IDY3ZTI6IFNob3cgQ0FLRV9NUSBj
bGFzcyAoNCBxdWV1ZXMpDQo+IFRlc3QgMmRlNDogQ2hhbmdlIGJhbmR3aWR0aCBvZiBDQUtFX01R
ICg0IHF1ZXVlcykNCj4gVGVzdCA1ZjYyOiBGYWlsIHRvIGNyZWF0ZSBDQUtFX01RIHdpdGggYXV0
b3JhdGUtaW5ncmVzcyBmbGFnICg0IHF1ZXVlcykNCj4gVGVzdCAwMzhlOiBGYWlsIHRvIGNoYW5n
ZSBzZXR0aW5nIG9mIHN1Yi1xZGlzYyB1bmRlciBDQUtFX01RDQo+IFRlc3QgN2JkYzogRmFpbCB0
byByZXBsYWNlIHN1Yi1xZGlzYyB1bmRlciBDQUtFX01RDQo+IFRlc3QgMThlMDogRmFpbCB0byBp
bnN0YWxsIENBS0VfTVEgb24gc2luZ2xlIHF1ZXVlIGRldmljZQ0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQoNClJldmlld2Vk
LWJ5OiBWaWN0b3IgTm9ndWVpcmEgPHZpY3RvckBtb2phdGF0dS5jb20+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
