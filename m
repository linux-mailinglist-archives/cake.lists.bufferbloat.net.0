Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B344F57D5D2
	for <lists+cake@lfdr.de>; Thu, 21 Jul 2022 23:20:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 26BE03CB38;
	Thu, 21 Jul 2022 17:20:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1658438419;
	bh=JREqYNIqd65PrjrWKXroo73PwopkeGxLO/gBe7kqfe0=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=QSgrPFi8ra85nHnSy5f3C2e1ezVP381Owpg+q6Ou23pdLrw+R7ntD/lAjnQ4NNEDC
	 x1xNoESQC7bV+3tpvfXb0xzcuzefTg3K5lh+oqwhQPyJgUcj2d9U1cLqLDAc7FRgYE
	 LuVR61NI8WROgtwVLXMA0W2JgGPkjTEcci2rbLTzZPErH2Rnq6fWZ6t/Gkp9TCHFnz
	 5g3svEo/xhPpzPx+Ox+ZcerD/BYaA8uFc8djHlmp9MZXjCYznGq2Updc0y+acwsbk5
	 5Eow3HpIkRWw6WiKsRxwDMsiG/dEQ2hinZdGZcibrlHiHy91mwTBzb6T0vCdpkL7SF
	 903vOiViDC1Ow==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9551B3B2A4
 for <cake@lists.bufferbloat.net>; Thu, 21 Jul 2022 17:20:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bk37C7P7UyzxabGO3LYXDTv+yAr1XAtwBzBfaYbsu40=; b=bGA48Ld6u8dTivA6fFzC0gKpyH
 vdWhkUCzLRcEgWL6jLLGLkB5ish/2ZtCbXzyZQrLiRrSf8A7EZT4Dkxfza6iQnH8MNAFSbEiUomhG
 Za76/ksDpefKvY6xV77Pc32Cn3TO3f3/o1m5CM6xP4GiuK7GhRAsZYKAt9R+5+S8d7E8eP2EK7SRk
 7IHvM0UlkO5uSF9nc0wQ+qeeCjuwfMTn7eL1ldOdiTXNrB0So/L+ma/OqDpLX74X/jOkuMZ5Yytg5
 a62uoXn+4n9I+FnjOYLSNhV99hQMW4FboXCa3AriL8smhbzfYc0M+sdT6Qg7owtrQwDuXdr9kk3bE
 TrGAECUw==;
Received: from 172-222-103-188.res.spectrum.com ([172.222.103.188]:2589
 helo=DESKTOPFCSMHCV) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jordan@inacomptc.com>) id 1oEdam-0005LP-8j;
 Thu, 21 Jul 2022 17:20:17 -0400
To: "'Dave Taht'" <dave.taht@gmail.com>,
 "'Cake List'" <cake@lists.bufferbloat.net>
References: <CAA93jw6EiZY6MZN421dUW2=0SG5Q_c=3EzKeWJsKtEAEjuP=VQ@mail.gmail.com>
In-Reply-To: <CAA93jw6EiZY6MZN421dUW2=0SG5Q_c=3EzKeWJsKtEAEjuP=VQ@mail.gmail.com>
Date: Thu, 21 Jul 2022 17:20:17 -0400
Message-ID: <005101d89d47$ad0870c0$07195240$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQK0JBpWnT9W94YIPig/nwHxGJ6656vSROOA
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.tc-mi.net
X-AntiAbuse: Original Domain - lists.bufferbloat.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - inacomptc.com
X-Get-Message-Sender-Via: cpanel.tc-mi.net: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cpanel.tc-mi.net: jordan@inacomptc.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Cake] pcq on mikrotik
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
From: Jordan Szuch via Cake <cake@lists.bufferbloat.net>
Reply-To: jordan@inacomptc.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGV5IERhdmUsCgpJIGhhdmUgYSBNaWtyb3RpayBzZXR1cCBmb3IgdGVzdGluZyBhbmQgcnVubmlu
ZyBjYWtlIHJpZ2h0IG5vdy4gRmlndXJlZCBJIGNvdWxkIHJ1biBzb21lIHRlc3RzIHRocm91Z2gg
aXQuIEkgcGx1Z2dlZCBpbiB0aGUgUENRIHF1ZXVlcyBNaWtyb3RpayBoYXMgaW4gdGhlcmUgYnkg
ZGVmYXVsdCBhbmQgcmFuIFJSVUwgZm9yIGJvdGggcXVldWUgY29uZmlndXJhdGlvbnMgd2hpbGUg
d2FpdGluZyBvbiBzb21lIHdvcmsgdG8gZmluaXNoLiBJZiB5b3UnZCBsaWtlIHNvbWUgZGlmZmVy
ZW50IHRlc3RzIHJ1biB0aHJvdWdoIGl0IGxldCBtZSBrbm93IGFuZCBJJ2xsIGdpdmUgaXQgYSBn
byEKCkhlcmUncyB0aGUgc2V0dGluZ3MgZm9yIENha2UgYW5kIFBDUQoKYWRkIGNha2UtYWNrLWZp
bHRlcj1maWx0ZXIgY2FrZS1kaWZmc2Vydj1kaWZmc2VydjQgY2FrZS1tZW1saW1pdD0zMi4wTWlC
IFwKICAgIGNha2UtbXB1PTY0IGNha2UtbmF0PXllcyBjYWtlLW92ZXJoZWFkPTE4IGNha2Utb3Zl
cmhlYWQtc2NoZW1lPWRvY3NpcyBcCiAgICBraW5kPWNha2UgbmFtZT1jYWtlLXVwCmFkZCBjYWtl
LWRpZmZzZXJ2PWRpZmZzZXJ2NCBjYWtlLW1lbWxpbWl0PTMyLjBNaUIgY2FrZS1tcHU9NjQgY2Fr
ZS1uYXQ9eWVzIFwKICAgIGNha2Utb3ZlcmhlYWQ9MTggY2FrZS1vdmVyaGVhZC1zY2hlbWU9ZG9j
c2lzIGNha2Utd2FzaD15ZXMga2luZD1jYWtlIFwKICAgIG5hbWU9Y2FrZS1kb3duCiAgICAKICAg
IG5hbWU9InBjcS11cGxvYWQtZGVmYXVsdCIga2luZD1wY3EgcGNxLXJhdGU9MCBwY3EtbGltaXQ9
NTBLaUIgcGNxLWNsYXNzaWZpZXI9c3JjLWFkZHJlc3MgcGNxLXRvdGFsLWxpbWl0PTIwMDBLaUIg
CiAgICAgcGNxLWJ1cnN0LXJhdGU9MCBwY3EtYnVyc3QtdGhyZXNob2xkPTAgcGNxLWJ1cnN0LXRp
bWU9MTBzIHBjcS1zcmMtYWRkcmVzcy1tYXNrPTMyIHBjcS1kc3QtYWRkcmVzcy1tYXNrPTMyIAog
ICAgIHBjcS1zcmMtYWRkcmVzczYtbWFzaz0xMjggcGNxLWRzdC1hZGRyZXNzNi1tYXNrPTEyOCAK
CgluYW1lPSJwY3EtZG93bmxvYWQtZGVmYXVsdCIga2luZD1wY3EgcGNxLXJhdGU9MCBwY3EtbGlt
aXQ9NTBLaUIgcGNxLWNsYXNzaWZpZXI9ZHN0LWFkZHJlc3MgcGNxLXRvdGFsLWxpbWl0PTIwMDBL
aUIgCiAgICAgcGNxLWJ1cnN0LXJhdGU9MCBwY3EtYnVyc3QtdGhyZXNob2xkPTAgcGNxLWJ1cnN0
LXRpbWU9MTBzIHBjcS1zcmMtYWRkcmVzcy1tYXNrPTMyIHBjcS1kc3QtYWRkcmVzcy1tYXNrPTMy
IAogICAgIHBjcS1zcmMtYWRkcmVzczYtbWFzaz0xMjggcGNxLWRzdC1hZGRyZXNzNi1tYXNrPTEy
OAoKL3F1ZXVlIHNpbXBsZQphZGQgYnVja2V0LXNpemU9MC4wMDEvMC4wMDEgZHN0PWV0aGVyMSBt
YXgtbGltaXQ9MTBNLzEwME0gbmFtZT1cCiAgICAiU3BlY3RydW0gQ2FrZTMiIHF1ZXVlPXBjcS11
cGxvYWQtZGVmYXVsdC9wY3EtZG93bmxvYWQtZGVmYXVsdCB0YXJnZXQ9XAogICAgYnJpZGdlCiAg
ICAKICAgIG9yCiAgICAKICAgIGFkZCBidWNrZXQtc2l6ZT0wLjAwMS8wLjAwMSBkc3Q9ZXRoZXIx
IG1heC1saW1pdD0xME0vMTAwTSBuYW1lPVwKICAgICJTcGVjdHJ1bSBDYWtlMyIgcXVldWU9Y2Fr
ZS11cC9jYWtlLWRvd24gdGFyZ2V0PVwKICAgIGJyaWRnZQoKQW5kIGhlcmUncyBhIGxpbmsgdG8g
dGhlIGZsZW50IGRhdGEgZm9yIHlvdSBvciBhbnlvbmUgZWxzZSB0byB0YWtlIGEgbG9vayBhdAoK
aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBcDR1NFJ0ZTYzRnFqcmt6RlpKYXA4VXV1U2FyYVE/ZT16V0c3
eGMKCgotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiBDYWtlIDxjYWtlLWJvdW5jZXNA
bGlzdHMuYnVmZmVyYmxvYXQubmV0PiBPbiBCZWhhbGYgT2YgRGF2ZSBUYWh0IHZpYSBDYWtlClNl
bnQ6IFRodXJzZGF5LCBKdWx5IDIxLCAyMDIyIDI6NDEgUE0KVG86IENha2UgTGlzdCA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+ClN1YmplY3Q6IFtDYWtlXSBwY3Egb24gbWlrcm90aWsKCmF0
IHNvbWUgcG9pbnQgSSdkIGxpa2UgdG8gY29tcGFyZSBjYWtlIHZzOgoKaHR0cHM6Ly93aWtpLm1p
a3JvdGlrLmNvbS93aWtpL01hbnVhbDpRdWV1ZXNfLV9QQ1EKCi0tIApGUSBXb3JsZCBEb21pbmF0
aW9uIHBlbmRpbmc6IGh0dHBzOi8vYmxvZy5jZXJvd3J0Lm9yZy9wb3N0L3N0YXRlX29mX2ZxX2Nv
ZGVsLwpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
