Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE6E9EAADF
	for <lists+cake@lfdr.de>; Tue, 10 Dec 2024 09:43:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7AD1C3CB43;
	Tue, 10 Dec 2024 03:43:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733820181;
	bh=9sT7JuFRizTx9F1YFXEDjab1ShssSwIVckbIhqys1Lc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Gk8QNLjoYTXV3nSBQiTu7527iZDGZLfS0WY+U9fjjeYzQbWy5U28ASrae/+qCpbAT
	 bsVevGAIka4xG4g90Mtkz/3z1kmV2elrkb7rUi74EqWBDyC2WPwjXWWg0kohacRqOe
	 H00LVQfBALO5EvEL9TmBX5JyhsR0Dj8OLfmqYlzdozb+BwHV+ja307vE71oleLiajS
	 p0VWgEJZDWbD83mm0b9cXnlzeS3WG71/Vv3H5ggvy3fRgF7NuWQgRDbu050EVY+D4f
	 DDtKnPb5rZMgKGExyWac0yhJDOinmistM6n5xDlJ/97Pb6G8D2cVEXlcFGryEZPgmz
	 ndQwpS3+WMixQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6F6053CB38
 for <cake@lists.bufferbloat.net>; Tue, 10 Dec 2024 03:43:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733820180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z+xIxKyw5m2/TFLUomGPS8LR6+5NV/a+9OdgvdBU6Ic=;
 b=fwZM3LksOdXvLNuBbESVYie8o7xBiDWvm7rPVgfLcxdD7c8ZhBwfcGndTqyhk9zXjMdhQl
 uh41fxETSy+SYmtgkyRBl0sWo5YvBqOI4qS5sp9BaLBz0QB7p7piV2k2LJnXPCmWODhrm8
 aGJlR4Del7e+SpI6ozFVYksVbqbBFu0=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-93-ne_h4Y6_M3C5_azbYV_8vQ-1; Tue, 10 Dec 2024 03:42:58 -0500
X-MC-Unique: ne_h4Y6_M3C5_azbYV_8vQ-1
X-Mimecast-MFC-AGG-ID: ne_h4Y6_M3C5_azbYV_8vQ
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-aa68203d288so168886466b.1
 for <cake@lists.bufferbloat.net>; Tue, 10 Dec 2024 00:42:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733820177; x=1734424977;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=m8pXFWAEjkLhM10kO3M5wqhjCdlxvFoykCNB+vBUV4Q=;
 b=P4Pr30TM4ep9Beo6o1/6kPAPkFS/VYJShE+/QDzqtiLOrvPcmO0/pxnqxAJdEIJx6Y
 VVvhYQ04H8MZp9TcddNG8Ciq40mEMWIxAr7SgBGAbUShEJzX4/8Z3yb7Dv/Zzs9TddJi
 d6fXPNBj3f75xH0GZAYh2J6Uae4bpGdbikJAJ8TA9o154ZfvFrTe87riSetn8F9yhGdV
 m+k+dvtZXxv357eONzox0sKx4WTT+dLAJvgAt5mONFe9c+lGGHKyZOsHF/DBrF2TEOhx
 b/LZOOfm/K7CXGL2r6/2iGhyiavLa67fpXUwO6NwaD6Xu2vId56LlZt2LryT0eYjZuX9
 BZYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV9/q/E/IkjEdOtGn7ZdQkataZtmJvdinLPawq36A2k57KNLeYxVZpn5dpOOi3u16FzIIS1@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwmmG5/Zf3C/L3tD5tlkmlFEC+dh2VGre4r4P0EIzlU2MejL/Xu
 7L1hTQbH/0jUkqeZEykMzBwKTTOqa8x7e0r20HpMk9HwcsZgqfdzWlfr0G//mmEQ3B66038RER6
 bw5nRe5gbzf6xy0RRHW7ucPB5/IQIRr4Grfa/Bo1gAffmXXKMy+W8vASUXkk=
X-Gm-Gg: ASbGnct7+xVPQa8+i0ApXktUvuYYD7R3pc5vacs1ST+7FeHhFeFpzTJ7TKPQRTgD8wq
 Zut1bZc0NRmBICwnmy6cOqP01jtnHDwCiclpnnRnXVI787DF64AaJ5M+uCNvCPVTdY+lzsOL0nS
 OQkVICZjdy1YcIu6RZH8Eg4xXvqXwQRqyOHvfSy/cYJxkz6C2N4Fj8aP4i6t4dltSH+9IeQXvSi
 J4nmj4xlHW12qrorG2duPIaL1itBVUCcCyBgfcpiyQgYoUAM7c=
X-Received: by 2002:a17:906:cd1:b0:aa6:74a9:ce71 with SMTP id
 a640c23a62f3a-aa69cd708a1mr286591566b.27.1733820177613; 
 Tue, 10 Dec 2024 00:42:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzII+NR1Pxx1i/jdu38fmJ+bPWyh8XhuTrskK85VCnAmf8uLJXoopd9TZcS8ONnFb1+kVLvQ==
X-Received: by 2002:a17:906:cd1:b0:aa6:74a9:ce71 with SMTP id
 a640c23a62f3a-aa69cd708a1mr286589766b.27.1733820177280; 
 Tue, 10 Dec 2024 00:42:57 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa686bb8cb2sm280815266b.153.2024.12.10.00.42.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2024 00:42:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A516E16BDA11; Tue, 10 Dec 2024 09:42:55 +0100 (CET)
To: Dave Taht <dave.taht@gmail.com>, Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
 <20241209155157.6a817bc5@kernel.org>
 <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 10 Dec 2024 09:42:55 +0100
Message-ID: <87a5d46i9c.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: y4dDnsaj6IpOp4NrSAo5ajZZScBiIJw44JOI3oezdno_1733820178
X-Mimecast-Originator: redhat.com
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIE1vbiwgRGVjIDks
IDIwMjQgYXQgMzo1MuKAr1BNIEpha3ViIEtpY2luc2tpIHZpYSBDYWtlCj4gPGNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPj4KPj4gT24gTW9uLCAwOSBEZWMgMjAyNCAxMzowMjox
OCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+ID4gQWRkIHRocmVlIHFk
aXNjLXNwZWNpZmljIGRyb3AgcmVhc29ucyBmb3Igc2NoX2Nha2U6Cj4+ID4KPj4gPiAgMSkgU0tC
X0RST1BfUkVBU09OX0NBS0VfQ09OR0VTVEVECj4+ID4gICAgIFdoZW5ldmVyIGEgcGFja2V0IGlz
IGRyb3BwZWQgYnkgdGhlIENBS0UgQVFNIGFsZ29yaXRobSBiZWNhdXNlCj4+ID4gICAgIGNvbmdl
c3Rpb24gaXMgZGV0ZWN0ZWQuCj4+ID4KPj4gPiAgMikgU0tCX0RST1BfUkVBU09OX0NBS0VfRkxP
T0QKPj4gPiAgICAgV2hlbmV2ZXIgYSBwYWNrZXQgaXMgZHJvcHBlZCBieSB0aGUgZmxvb2QgcHJv
dGVjdGlvbiBwYXJ0IG9mIHRoZQo+PiA+ICAgICBDQUtFIEFRTSBhbGdvcml0aG0gKEJMVUUpLgo+
PiA+Cj4+ID4gIDMpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX09WRVJMSU1JVAo+PiA+ICAgICBXaGVu
ZXZlciB0aGUgdG90YWwgcXVldWUgbGltaXQgZm9yIGEgQ0FLRSBpbnN0YW5jZSBpcyBleGNlZWRl
ZCBhbmQgYQo+PiA+ICAgICBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCj4+Cj4+IEVy
aWMncyBwYXRjaCB3YXMgYWRkaW5nIGZhaXJseSBGUS1zcGVjaWZpYyByZWFzb25zLCBvdGhlciB0
aGFuIGZsb29kCj4+IHRoaXMgc2VlbXMgbGlrZSBnZW5lcmljIEFRTSBzdHVmZiwgbm8/IEZyb20g
YSB2ZXJ5IHF1aWNrIGxvb2sgdGhlCj4+IGNvbmdlc3Rpb24gbG9va3MgbGlrZSBmYWlybHkgc3Rh
bmRhcmQgQVFNLCBvdmVybGltaXQgaXMgYWxzbyB0eXBpY2FsCj4+IGZvciBxZGljcz8KPgo+IFdo
aWxlIEkgaW5pdGlhbGx5IGFncmVlZCB3aXRoIG1ha2luZyB0aGlzIGdlbmVyaWMsIHByZXNlcnZp
bmcgdGhlIHFkaXNjIGZyb20KPiB3aGVyZSB0aGUgZHJvcCBjYW1lIGxldHMgeW91IHNhZmVseSBp
bnNwZWN0IHRoZSBjYiBibG9jayAodGltZXN0YW1wLCBldGMpLAo+IGZvcm1hdCBvZiB3aGljaCB2
YXJpZXMgYnkgcWRpc2MuIFlvdSBhbHNvIGdldCBpbnNpZ2h0IGFzIHRvIHdoaWNoCj4gcWRpc2Mg
d2FzIGRyb3BwaW5nLgo+Cj4gRG93bnNpZGUgaXMgd2UnbGwgZW5kIHVwIHdpdGggU0tCX0RST1Bf
UkVBU09OX1hYWF9PVkVSTElNSVQgZm9yCj4gZWFjaCBvZiB0aGUgcWRpc2NzLiBFdGMuCgpZZWFo
LCBJIGFncmVlIHRoYXQgYSBnZW5lcmljICJkcm9wcGVkIGJ5IEFRTSIgcmVhc29uIHdpbGwgYmUg
dG9vIGdlbmVyaWMKd2l0aG91dCBrbm93aW5nIHdoaWNoIHFkaXNjIGRyb3BwZWQgaXQuIEkgZ3Vl
c3MgYW55IGNhbGxzIGRpcmVjdGx5IHRvCmtmcmVlX3NrYl9yZWFzb24oKSBmcm9tIHRoZSBxZGlz
YyB3aWxsIHByb3ZpZGUgdGhlIGNhbGxpbmcgZnVuY3Rpb24sIGJ1dApmb3IgcWRpc2NfZHJvcF9y
ZWFzb24oKSB0aGUgZHJvcCB3aWxsIGJlIGRlZmVycmVkIHRvIF9fZGV2X3F1ZXVlX3htaXQoKSwK
c28gbm8gd2F5IG9mIGtub3dpbmcgd2hlcmUgdGhlIGRyb3AgY2FtZSBmcm9tLCBBRkFJQ1Q/Cgot
VG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
