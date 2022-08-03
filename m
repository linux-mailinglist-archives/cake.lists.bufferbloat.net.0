Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B2E588521
	for <lists+cake@lfdr.de>; Wed,  3 Aug 2022 02:25:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 08A573CB42;
	Tue,  2 Aug 2022 20:25:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1659486331;
	bh=tAy03NaPb+bem3otxPFg8HhEKJVpvuVvGCah9nmdQ7s=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=ivvv4MIXVmnHd5Y9gEuZNdvD1u7Te0SMdaVQKNFdvx/OZa8nUEyNARL+vqf0eg785
	 mrFxdhS27SZQTKu6F9r1brzLZQ37lQReFiknUE87d9CcJWCfiMZOjkOTTIkNe1E6Z1
	 3KXjOXlbtwydUH/Rg3Lb+q6fl1xSKUlMCsE+kiz+bv+RWtkQmufpOnC6pa6ws/YMdP
	 QPcJipuOFofGHWTQw9T9E2nJ7BWWyxp/WtVrfzejFnVa/U+RlR8YZdCtUMnPKwKFGS
	 xSmGdLPdm7pavk+M0i6igHbCSzVStu/o4fJM5LkzS307QD4CiDWcb9pvoIS5/qsskW
	 N9txO7dh0azFA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9043A3B2A4;
 Tue,  2 Aug 2022 20:25:29 -0400 (EDT)
Received: by mail-wr1-x436.google.com with SMTP id z16so19623254wrh.12;
 Tue, 02 Aug 2022 17:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pzUR17ua/4GuxmErw9pN/l+aLiU3YCYqU4g3kAyg47s=;
 b=JTF+ZxjWbLsm0UsBsi1J4LFaF5GLeVJBGpyT3fiStCdWeIt269DnoS1gMZxv08FUKo
 M3DT499dDohJVH65RzKzViLgI+fV6bayGvcFs7f/h43XG3O87Ta80V47nieXHYKYssUx
 uQCtI5APyPHl6o8Xy3LfvRvbHYJ9D+mMuo83T1PqdUH9GF0c1FeZsotovkmM87xIJlQ5
 ET3XqaibN70fsmsOYa3v9wQCe56Pf1eCjh1vVVerpT8IIv/4J5g6bMKU8aWv511FkfBD
 J7hQ3vqzAafRexo0eShbbm7RMi1dA70JraRlCR5t/loYe6JvgEEaxOGmp2DZc2DChHzh
 TnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pzUR17ua/4GuxmErw9pN/l+aLiU3YCYqU4g3kAyg47s=;
 b=uugykVplY0HZ7sCEBtRsmb3caoI7X1N+SfQCUGs69/IXPN1qbMGeDhBCmT/muuHnjO
 jna6/tpvKdzmlZSg5r7rGCG/mFZH26vMCdMfVNmWOTiXxQjqP20wZ2zD7vVw+/j4aCHu
 sY/tQFopkusvw2xOsScqVzz9lpwICRMctCn/FY5FqsDI8Mk1OxLuVLh979WM8GxqK1Vn
 ZRRwz3p2o3Y/Ey5L8dBc8zQnGxdNyHHHjvMl5hRCmTQPjKFenZDinFc5yeUxHd26YzPm
 XeLcJQuTNq4Dkhl7rSxS6vjCV9CPHKiHoNMTjT/MGsB03jcTJd+RemvV72DNn4j7RiNl
 LxXg==
X-Gm-Message-State: ACgBeo2DhanNG5guJBabcF6L2lZiKGYg93v7DsGd0FLx5egQWrvJkC+l
 GEqSehmotMm0VkPRB0MZmoLyFsFsT4azfRXwPo0wVyvJrzg=
X-Google-Smtp-Source: AA6agR7dwWp0C457y3oT6DFAJroJEp+HXZt/hOq9/GkP+KPGdypTpG0saYPGmmFuBeXr3Vho1ElGNS1ABB0zo3Nc+dw=
X-Received: by 2002:a5d:488a:0:b0:21e:d477:6555 with SMTP id
 g10-20020a5d488a000000b0021ed4776555mr14798740wrq.380.1659486327914; Tue, 02
 Aug 2022 17:25:27 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 2 Aug 2022 17:25:15 -0700
Message-ID: <CAA93jw5sAM9MiSsV6HMyQdJPox4HWvSp8HK592UMSL1BMHg8Wg@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] openwrt-22-03-rc6 released
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

SXQncyBteSBob3BlIHRoYXQgdGhlIGxhc3Qgb2YgdGhlIG1ham9yIHdpZmkgYnVncyBwbGFndWlu
ZyBvcGVud3J0CmhhdmUgYmVlbiBxdWFzaGVkLiBQbGVhc2UgdGVzdC4KCmh0dHBzOi8vZm9ydW0u
b3BlbndydC5vcmcvdC9vcGVud3J0LTIyLTAzLTAtcmM2LXNpeHRoLXJlbGVhc2UtY2FuZGlkYXRl
LzEzMzY3MwoKRXNwZWNpYWxseSBpZiB5b3UgYXJlIHVzaW5nIHRoZSBhdGgxMGssIDlrLCBvciBt
dDc2IGNoaXBzLiBGb3Igc29tZQpzdWdnZXN0ZWQgdGVzdHMgc2VlOgoKaHR0cHM6Ly9mb3J1bS5v
cGVud3J0Lm9yZy90L2FxbC1hbmQtdGhlLWF0aDEway1pcy1sb3ZlbHkvNTkwMDIvODMwCgotLSAK
RlEgV29ybGQgRG9taW5hdGlvbiBwZW5kaW5nOiBodHRwczovL2Jsb2cuY2Vyb3dydC5vcmcvcG9z
dC9zdGF0ZV9vZl9mcV9jb2RlbC8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=
