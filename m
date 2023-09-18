Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3257A55A3
	for <lists+cake@lfdr.de>; Tue, 19 Sep 2023 00:13:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F16813CB49;
	Mon, 18 Sep 2023 18:13:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695075188;
	bh=yhZNLQpUIujgSv7lAJ2BqL0ArZKLRB7vgkESc2wADYw=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=IytrJkTVa7aBxyYbN4S7Uwh0xMpUHQgk3tbw1Hl/DXIX2w9P3Ia+vH5PNROrVRNWH
	 pg/nl9ResgFSfb8VMLmbWmc1MaMzy2Qy8qEUpERrSDU/t+K43qjw5hJzaJZoR87jjX
	 p8PbfINkVS/985nBEuGJy7e0vtnYqLxNhxaDHFJ+I5MSiYT+OfNYRxkkctSFuF/iFn
	 F6VUJdKEQJUPaLu2rf1pLljli2jUjaXV1rjvhdEzifkagEPVNacmL9tmCSzggn0021
	 BTxxR3AIqdjdsC/jrMxe3itID0hJ8SVJbemi8FnEwJ9tqWaJSA2fE9iNOL+nh8asQW
	 eTPqYIIUs0r7w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 120E93B2A4
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 18:13:08 -0400 (EDT)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2bfc1d8f2d2so59857761fa.0
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 15:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695075186; x=1695679986; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1pro0J4ACuDK6Fcf7gSPoOBXlS8qMDkARIB1fVptMVA=;
 b=FyJP5ayIH++5wI7l5QrVR6M00Tq7Lbg8zwCBioRPCLno9kqTe5f7njBqnK8N7+2xZj
 ovcCmaFFMDz0VWRvjwIlQABeAmREreD+tv7D3DL3toS77ER6IaqMCeXJyjSNHknA9y5/
 1wuYMhembRFn7CEgvKawzwEGiNI/h+COlJyYwQVO+mArFdyB3MymN/cT9K5klyI43sH9
 txGObXnwyB8F8iGJ4CUG/p0jxJ2UQBui/WDxD0XUV8+re+GS42DFCuINySF9eSks55JG
 p6dRSBkz965mxuh7yEUXNVzRQs/Skkg6WIXNoVphmSzfqdjxHo7VH2WzYRVPd6EFUU2A
 vw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695075186; x=1695679986;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1pro0J4ACuDK6Fcf7gSPoOBXlS8qMDkARIB1fVptMVA=;
 b=F+KXVUxZVIKEQstS4tarhxXtzFqlnOWM/rssEDp8lBKXOtIT3ytqOsfXe3iLB2mt5k
 0m9LBKNtcsbj9nLtohuDaoEe83SuPlwoMySQKB58mnA58slbw9DBDN9+91FShdgmGKek
 LsBqlvFnIZzlSLebfE5y9vJrksqgHuta7c/2MQ4slR4aAFKqlVnhZTElg+TOYr68lPsT
 ecVYNS7ChXH4Z27G0GV6ARFhF59Y5qeh/Pr8+a4vi8RmEAGCZd1SFegwNeTtRxoY1kcX
 s8f3P5184z4sso64JzdqdvwxKeGd08sRgHSGXGLB+cPqtwzUiqP8oLFgVGm9fTJgOquO
 n/UA==
X-Gm-Message-State: AOJu0YxLYAjcQHgU/7+9JDW41dxuRzxUVQ2L5uojG8atMJZxgBV4xlxd
 60fFpy/4lDMUAFlzSKHXnmy/UowdIWU=
X-Google-Smtp-Source: AGHT+IHhmXUmVAKCnBJMFCNSthP9hItLBCa5rbUFu/Ty76PT4fDccBkiXGFUewulNCd1bdA9Amc0OA==
X-Received: by 2002:a2e:854a:0:b0:2b9:4891:a9ad with SMTP id
 u10-20020a2e854a000000b002b94891a9admr360937ljj.11.1695075186286; 
 Mon, 18 Sep 2023 15:13:06 -0700 (PDT)
Received: from smtpclient.apple (178-55-83-36.bb.dnainternet.fi.
 [178.55.83.36]) by smtp.gmail.com with ESMTPSA id
 h26-20020a2eb0fa000000b002ba045496d0sm2307878ljl.125.2023.09.18.15.13.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Sep 2023 15:13:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
Date: Tue, 19 Sep 2023 01:13:04 +0300
Message-Id: <115D8B11-D45F-4997-A048-8E3251E86625@gmail.com>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
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

PiBPbiAxOCBTZXAsIDIwMjMsIGF0IDEwOjUwIHBtLCBkYXZlIHNlZGRvbiB2aWEgQ2FrZSA8Y2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IFRoZSBjYWtlIHRlc3RzIHNvIGZh
ciBoYWQgcnR0IDFtcyBhbmQgcnR0IDNtcywgd2hpY2ggbWlnaHQgYmUgdG9vIGxvdy4gICggSWYg
aXQgaXMgdG9vIGxvdywgdGhlbiBtYXliZSBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHJlbW92ZSAi
cnR0IGxhbiA9IHJ0dCAxbXMiIG9wdGlvbiwgYXMgaXQncyBhIG1pc2xlYWRpbmcgY29uZmlndXJh
dGlvbiBvcHRpb24/ICkKCklmIGFsbCB5b3VyIHRyYWZmaWMgaXMgb3ZlciB0aGUgTEFOLCBhbmQg
eW91IGhhdmUgYSBtYWNoaW5lIGFuZCBhcHBsaWNhdGlvbiB0dW5lZCBmb3IgdGhlIGV4dHJhLWxv
dyBsYXRlbmNpZXMgdGhhdCBhIExBTiBjYW4gb2ZmZXIsIHRoZW4gc2V0dGluZyBMQU4tZ3JhZGUg
dGFyZ2V0cyBmb3IgQ2FrZSBtaWdodCBtYWtlIHNlbnNlLiAgQnV0IG1vc3QgcGVvcGxlJ3MgdHJh
ZmZpYyBpcyBhIG1peHR1cmUsIHdpdGggdGhlIHBlcmZvcm1hbmNlIG9mIEludGVybmV0IHRyYWZm
aWMgYmVpbmcgbW9yZSBpbXBvcnRhbnQsIGFuZCB0aGF0IGlzIGJldHRlciBzZXJ2ZWQgYnkgdGhl
ICpkZWZhdWx0KiBzZXR0aW5ncy4KCllvdSByYW4gZnFfY29kZWwgYXQgaXRzIGRlZmF1bHQgc2V0
dGluZ3MuICBUaGVzZSBhcmUgZXF1aXZhbGVudCB0byBDYWtlJ3MgZGVmYXVsdCBzZXR0aW5ncywg
c28gZmFyIGFzIHRoZSBBUU0gYWN0aXZpdHkgaXMgY29uY2VybmVkLiAgSSdtIGp1c3QgYXNraW5n
IGZvciBhIGxpa2UtdG8tbGlrZSBjb21wYXJpc29uLiAgWW91IGNvdWxkIGJlIHBsZWFzYW50bHkg
c3VycHJpc2VkLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
