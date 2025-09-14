Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 757CEB56B54
	for <lists+cake@lfdr.de>; Sun, 14 Sep 2025 20:39:41 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8096E67DD4B;
	Sun, 14 Sep 2025 20:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757875180;
	bh=MFQAy3nx5Mn9TfQgbuA0Sx9xsMBm64BSzgFlSuX3Eps=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=gcemVo/hrKTB/fD9+Gf7NyNRQwUiCEfQHyvo3RNDZM36m8sgiMV7dES+n6FgghbRm
	 TXOL42mnEFgCqhI+HMqP5C/X2lMAYMmb0CZR3qc7koK7uJFt9PUQqTSCYdv1ReuzUL
	 H94ZS8J9/5eXmSoOrdXCuduxXx5adBRC3ssqj7k69jT+XRAdXJXLeMbAGJFZ9mRuuF
	 63IHVXVYOLcxsHt2JfcirNDM/dF9N6GoWaE5jM0aFFGHTIIJLm6Yar9EWI2/v+Od20
	 3HLS31upsoue6Y8ncd+gBMasPQ47f7XspbtG3MPNA07tJCz4pNbacHAIuteGlixS/F
	 JphzFcTRFzNJA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757875180;
 b=rz2+WVQ5OyA36Nu/YhIfOTyxQ6CP7j8Z/M4j9E9rRkKJSNvB7EcCJmzHe7VYMPh4GTKSM
 Q8cUWGj2yyFmNR4TlY/o1SRpKtBrJe9Lj6LKBmAt6/1si5ByLykUiHJrF52nh2Uo5nmkpra
 it/BmzJ+j3lUVuAAkYWNiFdPwGWN8Pg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757875180; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=MFQAy3nx5Mn9TfQgbuA0Sx9xsMBm64BSzgFlSuX3Eps=;
 b=GVEZsdkqXsYUpf58yXGqP1wuDWRWKMtUfjeuNNjy8ScTa1k690rJvYnHSdxluw2Q8JIAO
 J3DG/x69XLyKnt6xiD9W5ndM8i5h95Ys8E9Sd+JrJcUpnyahXZKbCSWP5B0qAtq6pnOzvkx
 oRboezs+DTTFXoUkK38QGCrXJ4ZMgyc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=herbertland.com;
 arc=none;
 dmarc=pass header.from=herbertland.com policy.dmarc=reject
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=herbertland.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=herbertland.com
 policy.dmarc=reject
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
	by mail.toke.dk (Postfix) with ESMTPS id 451AA67DD37
	for <cake@lists.bufferbloat.net>; Sun, 14 Sep 2025 20:39:38 +0200 (CEST)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-336dc57f562so29192601fa.1
        for <cake@lists.bufferbloat.net>;
 Sun, 14 Sep 2025 11:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=herbertland.com; s=google; t=1757875117; x=1758479917;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmfHFaXqb9ZzUD+RZliVJ8/36Tz/7f3S59GCTXypMAY=;
        b=e6WRm9x+NIJH03G2x6E+Dq57IJb4tuKhkAvt63eVX7FsxHu24sWIAiujST8dO+pMUu
         al0Ll4WKqJhcs+wUCmOI3c+yrGNIfBEPUmuvRZiKogDn/s7KIKo08mcvRg3/AgaIkO0j
         duUqUSa1wyzswrjg2iTd/hA4B2GscrI5opPyTzUnceURrhfeDIRG4OJYFl5nnoYkWAJ4
         3jcwcAfbbhEtqf/iAXRghM/cehmDJ33uE9+c4sb9cw3sUZeiqmU82v/uGEfhSF5u+QNS
         UHsXwmGm+67CDi3vJZQwtiyvQ1gMERbYb5Kp4hx9gX+wJmRPfJl8bNPq/5R/AHmV1wkE
         OgMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757875117; x=1758479917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmfHFaXqb9ZzUD+RZliVJ8/36Tz/7f3S59GCTXypMAY=;
        b=J+pZuqRvliUSe22XEVqi51wLnPGws6k3s6s6jJ0PmJNBy+PdKl5UwGX3NlwXKEtxH6
         g+ZX3hCuEZTXk19ge57xUwtHOx1DCU09dp7/qrPYECn+SAQ3evNpw2PGZmsEhSFQeLQi
         fcwRYPCTA5TMQRsTH2snDOOIkf+mw12smCTrPJG1KjAgQo88qGGaBy8i2G+BRevblBxu
         1GIwHrUNWlb5zDisHrUusCatUaH5fUJqKz/h3jHJjGjZkcGHCxJuMGR0mdh7v3ZA1pkQ
         TpqfylN8LXjn31kxv4SghE1WecFRO+iNifjWKOyAcW/t+CBq37k86ymDLRVzVk5V/MlW
         roMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXcgv9Na0eSGdJ6rAAaGtAML3c3RPZT2hjPZENHmRJ+8wHcduGHj86C3p5/9TR9aoFQdRPe@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzwnVzHbBjGx5QeSIcGl3Y6YMtMkilCOWZtPQKckzyAeH8Fkwup
	bKvrgh+wOPs5pqixvufriWbBUYi/Cwkqk+ROSPMt7sO980NKBNJm1vWn/84HomqBkSEtXG2Az7A
	UZbGsK91RuEgT4Qz8fRV0/tU6RLGSze4mjDghoOwZ
X-Gm-Gg: ASbGncul8FD5JFVACDRFsN0yqO1BKysmFeh7eqnaVOWHd2G1vXBoWp88wYPi4bMrOUO
	X/+ETmCg0lqjdmWTBSigamkzCjZfRTyQPyQbykUi1Z6LqOiM/gi6cOEFNZlUpM53RgdseIl6Lor
	+aSMAv7rO/MIjox1TDKJ0SanmtatHM/NoMZ07Ueu7QU+AHTdalqKyCQ7vH1CkN3SrWD7M+Mf5Sa
	9IyjZeTivNB7PkGGm9kNQqBBpBMipUBl1nSFUzi8JwLo7X4JAQ=
X-Google-Smtp-Source: 
 AGHT+IFGFcEQTjK1ISM50tgjK7ZuUGkiiy5SwvXZn+1sHPdVpLrsPWWuD+S47libm7G3NjYZwQ3dZxles3bnTJ6enFA=
X-Received: by 2002:a05:651c:1687:b0:331:e799:978f with SMTP id
 38308e7fff4ca-34e31b9cc5amr24998481fa.8.1757875117044; Sun, 14 Sep 2025
 11:38:37 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
 <1757795591.523513612@apps.rackspace.com>
 <CALx6S34SYbYhNVHgGJP6+aGegiABy3KM4Ugx3yTLiye3hbAtrQ@mail.gmail.com>
 <1757872814.374919035@apps.rackspace.com>
In-Reply-To: <1757872814.374919035@apps.rackspace.com>
Date: Sun, 14 Sep 2025 11:38:25 -0700
X-Gm-Features: Ac12FXzry_yLZLvHfeNQ0uQSA_wudmBoL09TNVlCy0Ko56rZ0mQJ1OIAKR25JuA
Message-ID: 
 <CALx6S373gSj85q=wdQ9w2UEPrTphrP+wVi6yXEKABQYsCChi6g@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Cc: Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: 6UREMQSMP7Z6ZKFYFY67I4QSFDKR32HL
X-Message-ID-Hash: 6UREMQSMP7Z6ZKFYFY67I4QSFDKR32HL
X-MailFrom: tom@herbertland.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: XDP2 is here - from one and only Tom Herbert (almost to the date,
 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CALx6S373gSj85q=wdQ9w2UEPrTphrP+wVi6yXEKABQYsCChi6g@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Tom Herbert via Cake <cake@lists.bufferbloat.net>
Reply-To: Tom Herbert <tom@herbertland.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBTZXAgMTQsIDIwMjUgYXQgMTE6MDDigK9BTSBEYXZpZCBQLiBSZWVkIDxkcHJlZWRA
ZGVlcHBsdW0uY29tPiB3cm90ZToNCj4NCj4gVG9tIC0NCj4NCj4NCj4NCj4gV2VsbCwgd2UgbWF5
IGhhdmUgIHRvIGRpc2FncmVlIG9uIHdoZXRoZXIgZUJQRiBpcyBhIGdvb2QgbGFuZ3VhZ2Uvc3lz
dGVtIGZvciB3cml0aW5nIG5ldHdvcmtpbmcgc3RhY2tzIG9yIGludGVyZmFjaW5nIHRvIGhhcmR3
YXJlIGRldmljZXMuDQoNCkRhdmlkLA0KDQpUbyBiZSBjbGVhciwgWERQMiBpcyBOT1QgZUJQRi4g
TmVpdGhlciBpcyBpdCBEUERLIG9yIFA0IG9yIGFueSBvdGhlcg0KZXhlY3V0aW9uIGVudmlyb25t
ZW50LiBOZWl0aGVyIGlzIGl0IGEgZG9tYWluIHNwZWNpZmljIGxhbmd1YWdlIGxpa2UNClA0IG9y
IFJlc3RyaWN0ZWQtQy4NCg0KSXQgSVMgYSBwcm9ncmFtbWluZyBtb2RlbCBhbmQgQVBJIHRoYXQg
YWxsb3dzIGRhdGFwbGFuZSBjb2RlIHdyaXR0ZW4NCmluIHRoZSBsYW5ndWFnZSBvZiB0aGUgdXNl
cidzIGNob2ljZSBhbmQgY2FuIGNvbXBpbGUgdG8gdGhlaXINCmRpZmZlcmVudCB0YXJnZXRzIGlu
Y2x1ZGluZyBEUERLLCBlQlBGLCBQNCwgRlBHQSwgZXRjLiBJZiB3ZSBnaXZlIHRoZQ0KdXNlciBj
aG9pY2VzIGFib3V0IHRoZSBmcm9udGVuZCBsYW5ndWFnZSBhbmQgYmFja2VuZCB0YXJnZXRzLCB0
aGVuIGFsbA0KdGhlc2UgcGVkYW50aWMgZGViYXRlcyBhYm91dCBlQlBGIHZzLiBQNCB2cy4gRFBE
SyB2cy4gd2hhdGV2ZXIgcHJldHR5DQptdWNoIGJlY29tZXMgbW9vdC4gQWxzbyB0aGUgcHJvc3Bl
Y3Qgb2YgdXNlcnMgaGF2aW5nIHRvIG1haW50YWluDQptdWx0aXBsZSBjb2RlIGJhc2VzIGJlY2F1
c2UgdGhleSBuZWVkIHRvIHJ1biBpbiBkaWZmZXJlbnQgZXhlY3V0aW9uDQplbnZpcm9ubWVudHMg
Z29lcyBhd2F5Lg0KDQpUb20NCg0KPg0KPg0KPg0KPiBJbiBjYXNlIEkgd2Fzbid0IHBhcnRpY3Vs
YXJseSBjbGVhciBhYm91dCBlQlBGLCBoZXJlJ3MgYSBzdW1tYXJ5IG9mIHRoYXQgY29uY2Vybi4N
Cj4NCj4gUGVyaGFwcyB0aGUgYmlnZ2VzdCBkcmF3YmFjayAoYmV5b25kIHRoZSBmYWN0IHRoYXQg
aXQgaXMgYSB0ZXJyaWJsZSBsYW5ndWFnZSkgaXMgdGhhdCBpdCdzIGJhc2ljYWxseSAic3VnYXJl
ZCBrcmV0cHJvYmVzIiAxKSBpdHMgImFic3RyYWN0aW9ucyIgYXJlIHdoYXRldmVyIHRoZSBMaW51
eCAob3Igb3RoZXIgT1MpIGtlcm5lbCBjb2RlIGRlc2lnbiBhbGxvd3MgdG8gYmUgImV4cG9ydGVk
IiB3aXRoaW4gdGhlIGtlcm5lbC4gWW91IGNhbid0LCBmb3IgZXhhbXBsZSwgZG8gY28tcm91dGlu
ZXMgb3IgSVBDIHRoYXQgd291bGQgYmUgYXBwcm9wcmlhdGUgZm9yIGEgY2xlYW4gbmV0d29yayBz
dGFjay4gSnVzdCB3aGF0IExpbnVzIGFuZCBjcmV3IGRlY2lkZSB0byBleHBvcnQgc3ltYm9scyBm
b3IuIDIpIFNhZGx5IGVCUEYgaXMgcHJpbWFyaWx5IG1haW50YWluZWQgYnkgZm9sa3Mgd2hvIG1l
cmVseSB3YW50ICJob29rcyIgaW4gdGhlIGtlcm5lbCBmb3IgcGVyZm9ybWFuY2UgYW5hbHlzaXMu
ICh0aGUgb3JpZ2luYWwgQlBGIHdhcyBmb3IgcHJvZ3JhbW1pbmcgcGFja2V0LXByb2Nlc3Npbmcg
cGlwZWxpbmVzKS4gSXRzIHVzZSBmb3IgZGVzY3JpYmluZyB0aGUgaW1wbGVtZW50YXRpb24gb2Yg
ZnVsbCBuZXR3b3JrIHN0YWNrcyBpbiBhIGNsZWFuIHdheSwgZG93biB0byBhbmQgaW5jbHVkaW5n
IHRoZSBzZW1hbnRpY3Mgb2YsIHNheSwgODAyLjExIGRldmljZXMgb3IgODAyLjIgZGV2aWNlcyBp
cyBhIG1hc3RlcmZ1bCBoYWNrLCBidXQgdmVyeSBtdWNoIHRpZWQgdG8gdGhlIExpbnV4IGtlcm5l
bCdzIGNvbnRyb2wgc3RydWN0dXJlIHF1aXJrcy4NCj4NCj4NCj4NCj4gQXMgYSBndXkgd2hvJ3Mg
YmVlbiBkZXZlbG9waW5nIG9wZXJhdGluZyBzeXN0ZW1zIHNpbmNlIDE5NzAgc3RhcnRpbmcgd2l0
aCBNdWx0aWNzIGFuZCBuZXR3b3JraW5nIHByb3RvY29sIGltcGxlbWVudGF0aW9ucyBzaW5jZSAx
OTc2LCBJIHdvdWxkIG5ldmVyIGhhdmUgdGhvdWdodCB0aGF0IGVCUEYgb3IgYW55IGxhbmd1YWdl
IGRlc2lnbmVkIHRvIGtsdWRnZSB3aXRoIHJhbmRvbSBBUElzIHByb2R1Y2VkIGJ5IGEgZ3JvdXAg
bGlrZSB0aGUgTGludXggS2VybmVsIGRldmVsb3BlcnMgYXMgYSBiYXNpcy4gVGhlcmUgYXJlIHNv
IG1hbnkgYWx0ZXJuYXRpdmVzIHRoYXQgYXJlIGZhciBiZXR0ZXIgdGhhdCB3aGF0IGVCUEYgaXMu
DQo+DQo+DQo+DQo+IEdvIGFoZWFkIGFuZCBkbyB3aGF0ZXZlciBleHBlcmltZW50IHlvdSBoYXZl
IHBsYW5uZWQuIFlvdSBkb24ndCBuZWVkIG15IGFwcHJvdmFsIHRvIGJhc2UgaXQgb24gZUJQRi4N
Cj4NCj4NCj4NCj4gTm93LCB1bmRlcnN0YW5kIHRoYXQgSSdtIG5vdCBzYXlpbmcgRFBESyBpcyB0
aGUgYW5zd2VyIGVpdGhlciAobm9yIGlzIGlvX3VyaW5nKS4gSXQncyBnb3QgYSBudW1iZXIgb2Yg
ZGVzaWduIGRyYXdiYWNrcywgdG9vLiBUaGUgbWFpbiBiZW5lZml0IGlzIHRoYXQgaXQgcnVucyBh
bGwgdGhlIGNvZGUgaW4gaXNvbGF0aW9uIGZyb20gdGhlIG1vbm9saXRoaWMga2VybmVsIGNhbGxl
ZCBMaW51eCwgYW5kIGFsbG93cyByZWFsLXRpbWUgZXhlY3V0aW9uIGluIHJpbmczIHdpdGggaW50
ZXJwcm9jZXNzb3IgY29tbXVuaWNhdGlvbi4gSSB3b3VsZCB0aHJvdyBtb3N0IG9mIHRoZSByZXN0
IG9mIERQREsgYXdheS4gSSB3b3VsZCB0aGluayB0aGF0IHlvdXIgZ29hbHMgd291bGQgYmUgYmVz
dCBzdWl0ZWQgYnkgc3RlcHBpbmcgYmFjayBhIGJpdC4NCj4NCj4gRGF2aWQNCj4NCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
