Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4715F6248
	for <lists+cake@lfdr.de>; Thu,  6 Oct 2022 10:06:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0E4173CB39;
	Thu,  6 Oct 2022 04:06:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665043611;
	bh=okVqZ+POp0LoQd3Sdq5Et3SPGh2PN6JwFRtpORdKtU4=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Ti2r0J448wvWTsbYWCIGl2Xrq7msVbGdd/6dhfjitU0TxoDYd9a0leZM0gHVhmz7M
	 IGZRafsLbiSmA1jLOWJHGINtoNbTNhb2I1G7Y+w6t43QJi12fKXq2UdNb5hsxJbKXX
	 wM8iVJpAIycAryEWP25QyaTR8QAUzNbqLEWo1d90Ez4DcUXXi8wlRLV4HCv1TbsbLQ
	 mJQQFPBlknlj5byFRQD1yEoc+P2Mg7w8arJSwxUx3lkT6ulapBdrYxhaGnn9lM0zlU
	 /XgZQZVHZh1Ozu5cGTUA5YVz4Y6CWFdr5f7UqbGJlltx8rjH8IfyfJ3lHrhspfgUuS
	 uTNqZAKBWRn+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1BDD93B2A4
 for <cake@lists.bufferbloat.net>; Thu,  6 Oct 2022 04:06:49 -0400 (EDT)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-1322fa1cf6fso1366182fac.6
 for <cake@lists.bufferbloat.net>; Thu, 06 Oct 2022 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.org; s=google;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date; bh=FqN1qnonFZwcmtey4fbqddlbJfOy+NkUaH6YqoyjaKc=;
 b=Z9BBShTNeIfp/zuuQMXa64w/y83HL/i0Ih523PZxo0u6zgHR8gwMrheJl55Q/SRaMk
 LT0O/pXwXIzVFBf0Ar5yACtQLAKkE3/IEk+s8KsTmV2MbrWcS7tHfA0S0L5G948N/2Zp
 Ru0gLIHsRVpNq7YNSBvdTPT3n9Ol9VRI5x3hg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=FqN1qnonFZwcmtey4fbqddlbJfOy+NkUaH6YqoyjaKc=;
 b=GqxVk8fkkAfQ90E+COurj526pZyzmAbAtxEZfEAwS+xQ0q4uBZGAKNTk3SBKTtqFd4
 k9YUnkqpZvHtYY0NtZhzKJmwHqMrhnoJtutSdJ9WQ7mXr5pDOTK+1iotgm5ieV/fEts+
 q4b7LztrvdZTz3fa7sYOIDd3xQoGbl1ax7DC2Rj5H43DFeJLzCaR6HcZUALO6EFCmbps
 XYD6oGvogaPVQpS8qIaGBLbOlbWKCgAXA8axhc/kiG2J08CI8GjP2hlkiJcNiZwsGHDK
 6FN//kGNKcD6SN+FnL/NcFJo21raDkTgQObtgB8y/dsqEbpSLwekIQCNyeVjWeCRkFK9
 HwGA==
X-Gm-Message-State: ACrzQf319cF4kOadPLVs/k8st3zrQTHaUg1DaXA1YK1l+b+uGg3XeBV+
 T5lB1b+rTZS1mFEcW4J+oqWTVJL8b8PblJxAsSakERYEP6c=
X-Google-Smtp-Source: AMsMyM752c75OKCrKoyoOcvdfK9CqfjX3q1iaGKdqpWg9YOSRDUiiT2tNiJMCuL9SoUXPhwwO+BLBBhMIB9OevJh63w=
X-Received: by 2002:a05:6870:f289:b0:12c:22bf:1535 with SMTP id
 u9-20020a056870f28900b0012c22bf1535mr1956815oap.228.1665043608084; Thu, 06
 Oct 2022 01:06:48 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 6 Oct 2022 16:06:37 +0800
Message-ID: <CAMVG2suqK3DOrmE6vn6RpbdddOjVQxV-UF-8dxHRdsh_-5E=-w@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] WiFI/shared media and bursting
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Daniel J Blueman via Cake <cake@lists.bufferbloat.net>
Reply-To: Daniel J Blueman <daniel@quora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwgVG9rZSBldCBhbCwKCkdpdmVuIHZhcmlvdXMgY2hhbGxlbmdlcyBicm91Z2h0IGJ5
IFdpRmkgKGFuZCByZWxhdGVkIHJhZGlvIGZyZXF1ZW5jeSBzeXN0ZW1zKToKMS4gdGhlIG1heGlt
dW0gdGhyb3VnaHB1dCB2YXJpZXMgYnkgbWVkaWEgYXR0ZW51YXRpb24gKGVnIHJhbmdlKSBhbmQK
ZGV2aWNlIGNhcGFiaWxpdHksIGFsbCBlbHNlIGFzaWRlIChpZSBpc29sYXRlZCBlbnZpcm9ubWVu
dCkKMi4gdGhlIHVwc3RyZWFtIGFuZCBkb3duc3RyZWFtIHBhdGhzIHNoYXJlIHRoZSBzYW1lIG1l
ZGlhCjMuIHRoZSBtZWRpYSBpcyBzaGFyZWQgd2l0aCBvdGhlciBkZXZpY2VzIChpbmNyZWFzaW5n
IHRoZSBub2lzZSBmbG9vcikKYW5kIG5ldHdvcmtzIGNhdXNlIDgwMi4xMSBDbGVhciBDaGFubmVs
IEFzc2Vzc21lbnQgdG8gZGVmZXIKdHJhbnNtaXNzaW9uCgpGb3IgdGhlc2UgcmVhc29ucyBhbnkg
YmFuZHdpZHRoIGVzdGltYXRpb24gKGF1dG9yYXRlKSBtYXkgYmUgdmFsaWQKb25seSBmb3IgMTBz
IG9mIG1pbGxpc2Vjb25kcy4KClRoZXJlZm9yZSBmb3IgYSBnaXZlbiBkZW5zaXR5IG9mIGFjY2Vz
cyBwb2ludCBkZXBsb3ltZW50LCB0aGVyZSBzaG91bGQKYmUgYSBjb25zZXJ2YXRpdmUgdGhyb3Vn
aHB1dCBsb3dlciBib3VuZCBjb3ZlcmluZywgZm9yIGV4YW1wbGUgNDBNYnBzCihwZWFrIHVuaWRp
ciB3b3VsZCBiZSAxMjBNYnBzKS4gU2luY2UgdGhpcyBpcyBzaGFyZWQgYW1vbmcgdXBsb2FkIGFu
ZApkb3dubG9hZCwgb25lIGNvdWxkIGRlcGxveSBDQUtFIHdpdGggYSBmaXhlZCAyME1icHMgbGlt
aXQgZm9yIHVwbG9hZAphbmQgMjBNYnBzIGZvciBkb3dubG9hZC4KCkEgc2Vjb25kIGFwcHJvYWNo
IG1pZ2h0IGJlIHRvIGhhdmUgYSBUQkYgb3IgcmVsYXRlZCBzY2hlbWUgdG8gYWxsb3cKcGVyLXN0
cmVhbSBidXJzdHMsIGxpbWl0aW5nIHRoZW0gdG8gMTVNYnBzIChvciBsZXNzKSBzdGVhZHktc3Rh
dGUKYWZ0ZXIgYSBidXJzdCBwZXJpb2QuIFRob3VnaCB0aGlzIGRlZmVhdHMgb25lIGFzcGVjdCBv
ZiBDQUtFLCBJJ20KdXNpbmcgdGhpcyBhcHByb2FjaCB0byBhdHRlbXB0IHRvIG1hbmFnZSBsYXRl
bmN5IGJldHRlci4gSXQncyB3b3J0aApub3RpbmcgdGhlIExpbnV4IGRyaXZlcnMgSSdtIHVzaW5n
IGFyZW4ndCBhdGgxMGsgb3Igc3VjaCwgc28gZG8Kb3Zlci1idWZmZXIuCgpEb2VzIGFueW9uZSBo
YXZlIGFueSBhZHZpY2Ugb3IgZXhwZXJpZW5jZSBvbiB0aGlzIG9yIGFub3RoZXIgc2NoZW1lCndp
dGggV2lGaSBvciByZWxhdGVkPwoKVGhhbmtzLAogIERhbgotLQpEYW5pZWwgSiBCbHVlbWFuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK
