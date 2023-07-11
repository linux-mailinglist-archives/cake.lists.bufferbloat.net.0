Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D4674F010
	for <lists+cake@lfdr.de>; Tue, 11 Jul 2023 15:25:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DF5F73CB39;
	Tue, 11 Jul 2023 09:25:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1689081939;
	bh=3VA3sFU3nfGoBB38P7hTcn1TP4nCFPNLL5wQFgEXBx0=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Mwb6346EdAbD6iIeGesx3UtCJEwN+xyGg/qeIEpom0kYfpyzg/OHeEoqFYZ/QVijx
	 vY0ZDjzpFaWGFPKr1KilAErtUmJPBj9q4SsV1+ms7vN53vWpT6NjD1bo30z/zsH4AF
	 U6RFx4OZr/W0IybTFtXi5clEzg5JII73TNiWqK82oeADT60EUhZABwM5DYIpzEai9v
	 51MYFFQ6BzavNZ40W3wq4szySfwJci0DN8wK/zEc8qsIXO4EPsqQo4Xz8MJps4M1QF
	 wU7qw1oM9jW0JVJtcp6HrroiHsRYfJohRhpOKXgKkC0Cd++sm+kY3uuLDCvwT+8CKf
	 UIcGUbicrNVKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7EE663B2A4;
 Tue, 11 Jul 2023 09:25:38 -0400 (EDT)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-666e6ecb52dso3201477b3a.2; 
 Tue, 11 Jul 2023 06:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689081937; x=1691673937;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IMP8z10ctM5ehn+/T5Cxl07k1+x5t7PHt+mwW97jJyg=;
 b=ClE37+HbfE2R9TSGkNCedWDHVk2Rq/dr0uhJfEyVPLNUTjt1uO1TLZw25GZ0DhTnmv
 Q72e48nPZUdynHmeqIq+IhFUnNUfczCK0Zan3lW5C78W1smrtt36xMtNfzHuWSacAEUV
 eiJecx90PpA05qNawpRGrnfZxtOsiXoO96s7DucJboZQvPXDhMRdY5N8TGuiqMzYg+dj
 kLCgsZLNB+hNThNSiiTb7drNqIQC92y6de+U2iCHhufkUUnpJ8SRjtpAOVcUEs8UcU8x
 oOR1GqN9FqNk23Sle9vv6yLA7uPvJCYPJUS5rSBDYsR6R6e7qltRlkXXvNHuIaatyAZY
 my1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689081937; x=1691673937;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IMP8z10ctM5ehn+/T5Cxl07k1+x5t7PHt+mwW97jJyg=;
 b=SaJlRgBzojqIn5QKb2bEL24SGNXDF6GSb8QElH0jic3of3m4oMrrKzisezGClaeli6
 gP6vKcMqDyahE82VOBnh3i80NtaNnkiphq9UDtg1kRKqueGx4kDu+o03Q+L1qeKC0huz
 YrTnHRehSi3HO5mZFXVVfryhm7ruQPA6XkjqgCzaMvYTrPFA4Qe4cvIMrqk9CEDyMABc
 YFbxXa4Sqqj2E57hzqw9qEQq+80+uFIDOW8HZIHVc20JuWXvBprYuYAyAwbujTAADoIl
 2jIx8xrHpq/qz/isQrHGX2TiJoD+NP4nxa8GfL0BWVXZ1R86JZsrb9Yct33iKBFydysY
 SF3A==
X-Gm-Message-State: ABy/qLY3Oh1KD5f/6VnbK6R5rvjqtf+knuker9zdj5YX6ii02yko5D8/
 E4B0vSnfoN30+gBanRXeLE2zdLYBb3rlw0JNIk6HOb/Ik4HrTg==
X-Google-Smtp-Source: APBJJlE9wa4wsZxmVTosPg+ia+QzxZDs7YIUpgNb47uH4v3g3Mhg8ZSL5OeoJUgCH42SVxArvoC8LgOt/U3/znVCpQk=
X-Received: by 2002:a17:90a:5510:b0:262:ceaa:1720 with SMTP id
 b16-20020a17090a551000b00262ceaa1720mr11672597pji.5.1689081936878; Tue, 11
 Jul 2023 06:25:36 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 11 Jul 2023 07:25:25 -0600
Message-ID: <CAA93jw5UYzs0-VafViV3ea8hD2LHBQEyfohPsX1KRR2ftESV8g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Subject: [Cake] tag line for cake-autorate wanted
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

dGhlcmUgaGFzIGJlZW4gc29tZSBmdW4gc3VnZ2VzdGlvbnMgb3ZlciBoZXJlOgpodHRwczovL2dp
dGh1Yi5jb20vbHlueHRoZWNhdC9jYWtlLWF1dG9yYXRlL2lzc3Vlcy8xNjIgLSBJIGhhZCB3YW50
ZWQKdG8gYmFzaWNhbGx5IGdldCBtb3JlIGZvbGsgb24gTFRFLCA1RywgYW5kIFN0YXJsaW5rIGF3
YXJlIG9mIHRoaXMKc2NyaXB0IGFuZCBmaW5kaW5nIGEgd2F5IHRvIGhhdmUgaXQgaGl0IG9uIG1v
cmUgcXVlcmllcyAoU0VPKSBmb3IKb3B0aW1pemluZyB0aG9zZSBzb3J0cyBvZiBjb25uZWN0aW9u
cyB3b3VsZCBiZSBuaWNlLgoKIkNhc3RzIGJvbHRzIG9mIGxpZ2h0bmluZyB0aHJvdWdoIHRoZSBl
eGNlc3MgbGF0ZW5jeSBhbmQgaml0dGVyIG9uCnlvdXIgdmFyaWFibGUgcmF0ZSBjb25uZWN0aW9u
ISIgaXMgbXkgZmF2b3JpdGUgc28gZmFyLiBCdXQgdGhlIHdob2xlCnRocmVhZCBpcyBoaWdobHkg
ZW50ZXJ0YWluaW5nLCBhbmQgaWYgeW91IG5lZWQgYSBkaXZlcnNpb24gZnJvbSB0b2RheXMKbXVu
ZGFuZSB0YXNrcywgd2VsbCwgc2FuZXIgKGFuZCBpbnNhbmVyKSBzdWdnZXN0aW9ucyBkZWVwbHkg
ZGVzaXJlZCwKb3ZlciB0aGVyZS4KCi9tZSBwYXNzZXMgdGhlIGRvb2JpZS4KCgotLSAKUG9kY2Fz
dDogaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo3
MDU4NzkzOTEwMjI3MTExOTM3LwpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
