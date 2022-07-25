Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE3E5801F0
	for <lists+cake@lfdr.de>; Mon, 25 Jul 2022 17:33:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D53423CB38;
	Mon, 25 Jul 2022 11:33:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1658763233;
	bh=B8Jap8PiWhyyHVLWJj4/lf5zmWodvZwfleyjlqDbnO8=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=M/V+ADKbXS/34QAgRa8ZdLYNY/JuDVobgscuqSlGQ9PWQkEwWIkNqeCtR3RYoMeKT
	 WKYvWPfs1To9bykX8EiGGIGRi+JzcqMMTevN3u6DD4/AHc5G6h18fz/gOjdaFwgXFj
	 HdHZhjOZ7vgcTA6VbbIoxNgwnbZPfZzrOGDi7BbwBVGL21x8kg6x5cHjfHMfL9jBXP
	 Su7JaMoPcYvTHqZp0D4KKwmFVVOu+/5J6VwEqL8VNXgIXqK+BlwymFhWc0Ga/x+WX0
	 hoDm0vwTlnZIGoUhCNEzef6LG4PP/mM5acqN23pvOu3RlygNdZQjwHEjEfJZTspMRJ
	 Lj/T0nl8or8eg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 21BCB3B29E;
 Mon, 25 Jul 2022 11:33:52 -0400 (EDT)
Received: by mail-wr1-x436.google.com with SMTP id u5so16517802wrm.4;
 Mon, 25 Jul 2022 08:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=aIzSqqbnAFw4qPapD38kKej1Ubuz5IfP3E2jtJchU/8=;
 b=CxdtiZWHzBdKvoC3dqSyOTfHL+GufTy9qYC3mBnUeIZK7HcAbO6tQqGTl6FdUKMTXh
 d9NEMZ/CED2PkyRiTpWbqSE6qROAxj6dfOjh0HZ1hBcPtasT6BLmoCy7jU5eU1cHvAqk
 8/5rn5AcKLwlbxyh32hcgkGzaRJ/PqtbR0v9rQ6BnuQiGGToOohpxBHl/gzQWlDOzXml
 UbN5JoJWIJyNcau5KYTlPp74xvfL0ZDHXvbjpvWCIWfDHBi30Pm20oH/YcnyUGHISFeh
 jtmxjOoB+BsT5jBfhmkc9Z6UUU5YLdXUVib+6y5afVZLwz8iujszms4BbYzwEkktRDje
 Yf+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=aIzSqqbnAFw4qPapD38kKej1Ubuz5IfP3E2jtJchU/8=;
 b=veQmN8Lzjl7VpTADrIbJIOEY/H0wMirkq+VWr2sXtsaKoAVRFyerifq48CeXwnxGY5
 PBHMOjEDMTz0VN96CMG9Xq+4gOuB1VZ2wMC5ZRx02Ydz6YeFVM4AfUIAuht8P8fuSTU2
 LhrAyT62FHokpXDq1gEJNAFUa6aH6xlWWGioaVSHFrAYlDY0d0yueoxDj+lq6hhBiksS
 erV+BTmPG8RGgvjMxZW+cVI7r82CrxXdJdEHBbBKbugQvece5NvyK2rMSwlZS/OxTif9
 m318vSisUyEQaAEdZw7TJKCn4VrWdQBhNTvqCrDY3SPDKF16P5bfN8KNyz+12xxEO/AR
 n65w==
X-Gm-Message-State: AJIora8vkKoQxrsVbjCo7YJPo/GXn42YNZ6BSAf6ehJY+TnOkNHoQZcA
 TYlAsQsuXyplkrvp0V3fsZU2fTwgg1pGeKQUH2QZKYKvB3ws8A==
X-Google-Smtp-Source: AGRyM1t1qyPVnKK5gWBHYRfxuZ80pBCr5qIkTrnZJRG9LGmiyrZcp5u+kcX3pCt8qyM/PcXRZleepo/zq/qKbYE/Apg=
X-Received: by 2002:adf:df8e:0:b0:21e:4f87:6b42 with SMTP id
 z14-20020adfdf8e000000b0021e4f876b42mr8163718wrl.5.1658763229739; Mon, 25 Jul
 2022 08:33:49 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 25 Jul 2022 08:33:38 -0700
Message-ID: <CAA93jw6sRuNMZMznsLkPjYO-wsZDuEFRuCuXe8tMDkuTTBVRyw@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] battlemesh conference sept 19-22 in Rome
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBhbSBnaXZpbmcgYSB0YWxrIHRlbnRhdGl2ZWx5IGVudGl0bGVkICJ0aGUgbWVzaHkgbWVzcyIu
IFRoaXMgaXMgYQpwcmV0dHkgZ29vZCB0ZWNobmljYWwgY29uZmVyZW5jZSBjb25zaXN0aW5nIG9m
IGEgbG90IG9mIGNvcmUgd2lmaQoob3BlbndydCksIGhhY2tlcnNwYWNlLCBhbmQgY29tbXVuaXR5
IG5ldHdvcmsgcGVvcGxlLCBhbmQgcnVuIG9uIHRoZQpjaGVhcCwgYW5kIG9uZSBvZiB0aGUgZmV3
IHJvdXRpbmcgaW50ZXJvcCBldmVudHMgdGhhdCBleGlzdHMuIEhvcGUgdG8Kc2VlIHNvbWUgb2Yg
eW91IGluIHBlcnNvbiEgKEluIHBhcnRpY3VsYXIsIHRoZXkgcmVhbGx5LCByZWFsbHkgd2FudCB0
bwpmaW5kIGEgc3BlYWtlciAtIG5vdCBtZSEgLSB0byB0YWxrIGRlZXBseSBhYm91dCBzdGFybGlu
aykKCkNhbGwgZm9yIFBhcnRpY2lwYXRpb24gc2VlOgpodHRwczovL3d3dy5iYXR0bGVtZXNoLm9y
Zy9CYXR0bGVNZXNoVjE0L1RhbGtfcHJvcG9zYWxzCgoKVG9waWNzOgoKV2lyZWxlc3MgQ29tbXVu
aXR5IE5ldHdvcmtzCk1lc2ggUm91dGluZyBQcm90b2NvbCBEZXZlbG9wbWVudApGcmVlIGhhcmR3
YXJlIGFuZCBmcmVlIHNvZnR3YXJlIGZvciBDb21tdW5pdHkgTmV0d29ya3MKQ29tbXVuaXR5IE5l
dHdvcmtzIHRoYXQgZGVwbG95IEZpYmVyLXRvLXRoZS1Ib21lIChGVFRIKSBuZXR3b3JrcwpUViB3
aGl0ZSBzcGFjZSBhcyBhIHByZWNpb3VzIG5ldHdvcmsgcmVzb3VyY2UgKHJhZGlvIHNwZWN0cnVt
KQpIb3cgdG8gb3JnYW5pemUgYSBkdXJhYmxlIGNvbW11bml0eSBzdHJ1Y3R1cmU/CkhvdyB0byBp
bnZvbHZlIG5vbi10ZWNobmljYWwgcGVvcGxlPyBUbyAiZGlnaXRhbCBzdGV3YXJkc2hpcCIgYW5k
IGJleW9uZD8KSG93IHRvIGRpc3NlbWluYXRlIHRoZSBzcGlyaXQgb2YgY29tbXVuaXR5IG5ldHdv
cmtzLCBrbm93bGVkZ2UgZXRjPwpDb25uZWN0aW5nIHJ1cmFsIGFyZWFzOiBjaGFsbGVuZ2VzIGFu
ZCBzb2x1dGlvbnMKUHVibGljIGZpYmVyIG5ldHdvcmtzOiBhcmNoaXRlY3R1cmUsIGZ1bmRpbmcs
IHByaXZhdGUgYWN0b3JzIGludm9sdmVkLCBvdmVyc2lnaHQKSW50ZXJuZXQgb2YgVGhpbmdzIChJ
b1QpIG5ldHdvcmtzIGFuZCB0aGVpciBpbXBhY3Qgb24gc29jaWV0eQpMb2NhbCBJbnRlcm5ldCBF
eGNoYW5nZSBQb2ludHMgKElYUHMpIGFzIGEgY29tbW9uIGluZnJhc3RydWN0dXJlCgoKCi0tIApG
USBXb3JsZCBEb21pbmF0aW9uIHBlbmRpbmc6IGh0dHBzOi8vYmxvZy5jZXJvd3J0Lm9yZy9wb3N0
L3N0YXRlX29mX2ZxX2NvZGVsLwpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==
