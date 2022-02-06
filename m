Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A98304AB2C4
	for <lists+cake@lfdr.de>; Sun,  6 Feb 2022 23:59:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2E16F3CB44;
	Sun,  6 Feb 2022 17:59:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1644188373;
	bh=xZTUmbc7cGU6ejivLJ8+KGc+hvcqXjD976iWERM+h3c=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k2Uyub8i92zK6lbvXh22J63gmVXdZ8OhQhANiZgZlY6ziFcpCtAf9mb7zNuEgxOs/
	 gTLXgMAi8HC3MgP/sltGb/bzqsxVVszKZJFbMPDOKb83R5ifbQrDYdoIZYeiFIhsNg
	 XC3+vbnG7u5myhL2ji2O1/ySsCXoqSUEW982OXkoBtkqIH/RVF111dN+ECcthZrRjI
	 gfZTk/wryIrcCfAJ6TRx9JneIxcafVKedjz4xYuAfzrXIYfaHPNr95a4G532YHj5A9
	 D0ZtoeK9uC7Vy2v+3wP4pVg1sS5jsz2GT7ZNswYNn2GpM9CKOZQnol1B4lM7h6rMoP
	 yjwbueROvdUJQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 81DAE3B29E
 for <cake@lists.bufferbloat.net>; Sun,  6 Feb 2022 17:59:31 -0500 (EST)
Received: by mail-ed1-x535.google.com with SMTP id b13so26107063edn.0
 for <cake@lists.bufferbloat.net>; Sun, 06 Feb 2022 14:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=BZkdokLeEZPPRU4TtL378fed4W58GpE5QJkeKhihmVw=;
 b=Epf6+6YkkMpOwqgG6xCOU2qRDZNuHNAuBQVMsAyE/x92qBBHjmTx0iAyuDo6RXxruZ
 gpSJBr1VXfvB013O2OgVvhk6CgTHPXFn6euoYtCVTMH6GsFoJbcHpe94bcaFa6b6S3QV
 3azy19nRKegAGKPNA0Co2HTu+DAExVM05eyku4la4982YhIMZ1gml/wMQEuqVG8qy7NK
 JWHnx6zSRrxiiipWv2JPAeZ3NFqH1FCThgtHrycw0EPAXLZdjLCRYs0m9VCb8OCXE9XX
 T1rzxZBnRchgv/j6Ctf67BQ7vWTx/pfiDTKrmWJdH/BBMu+uShOhz+gYDl/A8BAUHOY5
 i+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=BZkdokLeEZPPRU4TtL378fed4W58GpE5QJkeKhihmVw=;
 b=fm1XLpls4gCs1GTjb8MU+RWm3+Qj1b4fyOO/1oIeTa7yZYVSH655tZl+BQ4KGEnnh2
 vlUvzQt6gR9NpB6XjjonBFv3RggBAaAr6trfhIatZVMdeL2VhsQqzaLJgt+F9MqVAvSJ
 9Xp5jCh9t5VwkjiAr+z/8wFDiK3CejF3q6BTIKnAEtEZJ8YQqlWIIgj7NPV/mxO/gGW3
 dLcFredsK5tQaTNxNViYhVgQhqVU9/Lug1yV1T6pmawDFVUafZDSGo7NmNAhtdm/Xf0d
 5vqwqp2Ysqr1sp9CosCr+o52jpbn/cyzehGXrJS/ySv5spqrwKpyYyRk6sPC76DAIVZs
 fCQQ==
X-Gm-Message-State: AOAM532K4M2eZfRyyFqvAYQTwIBDlNb9pjg4zF7YF0EZlNwYD71WGgga
 xh0t1LM8mVCC4ozHXcGWBR7ZrjdTQT43Fv+wLlXBGNZgeS520A==
X-Google-Smtp-Source: ABdhPJyJg6zFOWIqTjhb42ezmoooShk0fjuBc0hs8wmtwN4yOAMZfnrm8EUllDBa7yCr5Ol9mSStlE8WUB0PbnKYa2A=
X-Received: by 2002:aa7:c38b:: with SMTP id k11mr11251367edq.351.1644188370066; 
 Sun, 06 Feb 2022 14:59:30 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 6 Feb 2022 14:59:17 -0800
Message-ID: <CAA93jw54wb3M=m9eq5epbVJO5yHUmV7byHjU3u0Ex-y_bQv=_g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] plotters available these days?
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

U28gZmFyIGFzIEkgcmVtZW1iZXIgdGhlcmUgd2VyZSB0aHJlZSBkZWNlbnQgZWZmb3J0cyB0b3dh
cmRzIGNhcHR1cmluZwpjYWtlIGFuZCBmcV9jb2RlbCBzdGF0cyBvbiBhbiBvbmdvaW5nIGJhc2lz
LCBhbmQgZmluZGluZyBhbnkgb25lIG9mCnRob3NlCnRoaW5ncyB0aGF0J3MgcHJvdmluZyBoYXJk
IHRvIGdvb2dsZSBmb3IgdG9kYXkuIHRob3NlPyBhbnkgbmV3IG9uZXM/CgpIYXMgYW55b25lIGF0
dGVtcHRlZCBhIGN1c3RvbSBzbm1wIG1pYiBmb3IgaXQ/IG1ydGc/IEkgZGlkIGEgc21hbGwgbWli
CmZvciBmcV9jb2RlbCBhdCBvbmUgcG9pbnQuLi4KCi4uLiBhcyBhIHNpZGUgbm90ZSwgdGhpcyBs
b3ZlbHkgZG9jdW1lbnQgb24gY2FrZSBhdCAyZ2JpdCB3YXMgdmVyeSBnb29kLgoKaHR0cHM6Ly9n
cmFwaGVuZW9zLm9yZy9hcnRpY2xlcy9zZXJ2ZXItdHJhZmZpYy1zaGFwaW5nCgotLSAKSSB0cmll
ZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgpodHRwczovL3dheWZvcndh
cmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYlMkZ3d3cuaWNlaS5vcmcKCkRhdmUgVMOk
aHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
