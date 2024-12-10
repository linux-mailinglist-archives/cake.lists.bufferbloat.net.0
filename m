Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 963A29EAB7C
	for <lists+cake@lfdr.de>; Tue, 10 Dec 2024 10:11:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 83E593CB43;
	Tue, 10 Dec 2024 04:11:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733821863;
	bh=FGpYAWyTcFWjb+qApLnSeU7+z0y0me1cE5os4XOhfTc=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=RcHJ935fPXBi0cQ1ZuQRz/LK7nmwEVDujN49dcx02g/kZ2LqO9Yl2xAj+cizGaQyq
	 kMWocCQ+aq5Wuw34O5zhMXDtUGPpe9jh7MEkwOiUoUTcoJ1m+07ggaFCXrclyklWW7
	 6AKgyvs0vtS3/r5/Eii4qXnc5fWDsULgERp9++E70D0yxpMk9IBvThS33vXdVQCMy4
	 Va7qNTaBADzWy8TUUgTnOAkU9knifLG/EKdsDuLoyX3nlXy9+qiml+FLzKq9DOGIdf
	 NKdpducH3l+UWhHvQPEOuknIBctQbySJeYpGiO2qBscn+lMbpvsMZ/ZBV/ueaiMaX0
	 m0/NAn/CGF6hA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 805563CB38
 for <cake@lists.bufferbloat.net>; Tue, 10 Dec 2024 04:11:02 -0500 (EST)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-30033e07ef3so39517031fa.0
 for <cake@lists.bufferbloat.net>; Tue, 10 Dec 2024 01:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733821861; x=1734426661; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5r0qQ2ezkJ7/oGwgp8X3sR05EJzkEKlPE/XPTMcBSgI=;
 b=OXL11cGiJzdzwtRFn3CqqCsvGnYX5yyhe6DFgKRuzIwdl77lVvlKjKey8xB2vOKwal
 VrB91fcZi5n5yrDwh0JlI8VdPJeQIutfLHfP9DVVdARUszyhJC4x7R8qHzUysm5/675F
 2hewbGyqJJY824xGTUSzH97AeuF1fxx/7Z9RLcZs/rO1AaeUrLRM5mvqnLILBpPtRW/N
 HPqrxNiaJDvAYGNnSlSHJpWjgbu/+Xb8EiUIfq25bEwl6pyxY/EOsKOMG4iMFcAJI8z9
 ew6J6jjT6A2VrVMTjGN1TQZb6rZPsMcDHwx4AwFbZ/+91E4tXww+pYoPPN86gIHcjfFZ
 LxrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733821861; x=1734426661;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5r0qQ2ezkJ7/oGwgp8X3sR05EJzkEKlPE/XPTMcBSgI=;
 b=snm49PHEWBUOfLUhiIyo4uYBwCg3WgmQF1jIHVn6QBhSqFYt5qi6Kl1rdrEKcbKpwP
 LL11h44WM+Oa5joebDHjTt0rs2PiScab+RrkT/oH6I6ofuZBvXmrSp/cOLdHgQmWGeUw
 WglRflUv/OT5WwIe+9r/XcDi2k3snZqTA9/E5iTTuXWFk0XgzRvkcvnKcwqqsQ9x9s4U
 9iGtuVoN45NrBm31tjWncwzL1BFiyID/1EiSCUZcsNKUsn6d5f9rATB0dpW0zwTgHDDy
 bf+ScGOCT6SeVukmuKhU1AeZuWcnfKz3/8xI/u6f279/1+ohOSNaY8lPvMguj0lutw3J
 POvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWikgh6XQ/mxLpbdo88P4lIT+vQvUUat/xpwhGf16GyLGYzVD2qxpB/8y5wHK1f5YKoD84u@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz6JcqNPEo27aZ3TejZTe+N8n4Wgu1uOx0LcNtlaWSQhFYM63vd
 vrrM/3eTTmzG0X3GtycO6LrCMh4LJ6nRpsdSaxJQRDPGnCRgUz5B
X-Gm-Gg: ASbGnct+omvgI4oTJv/aJPCXL1Sv4yra3vIJZdC3P/H749Gx6iXdRi4ZStpISEVi3Cg
 rAm6jltm+7D45EHysZ6dZCGnqiVvT9Isjy1Jp2H1apNN3ai8U+SXt5nGvNzpMQJFJ2SmS4RCFUc
 H5mQAc27QU5iLwTSLdGzsMB0MaDGKKS35ZYQ3KYhgP9hWn4aVOft/VZft/Hgc+ExmyDgPP6+Fgo
 bGqOQGwQIZohYAebZP24WQrtemw6gq+QfmPnCxqNZ/OprX3T6ufF8m/Zq3uWY8LOQSnUxsivR64
 6u5KSMDJp/mxcRpp5//vwShjFjP/dHdV
X-Google-Smtp-Source: AGHT+IHKuLaZ67ed/t7U1qFVOtaSXGbhD9n6clTTeNbse3gM19AKEUQxc+NyN16SXnoXpPV07iTXyQ==
X-Received: by 2002:a05:651c:1141:b0:302:1cdd:73b9 with SMTP id
 38308e7fff4ca-30232853420mr7201611fa.11.1733821860753; 
 Tue, 10 Dec 2024 01:11:00 -0800 (PST)
Received: from smtpclient.apple (188-67-132-152.bb.dnainternet.fi.
 [188.67.132.152]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-300431a561csm9788831fa.116.2024.12.10.01.10.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2024 01:10:59 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <87a5d46i9c.fsf@toke.dk>
Date: Tue, 10 Dec 2024 11:10:57 +0200
Message-Id: <C2055FB9-8EA4-486D-9654-84ED422A4A0C@gmail.com>
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
 <20241209155157.6a817bc5@kernel.org>
 <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
 <87a5d46i9c.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMCBEZWMsIDIwMjQsIGF0IDEwOjQyIGFtLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
dmlhIENha2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPiAKPj4+IE9uIE1v
biwgMDkgRGVjIDIwMjQgMTM6MDI6MTggKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdy
b3RlOgo+Pj4+IEFkZCB0aHJlZSBxZGlzYy1zcGVjaWZpYyBkcm9wIHJlYXNvbnMgZm9yIHNjaF9j
YWtlOgo+Pj4+IAo+Pj4+IDEpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX0NPTkdFU1RFRAo+Pj4+ICAg
IFdoZW5ldmVyIGEgcGFja2V0IGlzIGRyb3BwZWQgYnkgdGhlIENBS0UgQVFNIGFsZ29yaXRobSBi
ZWNhdXNlCj4+Pj4gICAgY29uZ2VzdGlvbiBpcyBkZXRlY3RlZC4KPj4+PiAKPj4+PiAyKSBTS0Jf
RFJPUF9SRUFTT05fQ0FLRV9GTE9PRAo+Pj4+ICAgIFdoZW5ldmVyIGEgcGFja2V0IGlzIGRyb3Bw
ZWQgYnkgdGhlIGZsb29kIHByb3RlY3Rpb24gcGFydCBvZiB0aGUKPj4+PiAgICBDQUtFIEFRTSBh
bGdvcml0aG0gKEJMVUUpLgo+Pj4+IAo+Pj4+IDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX09WRVJM
SU1JVAo+Pj4+ICAgIFdoZW5ldmVyIHRoZSB0b3RhbCBxdWV1ZSBsaW1pdCBmb3IgYSBDQUtFIGlu
c3RhbmNlIGlzIGV4Y2VlZGVkIGFuZCBhCj4+Pj4gICAgcGFja2V0IGlzIGRyb3BwZWQgdG8gbWFr
ZSByb29tLgo+Pj4gCj4+PiBFcmljJ3MgcGF0Y2ggd2FzIGFkZGluZyBmYWlybHkgRlEtc3BlY2lm
aWMgcmVhc29ucywgb3RoZXIgdGhhbiBmbG9vZAo+Pj4gdGhpcyBzZWVtcyBsaWtlIGdlbmVyaWMg
QVFNIHN0dWZmLCBubz8gRnJvbSBhIHZlcnkgcXVpY2sgbG9vayB0aGUKPj4+IGNvbmdlc3Rpb24g
bG9va3MgbGlrZSBmYWlybHkgc3RhbmRhcmQgQVFNLCBvdmVybGltaXQgaXMgYWxzbyB0eXBpY2Fs
Cj4+PiBmb3IgcWRpY3M/Cj4+IAo+PiBXaGlsZSBJIGluaXRpYWxseSBhZ3JlZWQgd2l0aCBtYWtp
bmcgdGhpcyBnZW5lcmljLCBwcmVzZXJ2aW5nIHRoZSBxZGlzYyBmcm9tCj4+IHdoZXJlIHRoZSBk
cm9wIGNhbWUgbGV0cyB5b3Ugc2FmZWx5IGluc3BlY3QgdGhlIGNiIGJsb2NrICh0aW1lc3RhbXAs
IGV0YyksCj4+IGZvcm1hdCBvZiB3aGljaCB2YXJpZXMgYnkgcWRpc2MuIFlvdSBhbHNvIGdldCBp
bnNpZ2h0IGFzIHRvIHdoaWNoCj4+IHFkaXNjIHdhcyBkcm9wcGluZy4KPj4gCj4+IERvd25zaWRl
IGlzIHdlJ2xsIGVuZCB1cCB3aXRoIFNLQl9EUk9QX1JFQVNPTl9YWFhfT1ZFUkxJTUlUIGZvcgo+
PiBlYWNoIG9mIHRoZSBxZGlzY3MuIEV0Yy4KPiAKPiBZZWFoLCBJIGFncmVlIHRoYXQgYSBnZW5l
cmljICJkcm9wcGVkIGJ5IEFRTSIgcmVhc29uIHdpbGwgYmUgdG9vIGdlbmVyaWMKPiB3aXRob3V0
IGtub3dpbmcgd2hpY2ggcWRpc2MgZHJvcHBlZCBpdC4gSSBndWVzcyBhbnkgY2FsbHMgZGlyZWN0
bHkgdG8KPiBrZnJlZV9za2JfcmVhc29uKCkgZnJvbSB0aGUgcWRpc2Mgd2lsbCBwcm92aWRlIHRo
ZSBjYWxsaW5nIGZ1bmN0aW9uLCBidXQKPiBmb3IgcWRpc2NfZHJvcF9yZWFzb24oKSB0aGUgZHJv
cCB3aWxsIGJlIGRlZmVycmVkIHRvIF9fZGV2X3F1ZXVlX3htaXQoKSwKPiBzbyBubyB3YXkgb2Yg
a25vd2luZyB3aGVyZSB0aGUgZHJvcCBjYW1lIGZyb20sIEFGQUlDVD8KCldvdWxkIGl0IG1ha2Ug
c2Vuc2UgdG8gYmUgYWJsZSB0byBleHRyYWN0IGEgImdlbmVyaWMiIGNvZGUgYnkgYXBwbHlpbmcg
YSBiaXRtYXNrPyAgTGVhdmUgY29kZSBzcGFjZSBmb3IgInFkaXNjIHNwZWNpZmljIiByZWFzb25z
IHdpdGhpbiB0aGF0IG1hc2suICBUaGVuIHBlb3BsZSB3aG8gZG9uJ3QgY2FyZSBhYm91dCBxZGlz
YyBpbnRlcm5hbHMgY2FuIHN0aWxsIHJlbGlhYmx5IGludGVycHJldCB0aGUgY29kZXMsIGV2ZW4g
Zm9yIGZ1dHVyZSBxZGlzY3MuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
