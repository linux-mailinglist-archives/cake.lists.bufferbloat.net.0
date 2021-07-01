Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3BE3B9473
	for <lists+cake@lfdr.de>; Thu,  1 Jul 2021 17:59:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DEFC13CB44;
	Thu,  1 Jul 2021 11:59:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625155182;
	bh=8Ne67opf4Kv4+iwc+Dl/2kYmgcd8yrotmWH6h+7ICF0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YmGhSO8tUI1fx3YGRUJr4QYFTKT9BYnmvk1ZO5FCfq7lK2f58GVJd4+Ps6DjayHkW
	 evjrFS8g7dGhsSdS6JM6TYjazfCPa9uKv04bm5n7g6nmE1/GWS5gX85l52AriG4VSn
	 zIgXNEyLipF8/OV7jNW/KqVJ+HV5xOtXcVTedfxVXk0ZQqwkM/b0Wg4oOd7ZF76Pyd
	 IWieR2sQDwb3hoTb+NgwBYdZiH1ZaRnYdsYfNanfK6z7+b/n0NPagwq/V43ply/YA+
	 twB5w8r4YB649SjAxq36DC1OY8eJ1UP5+0ghbC1CGw8qhXxfbkgSpYKcsoXKesl5/z
	 4skZq/iyG5qsQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8F39B3B29E
 for <cake@lists.bufferbloat.net>; Thu,  1 Jul 2021 11:59:41 -0400 (EDT)
Received: by mail-io1-xd30.google.com with SMTP id f21so8067753ioh.13
 for <cake@lists.bufferbloat.net>; Thu, 01 Jul 2021 08:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hRpoSq3+jmT2hlc0ghYMBjtMPasYyZf1CvgENy+/wEA=;
 b=EXMVVSae3AONCQmH95pF//T7rWSKWUOB+/s5Q3S8BK4d5UmUlf9ClWgOTGMaVqpgu/
 3h7cjZRXEkIq146jMAKQHJgC9d727JC8LI7R665Ns8767SqKA077zzKY2NJ9mokRIrk5
 YpWmtuOubs5kjctrlo1tLIm4YfhPDlS6RuCLQetG2QwJHza8Sw55D4FKkZKEG+He4J4s
 8ttuiy0bkY6tT+1uYx6eQNRkhhaoJGTjXg4PPrKcILH0GXFs8UZmz2OI2O2vzCTzRV3/
 CUSumf8xqI98g4tAtZoVlaVV5YNcYxc7QVthQ7rBtEMw93EWMutoCgYAFgOnzpLzP32q
 /NhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=hRpoSq3+jmT2hlc0ghYMBjtMPasYyZf1CvgENy+/wEA=;
 b=Py0C3M3xTygDTDgBcBbjY4PNEpKYFn06a+Ew7HPmcGUeVXCZJwaOojAxZa3VXyfF1w
 yvzpOM+uysHbW0iDmzajw9HCWYoHYDlgdjSSupwyybh2Vlv0Qk1UzPPzmJhfOBvuzs+g
 BrWFQRmIsFvWV3r+7v6KY2md/6mTKmsXsZv27aYmCrsyVUsmIzCj0v5ZS7YXmMI2XBbr
 hy1DNCxGdhpdTuDECQ/aK49J26Nu0QfDTj03geRjEubX0XOA7IGwtLMSf3XDC1z6nTzi
 H5hikXb214P8pUg72q64/6To2AjSQSc+vv1MKReL0hewiu7zpvd7tJnhJIvEho19mdrv
 1r0g==
X-Gm-Message-State: AOAM530gXbYE4nfqYMhQkFbAEPMHxcTGwwj+TzrW+MJdN3lm7e1BzpHy
 lhJAvYR3uaBlox4l2o9lCGYa2/JWAKonFolsuR4+R6iZb3E=
X-Google-Smtp-Source: ABdhPJwqQbNYFOU0MOcVdECrpbL0mOqF/m/+5IJFuCylz4AX6rW9Znn2ZVUcEy+FbXCFGcBGfFTlFh3OF9znGkVEk08=
X-Received: by 2002:a5e:d909:: with SMTP id n9mr94895iop.27.1625155180684;
 Thu, 01 Jul 2021 08:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <4705bae2.AVMAADUSX7YAAAAAAAAAAG3K_mQAAYCsBU0AAAAAAAwWzABg3dV1@mailjet.com>
In-Reply-To: <4705bae2.AVMAADUSX7YAAAAAAAAAAG3K_mQAAYCsBU0AAAAAAAwWzABg3dV1@mailjet.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 1 Jul 2021 08:59:29 -0700
Message-ID: <CAA93jw5VKXrwDwtyN_H6Db_hb815SKQSnVKN5Sx=5V-OSudEzA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [NetDev-People] 0x15: New Talk accepted!
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogSmFtYWwgSGFkaSBT
YWxpbSB2aWEgcGVvcGxlIDxwZW9wbGVAbmV0ZGV2Y29uZi5pbmZvPgpEYXRlOiBUaHUsIEp1bCAx
LCAyMDIxIGF0IDc6NDcgQU0KU3ViamVjdDogW05ldERldi1QZW9wbGVdIDB4MTU6IE5ldyBUYWxr
IGFjY2VwdGVkIQpUbzogcGVvcGxlIDxwZW9wbGVAbmV0ZGV2Y29uZi5pbmZvPgpDYzogPHByb2ct
Y29tbWl0dGVlLTB4MTVAbmV0ZGV2Y29uZi5pbmZvPiwgPGtpbWJlcmxleWplZmZyaWVzQGdtYWls
LmNvbT4KCgoKVG9tIEhlcmJlcnQgaXMgc3RpbGwgb24gYSBxdWVzdCB0byBzcGVlZCB1cCB0aGUg
bmV0d29yayBzdGFja1sxXS4KSW4gdGhpcyB0YWxrIGhlIGludHJvZHVjZXMgdGhlIFBBTkRBIHBh
cnNlciB3aXRoIGludGVudGlvbiB0bwpyZXBsYWNlIHRoZSB2ZW5lcmFibGUgTGludXgga2VybmVs
IEZsb3cgRGlzc2VjdG9yLgpUb20gc2F5cyB0aGUgZmxvdyBkaXNzZWN0b3IgaXMgaGFyZCBjb2Rl
ZCwgY29udm9sdXRlZCBtYWtpbmcKaXQgYm90aCBoYXJkIHRvIGV4dGVuZCBhbmQgaGFyZCB0byBt
YWludGFpbi4KKHllcywgaGUgaXMgZ3VpbHR5IGFzIHdlbGwgaGF2aW5nIGJlZW4gb25lIG9mIHRo
ZSBvcmlnaW5hdG9ycwpvZiB0aGUgZmxvdyBkaXNzZWN0b3IpLgoKUEFOREEgcGFyc2VyIGlzIGEg
ZG9tYWluIHNwZWNpZmljIHBhcnNlciB0aGF0IGxpdmVzIHVuZGVyCnRoZSBwaGlsb3NvcGh5IG9m
ICJ3cml0ZSBvbmNlLCBydW4gYW55d2hlcmUsIHJ1biB3ZWxsIi4KVW5saWtlIEZsb3cgRGlzc2Vj
dG9yLCBhIFBBTkRBIFBhcnNlciB3aXRoIG1ldGFkYXRhIGV4dHJhY3Rpb24KaXMgd3JpdHRlbiBp
biBhIGRlY2xhcmF0aXZlIHJlcHJlc2VudGF0aW9uIGFzIG9wcG9zZWQgdG8gaW1wZXJhdGl2ZQpp
bnN0cnVjdGlvbnMgLSBhbGwgaW4gZmFtaWxpYXIgQy4gSXQgaGFzIGJlZW4gc2hvd24gdGhhdCB3
aGlsZQptb3JlIGZsZXhpYmxlLCB0aGUgUEFOREEgcGFyc2VyIGlzIG1vcmUgcGVyZm9ybWFudCB0
aGFuIGZsb3dkaXNzZWN0b3IuCgpUaGUgUEFOREEgcGFyc2VyIG1heSBiZSBjb21waWxlZCB0byBk
aWZmZXJlbnQgYmFja2VuZHMsIGN1cnJlbnRseQp0d28gaW1wbGVtZW50ZWQgYmFja2VuZHMgYXJl
IGF2YWlsYWJsZTogYW4gb3B0aW1pemVkIHVzZXJzcGFjZXMgQwphbmQgYW4gWERQL2VCUEYgb25l
LiBUaGVyZSBpcyBvbmdvaW5nIHdvcmsgb24gZ2VuZXJhdGluZyBhIHBsYWluCmtlcm5lbCB2ZXJz
aW9uIGFzIHdlbGwgd2hpY2ggbWF5IGJlIGNvbnN1bWVkIGJ5IG90aGVyIHBhcnQgb2YgdGhlCmtl
cm5lbC4gRm9yIGFueSBvZiB0aG9zZSAzIGJhY2tlbmRzLCB0aGUgcGFyc2VyIGRlZmluaXRpb24g
c3RheXMKdW5jaGFuZ2VkLgoKWzFdaHR0cHM6Ly9sZWdhY3kubmV0ZGV2Y29uZi5pbmZvLzB4MTQv
c2Vzc2lvbi5odG1sP3RhbGstQlA0LWJ5dGUtY29kZS1mb3ItcHJvZ3JhbW1hYmxlLXByb3RvY29s
LWluZGVwZW5kZW50LVBEVS1wcm9jZXNzaW5nCgpNb3JlIGluZm86Cmh0dHBzOi8vbmV0ZGV2Y29u
Zi5pbmZvLzB4MTUvc2Vzc2lvbi5odG1sP1JlcGxhY2luZy1GbG93LURpc3NlY3Rvci13aXRoLVBB
TkRBLVBhcnNlcgoKY2hlZXJzLApqYW1hbAoKUFM6IFJlZ2lzdHJhdGlvbiBpcyBvcGVuLCBzZWU6
Cmh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTUvcmVnaXN0cmF0aW9uLmh0bWwKClBQUzogV2Ug
YXJlIGxvb2tpbmcgdG8gcG9zdCB0aGUgc2NoZWR1bGUgdG9kYXkKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KcGVvcGxlIG1haWxpbmcgbGlzdApwZW9wbGVA
bmV0ZGV2Y29uZi5vcmcKaHR0cHM6Ly9saXN0cy5uZXRkZXZjb25mLmluZm8vY2dpLWJpbi9tYWls
bWFuL2xpc3RpbmZvL3Blb3BsZQoKCi0tIApMYXRlc3QgUG9kY2FzdDoKaHR0cHM6Ly93d3cubGlu
a2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIw
LwoKRGF2ZSBUw6RodCBDVE8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
