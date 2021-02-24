Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 851F3323535
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 02:29:44 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B38C63CB42;
	Tue, 23 Feb 2021 20:29:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614130179;
	bh=whQOWAnbhfeTXUvmyKABVXSqJ6+5FfksCZ8HY387FQI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YL8wZdSgk0Sbqq1Pj+gdjMuKlZq3iqff2iq3EIXn8seoYp8YuN9I1bEsyMHMIHKY2
	 pshC2egutSn3EJ/wu4WyZZdnePdcb5/zZR4+N/8l1Nuy0oHVgRdH8q+dBWFkwC0Rtr
	 uOVQ2GeIWxNrN63MofH4pZMr/PgSgaEuIkxKHBMMResTdhaBkqNTLSIdDt7VBKpunl
	 tqZPAd5rXi3BjkYrad+cbnikiuDJVLRDlF+xodXQnAmqu4AVmBvPKn4nB240ip9cvZ
	 Wk8vGSA5G545HZ11Qgg/6F6ATPve1OCo4rXaEjze+PIPwy4Uruy0P+pg6svF/oEyks
	 tRqX67ZXWt6PA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CF8D43B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 20:29:37 -0500 (EST)
Received: by mail-pf1-x42a.google.com with SMTP id q20so215293pfu.8
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 17:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jdA3kyfsYzL1jdhBMZgTnSS/xY/8Sku1Y0z09QGfNPM=;
 b=Nk6zu+NK7hAnuphOLsQIBI/Oi37636Ua1Y5ug1rXNBNxDbN8c7j1u1NCMZvKp5w/xk
 kJ4CT7edcAEbhXb5CbFw0gkjroNJ0BFP+mlOWhjOi2JRzmZy2LllJn4tzhY942+aZ+NZ
 pV6hKrrcon67x5TMJl4HB2QA2Az5mZGLiWZoxPdIVvEPFS66YeBdCb4f8Bzs9Bia6xnj
 Kg/QvNxe0Sm/yPrKldubT20LLYrjpUdEz21txMnxNkSye+qBEXWFUgrOGwqZMAGEWFc/
 2B+SjsqQReGMQHGleueVGXN3t/eb5WoNXtke+ArFVhfxU2gsQ6spoBD5JsndOhmVSlIl
 zWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jdA3kyfsYzL1jdhBMZgTnSS/xY/8Sku1Y0z09QGfNPM=;
 b=Q4IcIEql6YyaPN+6oOsip27QWeX4ZTEqPrHT+F0V2mzrcwVZY4WgMqZPcIVdlKAfbz
 AFLbgXQ2pfz9FIuxibHtbntgpZFYdZkMNh+4kQGKB1dlA+Gtkv2y3DB+B5qe3LUvi8X4
 NoBosi8daIQ3YsWG16IsQjd5NCQm/lCVrr5QJNdNEoVJB9GZ7RUykMlFIYTDlVH2Gsn0
 G/1HAdZTl5YIT7kVeTaudMEQbjuJvJkJjC/SCoD6d8kR6okLERmlmHjsMurtPSEv0XSs
 auWKvqI+sCXZH3XUDDCxP+dhfVpOjWq9RUhV5E7kRPm7y3TqLhHUHGnsD0VRixEJLLS6
 SNtA==
X-Gm-Message-State: AOAM530J2AAyr6TXdnOUfq9QWqwbCGqs8EWZUBfRKfizZanQvtL0MyF4
 VR/gHKDjjlTQDHen3c/9XcdOVw==
X-Google-Smtp-Source: ABdhPJx0vVArd+P7hqxhK8Z3IGTIv5bnQ2Vj778xi9wu8FIy8E4kOYEcnv0u6ywPQdSQ6zXXkhlWZw==
X-Received: by 2002:a63:1e07:: with SMTP id e7mr25968974pge.376.1614130176849; 
 Tue, 23 Feb 2021 17:29:36 -0800 (PST)
Received: from hermes.local (76-14-218-44.or.wavecable.com. [76.14.218.44])
 by smtp.gmail.com with ESMTPSA id p1sm374119pjf.2.2021.02.23.17.29.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Feb 2021 17:29:36 -0800 (PST)
Date: Tue, 23 Feb 2021 17:29:33 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Dave Taht <dave.taht@gmail.com>
Message-ID: <20210223172933.415121cd@hermes.local>
In-Reply-To: <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4?= =?UTF-8?B?cmdlbnNlbg==?= via Cake
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAyMyBGZWIgMjAyMSAxNzoxNDozMSAtMDgwMApEYXZlIFRhaHQgPGRhdmUudGFodEBn
bWFpbC5jb20+IHdyb3RlOgoKPiB3b3csIHRoYXQgaXMgKHByZWRpY3RhYmx5KSBtaXNlcmFibGUs
IGV2ZW4gd2l0aCBjYWtlLiBUaGUgb25seQo+IHNvbHV0aW9uIHRoYXQgaXMgZ29pbmcgdG8KPiB3
b3JrIGlzIHRvIHNvbWVob3cgYWN0aXZlbHkgbW9uaXRvciB5b3VyIGxpbmsgcXVhbGl0eSBhbmQg
YWRqdXN0IGNha2UKPiB0byBzdWl0LiBPciB3ZSBjYW4gc3RhcnQgdHJ5aW5nIHRvIHVzZSBrYXRo
aWUncyBwYXNzaXZlIHBpbmcgdG9vbHMuCj4gCj4gT24gVHVlLCBGZWIgMjMsIDIwMjEgYXQgMToz
MCBQTSBOaWxzIEFuZHJlYXMgU3ZlZSA8bWVAbG9jaG5haXIubmV0PiB3cm90ZToKPiA+Cj4gPiBU
aGFua3MgZm9yIHRoZSB0YWxrIERhdmUgYW5kIGl0IHdhcyBuaWNlIG1lZXRpbmcgeW91IGFsbCEK
PiA+Cj4gPiBOZXZlciByZWFsbHkgZGlkIG11Y2ggaW4gdGhlIHdheSBvZiBGbGVudCB0ZXN0cyBh
ZnRlciBtb3ZpbmcgZnJvbSBBRFNMIHRvIFRlbGVub3IncyAid2lyZWxlc3MgYnJvYWRiYW5kIiBh
a2EuIDRHLiBTbyBJIHJhbiBzb21lIGFmdGVyIGxlYXZpbmcgdGhlIG1lZXRpbmcsIHdpdGggQ0FL
RSBvbiBvciBvZmYsIGFuZCBsZXQgbWUgdGVsbCB5b3UgLSBpdCdzIHRlcnJpZnlpbmcsIDRHIHN1
Y2tzIGluZGVlZC4sIG5vdCBhcyBiYWQgYXMgRFNMIHdpdGhvdXQgU1FNIG1pbmQsIGJ1dCBzdGls
bAo+ID4KPiA+IEF2Zy4gbGF0ZW5jeSB3aXRob3V0IFNRTSBhdCBzb21lIHBvaW50cyBjbG9zZSB0
byA4MDAgbXMgb3IgYWJvdmUuIEhhZCB0byBzYWNyaWZpY2UgYSBsb3Qgb2YgYmFuZHdpZHRoIHRv
IGdldCBpdCB0byBzYW5lIGxldmVscyB3aGVuIGRvaW5nIFJSVUwgdGVzdHMuCj4gPgo+ID4gRHVt
cGVkIGFsbCB0aGUgZmlsZXMgb3ZlciBoZXJlOiBodHRwczovL2RsLmxvY2huYWlyLm5ldC9CdWZm
ZXJibG9hdC9UZXN0cy8KPiA+IE9oIGJ0dyBJIHByb21pc2UgSSdsbCB0cnkgdG8gbm90IGJyZWFr
IHRoaW5ncyB3aGVuIHlvdSBuZWVkIHRvIGFjY2VzcyBzb21ldGhpbmcgb24gdGhhdCBib3ggYWdh
aW4gRGF2ZS4uLgo+ID4KPiA+IEJlc3QgUmVnYXJkcwo+ID4gTmlscyAgCj4gCj4gCj4gCgpCZWNh
dXNlIGNhYmxlIHdhcyBkb3duLCB1c2VkIGEgYnVybmVyIFNJTSBhbmQgYSBzcGFyZSBwaG9uZSBv
dmVyIExURSBmb3IgYSBkYXkuCkFuZCBhZ3JlZSBpdCBpcyBhd2Z1bC4gQ291bGRuJ3QgYnJpbmcg
bXlzZWxmIHRvIHJ1biBGbGVudCBvdmVyIHRoaXMgcGlnIHdpdGggd2luZ3MuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK
