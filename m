Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359E1B8941
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 22:08:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B69DA3CB38;
	Sat, 25 Apr 2020 16:08:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587845285;
	bh=PIKpAtQWgJp01FFvKraYvo0Gzh3sfQ2AbcNk1FrSRE0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L4pwc9rZhwZMo1vavqeqEh+Nf65aRYXwZPO2XTL5qUi2b1zNoCyrZZ+RM0qarX4t/
	 iYR40IDAk4eNVHVV7GRnqOTPE6T6OPo9cIrA8WNEFe7Wusr9bELZTyoIh4WNePGAuV
	 xZ6Z/Knko+HqULlb6bcCc7GvvjyNivXz9F6jmEYOiYRV1WzD9G0mHgPCEEzdTxhw2R
	 wcL9jZAhddHd8IsXhdxWUebRg53POZBgebSSNRqQp9L29+5s9FlvW3TuumCXMSJ7dB
	 Eq2rY9lTZjaNAxpVqeHx0yqoddBDHIjfstH7y+KRe2wltVscm5cyX7jOx6cRA2KJbA
	 CY3mQDwXiUsHQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 286823B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 16:08:04 -0400 (EDT)
Received: by mail-il1-x130.google.com with SMTP id m5so4604632ilj.10
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 13:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7fCcglbMqTAOSZlLfd3vM9QuYb88nwMgRERXl6JMWKw=;
 b=s6W384igjZ7CKxHOxjb6iMwEQ+hi0HLloQX518hEqwhBgaLgoz8YQg/VEDUhqbWaAX
 4BQZIBMDieXzyvvvgOKVHUxSdAyTUgCRZMcutPgj5VGcjxcwaepwYczmVK+Q0nbZ8MaB
 iv8YhHdlCqLf5Gb7BAoO6DeLv6Gu+W8SCPXU0uGEYgdwKH+Xxsow/7EMD5299gvbNVn9
 ntjHQUOV7ZndDNPZ0p+NK+o6AEvR2EFnH+t/L31+K+sGy2PZTRcEgEqny4VxMuWfzJui
 dgewH72v3ZBoomc4ZJK9H4tff0UpamDv8/wA2j4or/qgsaUVZuhF+YB9VWdr9l62rRs8
 AClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7fCcglbMqTAOSZlLfd3vM9QuYb88nwMgRERXl6JMWKw=;
 b=ta7X4HIEnt65GJpgS8cZ6skT3BHyXNnioosyQL1o5dGSbBMpoZzFWn/92dB6rHUEZu
 Bc1s2xRWsR28a4kNyduPpcAV2fbQYqTFyv9BavQXX9DFCCdenOp9nlswKQLdOkLjGt6V
 9aqI9HeFwmBrRaObklEAmkInIWYtDz+4nOSeJ5SvoE+1DELGSYJCP4l6e/BnXhOA6em0
 OiJuTrJijI7IaN5wLlVsxmuvaSiwTmNLe07QFJClwb8kpPqhvSUyHHJgF0imRymoifB5
 Piu9q+JtiYjtJdeQBXze7zwsMis6bY7vsjIYrrpK0axXtBE541cTAgXZKnadKE/P5qXS
 rgGw==
X-Gm-Message-State: AGi0PuacnO8HYy8FHFYMNnWufk14Q9KYUPvtrQ8+aIt5USMWHRi/gaOV
 JU3m08S1vgaV/Fx2ruxTiXxbuMuNcKk9qdi+uF4=
X-Google-Smtp-Source: APiQypJ9FXRhCVlAB7bcs5T87XFON6M5on27fweEwX7tcO7f2S3D8OLlzqCxOlfmKON47Iz1zSxnYTIYMe+18/CGRBw=
X-Received: by 2002:a92:77c4:: with SMTP id s187mr8483689ilc.45.1587845283695; 
 Sat, 25 Apr 2020 13:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw71YdABJPeRkFDrzLGY2PtWy-zqaLoGrnFWuFhOPz48xg@mail.gmail.com>
 <20200424120317.4d3d3e98@rellim.com> <20200424120423.1f57def6@rellim.com>
 <CAA93jw7e6k4sxh2+5H-dSBmdUkA53=VxJu7FmTdrSKTsbP0rWg@mail.gmail.com>
 <20200424121344.2bc8e62c@rellim.com>
 <CAA93jw5i7ccwc3VwSKiNk9XL-FXHgwznxzCHUDytpHFDsNGfoA@mail.gmail.com>
 <20200424123005.64aef3bf@rellim.com>
 <CAA93jw5xygaNsqYb9z9cF00TpH=8cOSDzFGZJxrDW-SkQFey4g@mail.gmail.com>
 <20200424195745.72d725bd@rellim.com>
 <CAA93jw5DDgG4Csjd8B7YfOUMnsH5FYiAfd=gNNCOYD2-sGt9Dg@mail.gmail.com>
 <943FC0FD-211F-4ACD-9AF2-9E064408289A@gmail.com>
In-Reply-To: <943FC0FD-211F-4ACD-9AF2-9E064408289A@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 25 Apr 2020 13:05:26 -0700
Message-ID: <CAA93jw5wK_MG2ZkZBvZPyPRnvsJ2_A+p35K1cHFwDFKAjTvRSw@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] cake on linux 5.6 32 bit x86 might be broken
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGh4IEknbSBhbiBpZGlvdCBzb21ldGltZXMuCgpPbiBTYXQsIEFwciAyNSwgMjAyMCBhdCAxOjAw
IFBNIEpvbmF0aGFuIE1vcnRvbiA8Y2hyb21hdGl4OTlAZ21haWwuY29tPiB3cm90ZToKPgo+ID4g
T24gMjUgQXByLCAyMDIwLCBhdCAxMDowOSBwbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwu
Y29tPiB3cm90ZToKPiA+Cj4gPiAgICB+IyB0YyBxZGlzYyBhZGQgZGV2IGV0aDEgcm9vdCBjYWtl
IGJhbmR3aWR0aCAxNjBtYnBzCj4KPiBGb3IgdGMsIHRoZSAibWJwcyIgc3VmZml4IGlzIGludGVy
cHJldGVkIGFzIG1lZ2FCWVRFUyBwZXIgc2Vjb25kLiAgRm9yIG1lZ2FCSVRTLCB1c2UgTWJpdC4K
Pgo+IFRoZSBvdXRwdXQgYW5kIGJlaGF2aW91ciBpcyBjb25zaXN0ZW50IHdpdGggdGhhdC4KPgo+
ICAtIEpvbmF0aGFuIE1vcnRvbgoKCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6Ro
dApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00
MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
