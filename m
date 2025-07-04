Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB19AF86CA
	for <lists+cake@lfdr.de>; Fri,  4 Jul 2025 06:31:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A4DA3CB43;
	Fri,  4 Jul 2025 00:31:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751603482;
	bh=DITie2GGYRbIjto46+UjjwEScaeRS0yccDciDw5CfHI=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ku/BukH6lCQ/7JSW92WxPjWB1dRkOdGy5X4uQBj/FsOweyjQpqblkplcLB6oyYmID
	 D+dawZlN8XcLxHVOdyjq4hyqNT+TU0+9v1PfmvqxUcEJyy0MhGSX593zbUEb/QSYFi
	 ZYYa3hvWvo1PaquUrhcztgECOg+axO/Xe95saAQrEsThYyEr5vNLrlYX2RFSb2L5xd
	 noNG3vqYsxyOpJJoZvAtRlaXRkP6Y/1sZupkaR6ibKD6jPhMvVuKJOliwyzlwD5/+x
	 pQBBSpWN2behzFpsGLWz9N9RibrlGSceekSVXXf8cgoVbVNj/cDEtYFipzzHPPuFis
	 WEFuBUVIOOrRA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B23A83B2A4
 for <cake@lists.bufferbloat.net>; Fri,  4 Jul 2025 00:31:20 -0400 (EDT)
Received: by mail-pg1-x535.google.com with SMTP id
 41be03b00d2f7-b34a6d0c9a3so585477a12.3
 for <cake@lists.bufferbloat.net>; Thu, 03 Jul 2025 21:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751603480; x=1752208280; darn=lists.bufferbloat.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fxALKIjMO7YvRd1pEEIdH4CeFOM7Eh9lzExephTx580=;
 b=SMoidZ2CC7eIuM+dlrzCAM689q/CAkUaP8En5ldaizHG/Ghv2xewFw2Xm7Ikww2ghQ
 vg7bN7h80TMpd8E2xCbc43IHExsQAlsNLHIQdg4Qy7lmS9v8PQmS/sAXmKUJVs3VRxhi
 9reF14UfFd5CnptgTBFDvVNYe7bAbjFq8Yf32SdZRSDCTjw7OnBfM+z+AtqZ/X6Ow4Bu
 GUp+S5K5OX+f85ILMKpeWkOErffa0jiVisggyZuDyoBfQRrbrHYddc/tCa5T6h61Zf4d
 G5d5pHML9CkCQ38MXAfQRUZ1eynLKCutfY3GlAy27LL1ahxVYL3DC+les88DLjfY/DtT
 qWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751603480; x=1752208280;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fxALKIjMO7YvRd1pEEIdH4CeFOM7Eh9lzExephTx580=;
 b=Yio2reXOL3aZg9lxN/B+hhVzbwHtjPLvc4Gnh8R/gWCYamEfYLpK+poE1/TpnxHe0q
 NTl3bCAo/CyvEFdxWhSoxCBC+zAmZifVS2fZr5MwrSAlE5LkWGXm8jeZfifVFRjILSPc
 /1xtXQPxXgdeu9/wFUuF99DrmV/pkyA3fy+ky9j8dWCPtL9h/6/rAW7PO97ZQAyGyQAt
 z+nYvOYsOUZQWZ9mWexmkLniqRM61Z7l+xUgUSjH1q7sEo8AhqT+jorT52P7LPdG6c0G
 to41oQRlfvMaCp6zWTZDSBqCR/ac3bweiXb8kW3cyYa82EJsDIg9wpizFQPf2IwCQ4bm
 PfFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNDCqZfLenz9Lw4oI2XmiPQJWrVC9tylE5cGGLMs7zBnwozpACnv+jw8rtawUgAkgQuS5t@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Ywio4QJ860bZuXOuY5/X0OWt8jsKLuoNg/KcZ/ZL+pFBkepMgIz
 SoRdV6O9LU148Ac4rMJIKhVoLlmmHdrU+5WvmJWo0G06VXdaoKIEqBQK
X-Gm-Gg: ASbGncsh1NGlVQM0aLeM9t5eJmVfepJ28H5XPVfcn2I/uiItgH63Is3sdFF+EikH4I6
 vCcdUGqBGn3/2/U4kGdyLCMUhDnROX4yKuPLkJ2be5m1l4lOkEZ2Ew4n3c2neOoBEgGeKzrHGiK
 iptu8+0jEPRkplH3ZLKhURCGLyWfWtCZCI8MvCyhNqNdiJICZzBgnVTXQJQUAj3eUkgbdoMbb9p
 5MBCDX0Q8QcEH0/pXaRb+LGM8/iVDr27myKF+QfGEI8sHjuuzX10LDWyxUe0Oa7j/oWPAzlDp2Z
 iJmWFZFxYovtSRDzpPRz09LBUAHOp+w43uXRM/qTH/WUG3lO8/Jt/q8wzv0zxMRpW2yynocEGVq
 g9S8=
X-Google-Smtp-Source: AGHT+IHkvlcewWbWz3RLsWy6U2O5nxq2HueWe9yVOwfG6KNgonIBzAzpwgDA+2exlfrQ3C/FYpx7rg==
X-Received: by 2002:a05:6a21:a8e:b0:220:a3de:a083 with SMTP id
 adf61e73a8af0-225b85f3eafmr2173223637.10.1751603479663; 
 Thu, 03 Jul 2025 21:31:19 -0700 (PDT)
Received: from localhost ([2601:647:6881:9060:1aeb:7d0c:33d1:51f4])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74ce35cc72dsm1023375b3a.42.2025.07.03.21.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jul 2025 21:31:19 -0700 (PDT)
Date: Thu, 3 Jul 2025 21:31:18 -0700
To: Fengyuan Gong <gfengyuan@google.com>
Message-ID: <aGdZFhGu40UD6UDU@pop-os.localdomain>
References: <20250702160741.1204919-1-gfengyuan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250702160741.1204919-1-gfengyuan@google.com>
Subject: Re: [Cake] [PATCH net-next] net: account for encap headers in qdisc
	pkt len
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
From: Cong Wang via Cake <cake@lists.bufferbloat.net>
Reply-To: Cong Wang <xiyou.wangcong@gmail.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, cake@lists.bufferbloat.net,
 Alexander Lobakin <aleksander.lobakin@intel.com>, edumazet@google.com,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBKdWwgMDIsIDIwMjUgYXQgMDQ6MDc6NDFQTSArMDAwMCwgRmVuZ3l1YW4gR29uZyB3
cm90ZToKPiBkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvZGV2LmMgYi9uZXQvY29yZS9kZXYuYwo+IGlu
ZGV4IDExZGExZTI3MmVjMjAuLmRmZWM1NDFmNjhlM2EgMTAwNjQ0Cj4gLS0tIGEvbmV0L2NvcmUv
ZGV2LmMKPiArKysgYi9uZXQvY29yZS9kZXYuYwo+IEBAIC0zOTQ0LDcgKzM5NDQsMTAgQEAgc3Rh
dGljIHZvaWQgcWRpc2NfcGt0X2xlbl9pbml0KHN0cnVjdCBza19idWZmICpza2IpCj4gIAkJdW5z
aWduZWQgaW50IGhkcl9sZW47Cj4gIAo+ICAJCS8qIG1hYyBsYXllciArIG5ldHdvcmsgbGF5ZXIg
Ki8KPiAtCQloZHJfbGVuID0gc2tiX3RyYW5zcG9ydF9vZmZzZXQoc2tiKTsKPiArCQlpZiAoIXNr
Yi0+ZW5jYXBzdWxhdGlvbikKPiArCQkJaGRyX2xlbiA9IHNrYl90cmFuc3BvcnRfb2Zmc2V0KHNr
Yik7Cj4gKwkJZWxzZQo+ICsJCQloZHJfbGVuID0gc2tiX2lubmVyX3RyYW5zcG9ydF9vZmZzZXQo
c2tiKTsKClRoaXMgcGF0dGVybiBzZWVtcyByZXBlYXRlZCBpbiBhIGZldyBwbGFjZXMsIG90aGVy
IHRoYW4gdGhlIHR3byB5b3UgYXJlCnBhdGNoaW5nLCBJIHNhdyBhbm90aGVyIG9uZToKCjI0NjUg
c3RhdGljIG5ldGRldl9mZWF0dXJlc190IGhuczNfZmVhdHVyZXNfY2hlY2soc3RydWN0IHNrX2J1
ZmYgKnNrYiwKMjQ2NiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAoyNDY3ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG5ldGRldl9mZWF0dXJlc190IGZlYXR1cmVzKQoyNDY4IHsKMjQ2
OSAjZGVmaW5lIEhOUzNfTUFYX0hEUl9MRU4gICAgICAgIDQ4MFUKMjQ3MCAjZGVmaW5lIEhOUzNf
TUFYX0w0X0hEUl9MRU4gICAgIDYwVQoyNDcxIAoyNDcyICAgICAgICAgc2l6ZV90IGxlbjsKMjQ3
MyAKMjQ3NCAgICAgICAgIGlmIChza2ItPmlwX3N1bW1lZCAhPSBDSEVDS1NVTV9QQVJUSUFMKQoy
NDc1ICAgICAgICAgICAgICAgICByZXR1cm4gZmVhdHVyZXM7CjI0NzYgCjI0NzcgICAgICAgICBp
ZiAoc2tiLT5lbmNhcHN1bGF0aW9uKQoyNDc4ICAgICAgICAgICAgICAgICBsZW4gPSBza2JfaW5u
ZXJfdHJhbnNwb3J0X29mZnNldChza2IpOwoyNDc5ICAgICAgICAgZWxzZQoyNDgwICAgICAgICAg
ICAgICAgICBsZW4gPSBza2JfdHJhbnNwb3J0X29mZnNldChza2IpOwoKCk1heWJlIHdvcnRoIGEg
aGVscGVyIG5vdz8KClRoYW5rcyEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
