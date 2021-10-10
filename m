Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D764428253
	for <lists+cake@lfdr.de>; Sun, 10 Oct 2021 17:39:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 82C1F3CB45;
	Sun, 10 Oct 2021 11:39:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633880363;
	bh=edxFxyIF8VQcn1CQYxVMbQciNo+mSIstiaZ1PopJ2ZQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IVMEqtlsGU2iWUshxeyGqsvHEip/UfpwPHTeHlLwpdaOd0/GOke5ibeLtaHFNXtul
	 ePW6VcvX12Ld8hG0lNebxmlPcGyaFiWkfBYj6bn+pPtRTP8Dc2gVwbOLRGSgi7qqIa
	 fBDBuzqmPiCPvAjuxjC/dC6wcd5AuNe7caYa+tzQUSPaDjJPVAwWzz1zjj3O4svoWv
	 5Y/DQoc8X9wGYEAkUnNq25Q5LbEJe+0CATskEtb03S3DJ3mjKltT5AIMEsvK/Ac9gz
	 JJN+2Y9rA/YIQ+pIougIa6Ibht7boD4mPCsnjqnihYlvJi54bJReQSsARcwKe+VtJA
	 dkbBiJUoJLJHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B6F593B29D;
 Sun, 10 Oct 2021 11:39:21 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id i189so9123787ioa.1;
 Sun, 10 Oct 2021 08:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3xIidS/nad+CGf5qAt4QKxEFcB/+EeAtDQzhAy4oRIo=;
 b=p/F89uXzg8R/46nXVMs/8ujseUtqaoeKf6iUSLP6DDyaeujnwBWvmt58WI1/XT6oEe
 vxbwnq6rVkxSyJVuuXkA7OasIEXwlR+TtTlFAQaUxRVwhKPLsvLwS9gsRrdPENWVcii7
 /YW9UytWeSoeykg+fbNBFnGjmNhjE98t/HSCxeSPPb4GtFyML140c/Abeefn5YLav0E/
 Vib4An39gn6k1eu2ZgInEhYd5cTwtGFSt+TT5itWdD7Azjibkk86hc+IlwFB94dzDGYN
 9VhOzcsrgiddmLf9gg8/29/5U9RCUwLhs5aGnZB5WUEtueTQN3m3lLTS3nUdkLYqeF+q
 0ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3xIidS/nad+CGf5qAt4QKxEFcB/+EeAtDQzhAy4oRIo=;
 b=KmXbqQDBIBMpK1EnPlGkM2O6/VMWq14vhXdWmDgN/fuJb4kQifycHPC/Lj7gxpnHDk
 JYgIbN4uHNu4fOp7uzxQpDBuRXnvlc1MeSaJTprESJBvckaIcKSSjdCYcxbs2D0on7+M
 LkhbGdWb+L8ChCL7oseMj6vYBEeAkFeY0gvnE/EO51kN0wPD+dbZThQHFwbTnEV+Ja11
 P50zPV6lepnplf5CJKcJhF/jWGhlEbXhP5EJBMnwgGF5MB7JVEATYzNOMLaZmC7+tCRx
 LJ5OWRVoeC+7+b9ug0D7t0vNCA52r7FU8vHYpqQjQPf2/mgc7vwAhriTjWvHsezOhJrS
 qjRQ==
X-Gm-Message-State: AOAM5329+rxCk2t8K0CR0vXAeZ23WBK1bm9qnVa/6sLNBOn8mT0Iw1X7
 Yhqz/jRR7vWmjcTWnuMq08crxKhhak1esXKEpPYdjvwA+T4=
X-Google-Smtp-Source: ABdhPJy4vm2sBXdYNpcSSE+UxJGhElp8AWpNMPfrvJEbomXLrZTvH25gbtmu4z23SuznSGpsvtwBqKadB1F5pKnFTqU=
X-Received: by 2002:a05:6602:13c6:: with SMTP id
 o6mr2144344iov.55.1633880360897; 
 Sun, 10 Oct 2021 08:39:20 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 08:39:08 -0700
Message-ID: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] some mikrotik comments
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

dGhlIHY3IGJldGEgZ2FpbmVkIGRvYyBhbmQgbW9yZSBvcyBzdXBwb3J0IGZvciBmcV9jb2RlbCBh
bmQgY2FrZSByZWNlbnRseQoKaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBo
cD9wPTg4NTAwMCNwODg1MDAwCgphbnlvbmUgb3V0IHRoZXJlIGFjdGl2ZWx5IHRlc3RpbmcgbWlr
cm90aWs/CgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0
dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExM
QwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
