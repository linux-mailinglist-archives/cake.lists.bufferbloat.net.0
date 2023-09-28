Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 950E97B1B59
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 13:45:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1CEB63CB39;
	Thu, 28 Sep 2023 07:45:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695901500;
	bh=HeLTI5ltTeaSNwCaWbqIQ4U3qX7cg/pi6X8JZ4bzuno=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=njQMPGcDY1XXqKSBIiBwDuTwJ/ST5fcYlKCRZS94BXfcyYEtjZqXP/8uY6W3Fsveg
	 FRrbGnk569fPLFBllxbYI3pndyE35GOPxHJCEcNCYTzdLrVKAhPINv6lvNblIE+UAG
	 12+MHSEC9yDsUQsSjxd8MwIsp6Lz76cbB6XV7YylYWxpE+8bI/QOK1E0K8s1kmwJ3D
	 j4yh0ZGTSgtRLmeSZ3D2UqzS018jPv/nWufXQdFslIrY6S+e2AHFjA3pqiWLlYt6PR
	 1S8/lCqKlOjN2zZevubKTycYA1Kq/IHOmiZWkTpEBRsPI9P3drMM+dK3VYCtCy4Jqp
	 jm3vdo1qP+/7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 94EC93B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 07:44:58 -0400 (EDT)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-503056c8195so21231330e87.1
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 04:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695901497; x=1696506297; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=doibEFsOm9IA11RCdyXM8CKtsDb8IDtzIcLlao1HRAg=;
 b=BsmjkEAEXM96eZVl2k2woKzWhQd2vt7wABCdP0dkduxFTsBHyTQ7IkP+PZ+Jq1BIQZ
 zamqyq7y8ooBg7zDZlPLJKuvJztuxKTSz0UhizSBiCLFH9fVew6puUQ1art9HyZ7eLe3
 m2OM1haPNtqlommMEceaonwCOjqszG382w+1vm9T8miG0VCrIFK4gA0gOQ4SPm1K6Ec/
 uKiTycRE+PD+iHWvKPNILnM6u7GGPXkvMO6a+M3dEAU5yDxW8QGbPv+OcNm18GuTvlaI
 5gbUWYBDk+70jDisK8zjpkZqGVm6PufpLK2xDHPvHTQE9jgN6M203tgmPMMQ4m93aKtW
 uIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695901497; x=1696506297;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=doibEFsOm9IA11RCdyXM8CKtsDb8IDtzIcLlao1HRAg=;
 b=JG7y94YJT9vbWIS+hb45a8Pg/wy/sIZfpzovohObxzB0jVRg7+6h2bdGO92tdD1jZU
 r6rOb7x6gealp4LBzYRa9FkZBebehoy5N6zeadNdGfKHvpt5etV0dxWaZ2MVslW/1258
 MyqJQufj4wfTOS3XUAeeuxi11i6mA+18qlsz/kKUkXkfaTXgkLvls9N2GlV35uDjJzFM
 2gWP8grHsMi+20p5rb83cXmXFJtW56Jb9YHJGqsZBT0KQFUU7HtELg2UVLmWQtWAVSIq
 5uLqm5d8Q9+vZ4nv9kbcYc1fpDBzJ5nO4gIHhbiUwITdvKVYomZjGvG9ysH3cCqNiv60
 D++Q==
X-Gm-Message-State: AOJu0YxX/R3md7oq/H4VWejFdwB873tshJlRoKEV9K/TzJ0cccIMyBMQ
 nK7lOJyKkBWjMIy/ZZh+VCs=
X-Google-Smtp-Source: AGHT+IGeOi/91qUmVxh4MBEzpQzu6//e0s+ev3IFztROn2b2K0ZoMUjLv/P32ccneqFzLHWyXDk2fA==
X-Received: by 2002:a19:5f08:0:b0:503:654:cf27 with SMTP id
 t8-20020a195f08000000b005030654cf27mr733251lfb.28.1695901496752; 
 Thu, 28 Sep 2023 04:44:56 -0700 (PDT)
Received: from smtpclient.apple (188-67-146-233.bb.dnainternet.fi.
 [188.67.146.233]) by smtp.gmail.com with ESMTPSA id
 t12-20020ac243ac000000b004fdba93b92asm3051118lfl.252.2023.09.28.04.44.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Sep 2023 04:44:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
X-Priority: 3 (Normal)
In-Reply-To: <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
Date: Thu, 28 Sep 2023 14:44:53 +0300
Message-Id: <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxOSBTZXAsIDIwMjMsIGF0IDE6MDcgYW0sIEpvbmF0aGFuIE1vcnRvbiA8Y2hyb21hdGl4
OTlAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gUmFzcGJlcnJ5IFBpIDQncyBqdXN0IGFyZW4ndCB2
ZXJ5IGdvb2QgYXQgbmV0d29ya2luZyBiZWNhdXNlIG9mIHRoZWlyIEkvTyBhcmNoaXRlY3R1cmUg
b24gdGhlIGJvYXJkLCBqdXN0IGFzIHRoZXkgYXJlIHNsb3cgYXQgVVNCIGluIGdlbmVyYWwuIFRo
YXQncyB3aHkgdGhlIENNNCBpcyBpbnRlcmVzdGluZy4gSXQncyBpbnRlcmVzdGluZyB0aGF0IHRo
ZSBQaUhvbGUgaGFzIGdvdHRlbiBzbyBwb3B1bGFyIC0gaXQgd291bGQgcnVuIGJldHRlciBvbiBh
biBQaSB3aXRoIGEgYmV0dGVyIG5ldHdvcmsgYXJjaGl0ZWN0dXJlLgo+IAo+IE9uIHRoZSBjb250
cmFyeSwgdGhlIFBpIDQgaGFzIGFuIGV4Y2VsbGVudCBJL08gYXJjaGl0ZWN0dXJlIGNvbXBhcmVk
IHRvIG1vc3Qgb2YgaXRzIHBlZXJzLCBhbmQgZXNwZWNpYWxseSBjb21wYXJlZCB0byB0aGUgcHJl
dmlvdXMgUGlzLiAgVGhlIGJ1aWx0LWluIE5JQyBpcyBpbnRlcm5hbCB0byB0aGUgU29DIGFuZCAq
Tk9UKiBhdHRhY2hlZCB2aWEgVVNCIGFueSBtb3JlLCBzbyBpdCBjYW4gZ2VudWluZWx5IHN1cHBv
cnQgZ2lnYWJpdCBzcGVlZHMuICBUaGUgVVNCIGludGVyZmFjZSBpcyBhbHNvIGZhc3QgZW5vdWdo
IHRvIHN1cHBvcnQgYSBzZWNvbmQgR2lnRSBOSUMsIHRob3VnaCB0aGUgbGF0ZW5jeSB3b3VsZG4n
dCBiZSBhcyBnb29kIGFzIG9uZSBhdHRhY2hlZCBvdmVyIFBDSWUuICBUaGF0J3Mgd2l0aCBhIHN0
YW5kYXJkLCBvZmYtdGhlLXNoZWxmIFBpIDRCLgoKVGltZWx5IGJyZWFraW5nIG5ld3M6ICB0aGUg
UmFzcGJlcnJ5IFBpIDUgaGFzIGp1c3QgYmVlbiBhbm5vdW5jZWQuCgpUaGUgaW1wb3J0YW50IG5l
dyBmZWF0dXJlIGhlcmUgKGZvciB1cykgaXMgdGhhdCBpdCBleHBvc2VzIGEgUENJZSBidXMgbGFu
ZSBvbiB0aGUgc3RhbmRhcmQgbW9kZWwsIHNvIHlvdSBkb24ndCBoYXZlIHRvIG1lc3MgYXJvdW5k
IHdpdGggdGhlIENvbXB1dGUgTW9kdWxlIGp1c3QgdG8gZ2V0IGFjY2VzcyB0byB0aGF0LiAgVGhl
IGJ1aWx0LWluIEV0aGVybmV0IHBvcnQgaXMgbm93IGltcGxlbWVudGVkIGluIGEgUENJZS1hdHRh
Y2hlZCAic291dGhicmlkZ2UiIGNoaXAsIGFuZCB0aGUgV2lGaSBwZXJmb3JtYW5jZSBoYXMgYmVl
biBpbXByb3ZlZCBieSBhY2NlbGVyYXRpbmcgdGhlIGludGVyZmFjZSBieSB3aGljaCB0aGUgcmFk
aW8gaXMgYXR0YWNoZWQuCgpPbiB0aGUgZG93bnNpZGUsIHRoZSBwcmljZSBoYXMgZ29uZSB1cC4K
CiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
